import 'dart:convert';

class DrinkData {
  String day;
  List<int> amountDrank;
  

  DrinkData({required this.day, required this.amountDrank});

  factory DrinkData.fromJson(Map<String, dynamic> json) {
    return DrinkData(


void main(List<String> args) {
  String jsonData =
      '[{"day": "16/02/23", "amountDrank": [1, 3, 4, 5, 6]}, {"day": "17/02/23", "amountDrank": [1, 3, 4, 5, 6]}, {"day": "18/02/23", "amountDrank": [1, 3, 4, 5, 6]}]';
      '[{"day": "16/02/23", "amountDrank": [1, 3, 4, 5, 6]}, {"day": "17/02/23", "amountDrank": [1, 3, 4, 5, 6]}, {"day": "18/02/23", "amountDrank": [1, 3, 4, 5, 6]}]';

  List<DrinkData> drinkDataList = (json.decode(jsonData) as List<dynamic>)
      .map((dynamic json) => DrinkData.fromJson(json))
      .toList();

  List<Map<String, dynamic>> dataAsMapList =
      drinkDataList.map((data) => data.toJson()).toList();

  print('${drinkDataList}');
  print('---------------------------');
  print('${dataAsMapList[1]['day'].runtimeType}');
}
