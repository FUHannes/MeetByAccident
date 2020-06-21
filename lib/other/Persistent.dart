import 'package:shared_preferences/shared_preferences.dart';

class SmallDataHandler{
  factory SmallDataHandler() => _instance;
  SharedPreferences _prefs;
  Future<SharedPreferences> getPrefs()async{
    return _prefs??await SharedPreferences.getInstance();
  }
  SmallDataHandler._(){
    print("init SmalldataHandler");
  }
  static final SmallDataHandler _instance = SmallDataHandler._();
  
  void setOrder(List<int> order)async{
    (await getPrefs()).setString('key','value');
    return;
  }

}
