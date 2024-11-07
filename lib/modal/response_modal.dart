class ResponseCode {
  String? id;
  String? symbol;
  String? name;
  String? image;
  double? currentPrice;
  double? marketCap;
  int? marketCapRank;
  double? fullyDilutedValuation;
  double? totalVolume;
  double? high24h;
  double? low24h;
  double? priceChange24h;
  double? priceChangePercentage24h;
  double? marketCapChange24h;
  double? marketCapChangePercentage24h;
  double? circulatingSupply;
  double? totalSupply;
  double? maxSupply;
  double? ath;
  double? athChangePercentage;
  String? athDate;
  double? atl;
  double? atlChangePercentage;
  String? atlDate;
  dynamic roi;
  String? lastUpdated;

  ResponseCode({
    this.id,
    this.symbol,
    this.name,
    this.image,
    this.currentPrice,
    this.marketCap,
    this.marketCapRank,
    this.fullyDilutedValuation,
    this.totalVolume,
    this.high24h,
    this.low24h,
    this.priceChange24h,
    this.priceChangePercentage24h,
    this.marketCapChange24h,
    this.marketCapChangePercentage24h,
    this.circulatingSupply,
    this.totalSupply,
    this.maxSupply,
    this.ath,
    this.athChangePercentage,
    this.athDate,
    this.atl,
    this.atlChangePercentage,
    this.atlDate,
    this.roi,
    this.lastUpdated,
  });

  ResponseCode.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbol = json['symbol'];
    name = json['name'];
    image = json['image'];
    currentPrice = json['current_price']?.toDouble();
    marketCap = json['market_cap']?.toDouble();
    marketCapRank = json['market_cap_rank'];
    fullyDilutedValuation = json['fully_diluted_valuation']?.toDouble();
    totalVolume = json['total_volume']?.toDouble();
    high24h = json['high_24h']?.toDouble();
    low24h = json['low_24h']?.toDouble();
    priceChange24h = json['price_change_24h']?.toDouble();
    priceChangePercentage24h = json['price_change_percentage_24h']?.toDouble();
    marketCapChange24h = json['market_cap_change_24h']?.toDouble();
    marketCapChangePercentage24h = json['market_cap_change_percentage_24h']?.toDouble();
    circulatingSupply = json['circulating_supply']?.toDouble();
    totalSupply = json['total_supply']?.toDouble();
    maxSupply = json['max_supply']?.toDouble();
    ath = json['ath']?.toDouble();
    athChangePercentage = json['ath_change_percentage']?.toDouble();
    athDate = json['ath_date'];
    atl = json['atl']?.toDouble();
    atlChangePercentage = json['atl_change_percentage']?.toDouble();
    atlDate = json['atl_date'];
    roi = json['roi'];
    lastUpdated = json['last_updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['symbol'] = symbol;
    data['name'] = name;
    data['image'] = image;
    data['current_price'] = currentPrice;
    data['market_cap'] = marketCap;
    data['market_cap_rank'] = marketCapRank;
    data['fully_diluted_valuation'] = fullyDilutedValuation;
    data['total_volume'] = totalVolume;
    data['high_24h'] = high24h;
    data['low_24h'] = low24h;
    data['price_change_24h'] = priceChange24h;
    data['price_change_percentage_24h'] = priceChangePercentage24h;
    data['market_cap_change_24h'] = marketCapChange24h;
    data['market_cap_change_percentage_24h'] = marketCapChangePercentage24h;
    data['circulating_supply'] = circulatingSupply;
    data['total_supply'] = totalSupply;
    data['max_supply'] = maxSupply;
    data['ath'] = ath;
    data['ath_change_percentage'] = athChangePercentage;
    data['ath_date'] = athDate;
    data['atl'] = atl;
    data['atl_change_percentage'] = atlChangePercentage;
    data['atl_date'] = atlDate;
    data['roi'] = roi;
    data['last_updated'] = lastUpdated;
    return data;
  }
}
