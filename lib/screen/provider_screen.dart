import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:response_api/core/crepto_provider.dart';
import 'package:response_api/modal/response_modal.dart';
import 'package:response_api/screen/detail_screen.dart';

class ProviderScreen extends StatefulWidget {
  const ProviderScreen({super.key});

  @override
  State<ProviderScreen> createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future getData() async {
    final provider = Provider.of<CreptoProvider>(context, listen: false);
    provider.fetData(await getFetchedData());
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CreptoProvider>(context, listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text(
          'Crepto news',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
          separatorBuilder: (context, value) => Divider(),
          itemCount: provider.listData.length,
          itemBuilder: (context, index) {
            ResponseCode value = provider.listData[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                responseCode: value,
                              )));
                },
                title: Text(value.name ?? ''),
                subtitle: Row(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        width: 12,
                        height: 14,
                        decoration: BoxDecoration(color: Colors.grey.shade300),
                        child: Text(value.marketCapRank.toString())),
                  const  SizedBox(
                      width: 2,
                    ),
                    Text(value.symbol.toString()),
                    const  SizedBox(
                      width: 2,
                    ),
                    Text(
                      '-' + value.atl!.round().toString(),
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                leading: Image.network(
                  value.image.toString(),
                  width: 25,
                  fit: BoxFit.cover,
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('\n' + value.currentPrice.toString()),
                    Text('मार्केट कैप' + value.ath.toString() + 'Lcr'),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Future<List<ResponseCode>> getFetchedData() async {
    String url =
        "https://api.coingecko.com/api/v3/coins/markets?vs_currency=inr&order=market_cap_desc&per_page=99&page=1&sparkline=false";

    Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      List<ResponseCode> responseCodes =
          jsonList.map((item) => ResponseCode.fromJson(item)).toList();
      return responseCodes;
    } else {
      return [];
    }
  }
}
