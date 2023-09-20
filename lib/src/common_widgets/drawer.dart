import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine_monger/src/constants/image_strings.dart';
import 'package:wine_monger/src/features/authentication/screens/login_screen/login_screen.dart';
import '../managers/local_db/wm_shared_preference.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({super.key});

  final logOut = WMSharedPreference().logOut();
  // final adminLevel = WMSharedPreference().getUserLevel();

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder<String?>(
    //     future: WMSharedPreference().getUserName(),
    //     builder: (context, snapshot) {
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
                    title: FutureBuilder<String?>(
                      future: WMSharedPreference().getUserName(),
                      builder: (context, snapshot) {
                        print('sanpshot---${snapshot.data}');
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          // Return a loading indicator if the data is still being fetched.
                          return CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          // Handle error case
                          return Text('Error: ${snapshot.error}');
                        } else if (snapshot.hasData) {
                          // Use the data if available
                          return Text('${snapshot.data}');
                        } else {
                          // Handle the case where there is no data
                          return Text('No User Name');
                        }
                      },
                    ),
                    subtitle: FutureBuilder<String?>(
                        future: WMSharedPreference().getUserLevel(),
                        builder: (context, snapshot) {
                          return Text(snapshot.data.toString());
                        }),
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
                    ontap: () {}),
                ListTileWidgets(
                    text: "Logout",
                    myImage: Image.asset(kdrawerLogout),
                    ontap: () {
                      logOut;
                      Get.off(const LoginScreen());
                    })
              ],
            ),
          ),
        ),
      ),
    );
    // });
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
