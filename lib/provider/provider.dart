import 'package:cozina/widgets/buyer_bottom_bar.dart';
import 'package:cozina/widgets/maker_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final postProvider =
//     ChangeNotifierProvider<PostProvider>((ref) => PostProvider());

class ChangeValue extends ChangeNotifier {
  var value = 'one';

  changeDropValue(String val) async {
    this.value = val;
    print(this.value);
    // SharedPreferences pref = await SharedPreferences.getInstance();
    // pref.setString('str', this.value);
    notifyListeners();
    return this.value;
  }
}