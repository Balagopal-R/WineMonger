import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:wine_monger/src/features/authentication/models/manufactures_model.dart';


class ManufactureScreenController extends GetxController {

 Future<ManufacturesModel> fetchManufacturesData() async {

    const apiKey = 'owxdR7uk3HWimq9MO6CleX8Kt';
    const apiUrl = 'http://winemonger.nintriva.com//apiV1/manufacturers/list';
    
    final response = await http.get(Uri.parse(apiUrl), headers: {
      'Apikey': apiKey,
    });
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final order = ManufacturesModel.fromJson(data);

      print(data);
      print(data["data"][0]["wholesale_price"]);
      return order;

    } else {
      throw Exception('Failed to load data');
    }
  }
}