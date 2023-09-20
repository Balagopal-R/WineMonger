import 'package:flutter/material.dart';
import 'package:wine_monger/src/constants/image_strings.dart';
import 'package:get/get.dart';
import 'package:wine_monger/src/features/authentication/controllers/order_screen_controller.dart';
import '../../controllers/manufactures_controller.dart';
import '../../controllers/reservation_screen_controller.dart';
import '../../controllers/tasting_screen_controller.dart';

// ignore: must_be_immutable
class DashBoardGrid extends StatelessWidget {
  DashBoardGrid({super.key});

  OrderScreenController orderController = Get.put(OrderScreenController());
  TastingScreenController tastingController = Get.put(TastingScreenController());
  ReservationScreenController reservationController = Get.put(ReservationScreenController());
  ManufactureScreenController manufacturerController = Get.put(ManufactureScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(30),
  crossAxisSpacing: 20,
  mainAxisSpacing: 20,
  crossAxisCount: 2,
  children: <Widget>[

    GestureDetector(
      onTap: () {
        orderController.fetchOrderData();
      },
      child: GridViewWidget(
        data: "Orders",
        gridImage: Image.asset(kdashOrders)),
    ),

      GestureDetector(
        onTap: (){
          tastingController.fetchTastingsData();
        },
        child: GridViewWidget(
        data: "Tastings",
        gridImage: Image.asset(kdashTastings)),
      ),

       GestureDetector(
         onTap: () {
           reservationController.fetchReservstionData();
         },
         child: GridViewWidget(
             data: "Reservations",
             gridImage: Image.asset(kdashReservations)),
       ),

      GestureDetector(
        onTap: () {
          manufacturerController.fetchManufacturesData();
        },
        child: GridViewWidget(
        data: "Manufactures",
        gridImage: Image.asset(kdashManufactures)),
      ),

      GridViewWidget(
      data: "Sales",
      gridImage: Image.asset(kdashSales)),

      GridViewWidget(
      data: "Products",
      gridImage: Image.asset(kdashProducts)),

       GridViewWidget(
      data: "Customers",
      gridImage: Image.asset(kdashCustomers)),

      GridViewWidget(
      data: "Imports",
      gridImage: Image.asset(kdashImports)),
  ],
      )
    );
  }

}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({required this.data, required this.gridImage});

  final String data;
  final Image gridImage;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(20),
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3), 
                  spreadRadius: 5, 
                  blurRadius: 7, 
                  offset: Offset(0, 3), 
                ),
              ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          gridImage,
          
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(data, style: TextStyle(fontSize: 12,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),)),
        ],
      )
    );
  }
}