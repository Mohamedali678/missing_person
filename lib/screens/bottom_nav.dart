import 'package:ambad2/screens/add_post.dart';
import 'package:ambad2/screens/home_screen.dart';
import 'package:ambad2/screens/login_screen.dart';
import 'package:ambad2/screens/signup_screen.dart';
import 'package:ambad2/screens/user_account.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int indexTap = 0;

  // final List<Widget> screens = [
  //   HomeScreen(),
  //   LoginScreen(),
  // ];

  final _bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: _bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          //padding: EdgeInsets.only(bottom: 34),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = HomeScreen();
                    indexTap = 0;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 35,
                      color: indexTap == 0 ? Colors.blue : Colors.black,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: indexTap == 0 ? Colors.blue : Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 60,
              ),
              Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          currentScreen = UserAccount();
                          indexTap = 1;
                        },
                      );
                    },
                    child: Column(
                      children: [
                        Icon(Icons.account_circle_outlined,
                            size: 35,
                            color: indexTap == 1 ? Colors.blue : Colors.black),
                        Text(
                          "Account",
                          style: TextStyle(
                              color:
                                  indexTap == 1 ? Colors.blue : Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPostScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
