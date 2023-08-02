import 'package:flutter/material.dart';
import 'package:second_application/screens/home/chat_screen.dart';
import 'package:second_application/screens/home/friends_screen.dart';
import 'package:second_application/screens/home/search_screen.dart';
import 'package:second_application/widget/user_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Friends'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
      body: SafeArea(
        child: _selectedIndex == 1
            ? ChatScreen()
            : _selectedIndex == 2
                ? FriendsScreen()
                : _selectedIndex == 3
                    ? SearchScreen()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Logo'),
                                Row(
                                  children: [
                                    Icon(Icons.notifications),
                                    SizedBox(width: 12),
                                    Icon(Icons.add),
                                    SizedBox(width: 12),
                                    Icon(Icons.folder),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 16),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 0.5,
                                  color: Color(0xffcccccc),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print('Tap hiilee!');
                                  },
                                  onDoubleTap: () {
                                    print('Double Tap hiilee!');
                                  },
                                  onLongPress: () {
                                    print('Long press hiilee');
                                  },
                                  onLongPressCancel: () {
                                    print('Long press cancel hiilee');
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        bottom: 6, left: 3, right: 3),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          width: 3,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    child: Text('Tab'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  ListPersonWidget(),
                                  ListPersonWidget(),
                                  ListPersonWidget(),
                                  ListPersonWidget(),
                                  ListPersonWidget(),
                                  ListPersonWidget(),
                                  ListPersonWidget(),
                                  ListPersonWidget(),
                                  ListPersonWidget(),
                                  ListPersonWidget(),
                                  ListPersonWidget(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
      ),
    );
  }
}
