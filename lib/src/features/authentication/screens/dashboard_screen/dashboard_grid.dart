import 'package:flutter/material.dart';
import 'package:wine_monger/src/constants/image_strings.dart';

class DashBoardGrid extends StatelessWidget {
  const DashBoardGrid({super.key});

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

    GridViewWidget(
      data: "Orders",
      gridImage: Image.asset(kdashOrders)),

      GridViewWidget(
      data: "Tastings",
      gridImage: Image.asset(kdashTastings)),

       GridViewWidget(
      data: "Reservations",
      gridImage: Image.asset(kdashReservations)),

      GridViewWidget(
      data: "Manufactures",
      gridImage: Image.asset(kdashManufactures)),

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