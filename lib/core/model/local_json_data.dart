import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class LocalJson {
  List jsonData = [];

  Future adidasShoes() async {
    final String response =
        await rootBundle.loadString('assets/data/adidas.json');
    final data = await json.decode(response);
    print(data);

    return data;
  }

  Future<void> nikeShoe() async {
    final String response =
        await rootBundle.loadString('assets/data/nike.json');
    final data = await json.decode(response);

    return data;
  }

  Future<void> pumaShoes() async {
    final String response =
        await rootBundle.loadString('assets/data/puma.json');
    final data = await json.decode(response);

    return data;
  }
}
