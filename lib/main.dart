import 'dart:math' show Random;
import 'dart:io';
void main() {
  List<String> strs=<String>['123123123123','123123123123125','1233212313131','13131314564','13132131','131313132131','654684987987987','13213133213213','13313131313131','4445464','111111111111','222222222222'] ;
  List<String> strs1=<String>[] ;
  print('before list:');
  List<int> numbers = strs.map(int.parse).toList();
  print(numbers);
  for(var i in strs){
    if(checkID(i)==true){
      strs1.add(i);
    }
  }
  List<int> numbers1 = strs1.map(int.parse).toList();
  print('After list:');
  print(numbers1);
  print('---------------------------------------------');
  print('After sorting:');
  print(quickSort(numbers1));
}
List<int> quickSort(List<int> a) {
  if (a.length < 2) {
    return a;
  } else {
    var pivot = a[0];
    var less = <int>[];
    var greater = <int>[];
    a.removeAt(0);
    for (var i in a) {
      if (i <= pivot) {
        less.add(i);
      } else {
        greater.add(i);
      }
    }
    return quickSort(less) + [pivot] + quickSort(greater);
  }
}
bool checkID(var value) {
  if (value == null) {
    return false;
  }
  if (value.toString().length!=12) {
    return false;
  }
  return true;
}