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
        currentPrice: mp["currentPrice"],
        marketCap: mp["marketCap"],
        marketCapRank: mp["marketCapRank"],
        high24: mp["high24"],
        low24: mp["low24"],
        priceChange24: mp["priceChange24"],
        priceChangePercentage24: mp["priceChangePercentage24"],
        circulatingSupply: mp["circulatingSupply"],
        ath: mp["ath"],
        atl: mp["atl"]);
  }
}
