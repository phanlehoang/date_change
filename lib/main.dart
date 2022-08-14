import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main() {
  var a = new Date();
  a.Now();
  a.Tomorrow();
}
final DateTime now = DateTime.now();
final DateFormat formatter = DateFormat('dd-MM-yyyy');
class Date {
  void Now() {
    final String formatted = formatter.format(now);
    print(formatted);
  }
  void Tomorrow(){
    final tomorrow = DateTime(now.year, now.month, now.day + 1);
    final String formatted_tomorrow = formatter.format(tomorrow);
    print(formatted_tomorrow);
  }
}
