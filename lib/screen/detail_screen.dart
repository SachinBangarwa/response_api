import 'package:flutter/material.dart';
import 'package:response_api/modal/response_modal.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.responseCode});

  final ResponseCode responseCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text('Crepto detail news',style: TextStyle(color: Colors.white)),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.network(responseCode.image.toString(),width: 100,),),
              Center(child: Text(responseCode.name??'',style: TextStyle(color: Colors.black,fontSize: 30))),
              SizedBox(height: 30,),
              Text("low  "+responseCode.low24h.toString()*10),
              SizedBox(height: 10,),
              Text("high  "+responseCode.high24h.toString()*10),
              SizedBox(height: 10,),
              Text("high  "+responseCode.high24h.toString()*10),
              SizedBox(height: 10,),
              Text("ath  "+responseCode.athDate.toString()*10),
              SizedBox(height: 10,),
              Text("athPer  "+responseCode.athChangePercentage.toString()*10),
            ],
          ),
        ),
      ),
    );
  }
}
