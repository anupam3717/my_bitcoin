class Bitcoin {
  String? id;
  String? symbol;
  String? name;
  String? image;
  double? currentPrice;
  double? marketCap;
  int? marketCapRank;
  double? high24;
  double? low24;
  double? priceChange24;
  double? priceChangePercentage24;
  double? circulatingSupply;
  double? ath;
  double? atl;

  Bitcoin(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.image,
      required this.currentPrice,
      required this.marketCap,
      required this.marketCapRank,
      required this.high24,
      required this.low24,
      required this.priceChange24,
      required this.priceChangePercentage24,
      required this.circulatingSupply,
      required this.ath,
      required this.atl});

  factory Bitcoin.fromJSON(Map<String, dynamic> mp) {
    return Bitcoin(
        id: mp["id"],
        symbol: mp["symbol"],
        name: mp["name"],
        image: mp["image"],
        currentPrice: double.parse(mp["currentPrice"].toString()),
        marketCap: double.parse(mp["marketCap"].toString()),
        marketCapRank: mp["marketCapRank"],
        high24: double.parse(mp["high24"].toString()),
        low24: double.parse(mp["low24"].toString()),
        priceChange24: double.parse(mp["priceChange24"].toString()),
        priceChangePercentage24:
            double.parse(mp["priceChangePercentage24"].toString()),
        circulatingSupply: double.parse(mp["circulatingSupply"].toString()),
        ath: double.parse(mp["ath"].toString()),
        atl: double.parse(mp["atl"].toString()));
  }
}
