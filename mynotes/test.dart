extension ListExtension on List {
  int get getAmountDrankLength =>
      (this[0]['amountDrank'] as List?)?.length ?? 1;
}



void main(List<String> args) {
  var list = [
    {
      // 'date': '2023-02-20',
      // 'amountDrank': [2]
    }
  ];

  List<int>? list2 = list[0]['amountDrank'] as List<int>? ?? [] ;

  print('This is the length ${list.getAmountDrankLength}');
}
