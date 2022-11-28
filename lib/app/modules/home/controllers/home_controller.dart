import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  var selectedValue = "Country of residence".obs;

  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(
      child: Text("Country of residence"),
      value: "Country of residence",
    ),
  ].obs;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("India"), value: "India"),
      DropdownMenuItem(child: Text("USA"), value: "USA"),
      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
      DropdownMenuItem(child: Text("England"), value: "England"),
    ].obs;

    menuItems.add(DropdownMenuItem(child: Text("India"), value: "India"));

    return menuItems;
  }

  @override
  void onInit() {
    super.onInit();
    menuItems.clear();
    menuItems.add(DropdownMenuItem(child: Text("India"), value: "India"));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
