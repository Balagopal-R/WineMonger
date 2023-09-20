import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/orderModel.dart';
import 'package:get/get.dart';

class OrderScreenController extends GetxController {

  Future<OrderModel> fetchOrderData() async {

    const apiKey = 'owxdR7uk3HWimq9MO6CleX8Kt';
    const apiUrl = 'http://winemonger.nintriva.com//apiV1/orders/search';
    
    final response = await http.get(Uri.parse(apiUrl), headers: {
      'Apikey': apiKey,
    });
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final order = OrderModel.fromJson(data);

      print(data["code"]);
      print(data["Total_No_Items"]);
      print(data["data"][0]["customer_id"]);
      
      return order;

    } else {
      throw Exception('Failed to load data');
    }
  }
}
