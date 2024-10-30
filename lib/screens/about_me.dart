import 'package:unit6_assignment_cabantug/components/tab_widget_1.dart';
import 'package:unit6_assignment_cabantug/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => About_MeState();
}

class About_MeState extends State<About_Me> {
  List<Widget> _tabScreens = [ TabWidget1(),TabWidget2(),];

  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    List<Widget> _tabLists = [
      const Tab(
        text: "Tab1",
        icon: Icon(
          Icons.phone_android,
          color: Colors.white, 
        ),
        iconMargin: EdgeInsets.only(bottom: 5),
      ),
      const Tab(
        text: "Tab2",
        icon: Icon(
          Icons.pages_outlined,
          color: Colors.white,
        ),
        iconMargin: EdgeInsets.only(bottom: 5),
      ),
    ];

    return DefaultTabController(
      length: _tabScreens.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My New Home"), 
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0), 
            child: Container(
              color: Colors.purple, 
              child: TabBar(
                tabs: _tabLists,
                indicatorColor: const Color.fromARGB(255, 158, 55, 213),
                labelColor: Colors.white, 
                unselectedLabelColor: Colors.white, 
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          ),
        ),
        body: TabBarView(children: _tabScreens),
      ),
    );
  }
}
