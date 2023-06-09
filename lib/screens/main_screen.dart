import 'package:driver_app/screens/tabs/earnings_tab_screen.dart';
import 'package:driver_app/screens/tabs/home_tab_screen.dart';
import 'package:driver_app/screens/tabs/rating_tab_screen.dart';
import 'package:driver_app/screens/tabs/settings_tab_screen.dart';
import 'package:flutter/material.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{

  TabController? tabController;
  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  onTabChange(int index){
    currentTabIndex = index;
    tabController!.index = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        physics:  const NeverScrollableScrollPhysics(),

        children: const [
          Hometabscreen(),
          Ratingtabscreen(),
          Settingstabscreen(),
          Earningstabscreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.money),label: "Earnings"),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: "Ratings"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
        backgroundColor: Colors.lightBlue,
        type: BottomNavigationBarType.fixed,
        onTap: onTabChange,
        currentIndex: currentTabIndex,
      ),
    );
  }
}
