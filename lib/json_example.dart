import 'dart:convert';
import 'dart:io';

void main(){
  String jsonStr = """
  {"basket" :{
  "apple" : 50,
  "banana" : 10,
  "grape" : 5
  }
  }
"""  ;

  Map json = jsonDecode(jsonStr);
  Map basket = json["basket"];
  int apples = basket["apple"];
  int bananas = basket["banana"];
  int grapes = basket["grape"];
  print('apple are $apples');
  print("bananas ar $bananas");
  print("grapes are $grapes");

  Map basketMap = _readBasketJson('basket.json');
  print('grapess was ${basketMap["apple"]}');

  basketMap.update('grape', (v)=>99);
  File('basket.json').writeAsStringSync(jsonEncode(basketMap));

  Map updated = _readBasketJson('basket.json');
  int grapesNow = updated["grape"];
  print('now grapes are $grapesNow');

}

Map _readBasketJson(String fileName) {
  String contents = File(fileName).readAsStringSync();
  print('contents : $contents');
  return jsonDecode(contents);
}