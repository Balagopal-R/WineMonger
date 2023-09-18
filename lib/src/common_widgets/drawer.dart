import 'package:flutter/material.dart';
import 'package:wine_monger/src/constants/image_strings.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 2 / 3,
        child: Drawer(
          backgroundColor: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text("UserName",style: TextStyle(fontSize: 17,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),),
                    subtitle: Text("Admin"),
                    leading: 
                    // Image(image: AssetImage(kdrawerUserImage)),
                    SizedBox(
                      height: 100,
                      width: 50,
                      child: Image(image: AssetImage(kdrawerUserImage)),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xff999999),
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                ]),
                ListTileWidgets(
                  text: "Orders",
                  myImage: Image.asset(kdrawerOrders),
                  ontap: () {},
                ),
                ListTileWidgets(
                  text: "Offers",
                  myImage: Image.asset(kdrawerOffers),
                  ontap: () {},
                ),
                ListTileWidgets(
                  text: "Tasting",
                  myImage: Image.asset(kdrawerTastings),
                  ontap: () {},
                ),
                ListTileWidgets(
                  text: "Products",
                  myImage: Image.asset(kdrawerProducts),
                  ontap: () {},
                ),
                ListTileWidgets(
                  text: "Sales",
                  myImage: Image.asset(kdrawerSales),
                  ontap: () {},
                ),
                ListTileWidgets(
                  text: "Customer",
                  myImage: Image.asset(kdrawerCustomer),
                  ontap: () {},
                ),
                ListTileWidgets(
                    text: "imports",
                    myImage: Image.asset(kdrawerImports),
                    ontap: () {}
                    ),
                ListTileWidgets(
                    text: "Logout",
                    myImage: Image.asset(kdrawerLogout),
                    ontap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListTileWidgets extends StatelessWidget {
  const ListTileWidgets(
      {required this.text,
      Key? key,
      required this.myImage,
      required this.ontap})
      : super(key: key);
  final String text;
  final Image myImage;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 10, top: 15, bottom: 15),
        child: Row(
          children: [
            Container(
              height: 24,
              width: 30,
              child: myImage,
            ),
            SizedBox(
              width: 10,
            ),
            Text(text)
          ],
        ),
      ),
      onTap: ontap,
    );
  }
}