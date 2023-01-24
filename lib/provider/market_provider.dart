import 'package:flutter/cupertino.dart';
import 'package:my_bitcoin/models/api_model.dart';
import 'package:my_bitcoin/models/bitcoin_class.dart';

class MarketProvider with ChangeNotifier {
   List<Bitcoin>finalCoins=[];
   bool isLoading=true;
  void marketStatus() async {
    
    List<dynamic> x = await API.getMarket();
    List<Bitcoin>allCoins=[];
    for(var coin in x){
      Bitcoin temp=Bitcoin.fromJSON(coin);
      allCoins.add(temp);
    }
    finalCoins=allCoins;
    isLoading=false;
    notifyListeners();
  }
}
