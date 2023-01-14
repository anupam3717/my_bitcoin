import 'package:flutter/cupertino.dart';
import 'package:my_bitcoin/models/Api_model.dart';
import 'package:my_bitcoin/models/BitcoinClass.dart';

class MarketProvider with ChangeNotifier {
   List<Bitcoin>finalCoins=[];
   bool isLoading=true;
  void marketStatus() async {
    
    List<dynamic> x = await API.getMarket();
    List<Bitcoin>allCoins=[];
    for(var coin:x){
      Bitcoin temp=Bitcoin.fromJSON(coin);
      allCoins.add(temp);
    }
    finalCoins=allCoins;
    isLoading=false;
    notifyListeners();
  }
}
