
import 'dart:convert';
import 'package:dio/dio.dart';
import '../config.dart';

getStoresUbication (context , lat , lng) async {
  try {
    var dio = await getDio(context);
    var response = await dio.get("https://api.openpay.mx/stores?latitud=$lat&longitud=$lng&kilometers=4.5&amount=4000");
    return response.data;
  } catch (e) {
    return e;
  }
}