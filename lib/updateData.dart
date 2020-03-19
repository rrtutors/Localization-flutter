import 'package:flutter/material.dart';

class UpdateDataProvider with ChangeNotifier{

  int lang_selected;
  UpdateDataProvider({this.lang_selected});
  set setLang(val)
  {
    lang_selected=val;
    notifyListeners();
  }

  get lang
  {
    return lang_selected;
  }
}