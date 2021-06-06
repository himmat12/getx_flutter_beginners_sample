import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleStateController extends GetxController {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    update(['count']);
  }

  void decrement() {
    _count--;
    update(['count']);
  }

  void reset() {
    _count = 0;
    update(['count']);
  }
}
