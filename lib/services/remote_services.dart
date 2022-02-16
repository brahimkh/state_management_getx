import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart' as dio;
import 'package:shopping/model/item_model.dart';
import 'package:http/http.dart'as http;

class RemoteServices {
  static var client = dio.Dio();


  static Future<dynamic> tryAnotherFunc()async{
    String theUrl = 'https://fakestoreapi.com/products';

    http.Response response =await http.get(Uri.parse(theUrl));
    String data =await response.body;
    var json =jsonDecode(data);
    return json;

  }
}
