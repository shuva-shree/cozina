import 'package:cozina/widgets/buyer_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final postProvider =
//     ChangeNotifierProvider<PostProvider>((ref) => PostProvider());

class ChangeValue extends ChangeNotifier {
  var value = 'one';
  var startPrep = false;
  var setVal = false;

  changeDropValue(String val) async {
    this.value = val;
    print(this.value);
    // SharedPreferences pref = await SharedPreferences.getInstance();
    // pref.setString('str', this.value);
    notifyListeners();
    return this.value;
  }

  startPrepFood(){
    startPrep = true;
    notifyListeners();
  }

  setAccount(bool val){
    setVal = val;
    notifyListeners();
  }
}