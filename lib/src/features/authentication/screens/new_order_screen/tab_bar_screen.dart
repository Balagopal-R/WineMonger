import 'package:flutter/material.dart';

class TabBarClass extends StatefulWidget {
  const TabBarClass({super.key});

  @override
  State<TabBarClass> createState() => _TabBarClassState();
}

class _TabBarClassState extends State<TabBarClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 32,
          ),
          child: DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Column(
              children: [
                Container(
                  height: 47,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: TabBar(
                    unselectedLabelColor: Colors.grey[900],
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 160, 223, 163)),
                    tabs: [
                      Tab(
                        child: Container(
                          child: const Text(
                            "Leads",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: const Text(" Wholesale ",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: const Text("Retail",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      child: const Center(child: Text("leads")),
                    ),
                    Container(
                      child: const Center(child: Text("Retail")),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}