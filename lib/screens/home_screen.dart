import 'package:ambad2/provider/data.dart';
import 'package:ambad2/screens/add_post.dart';
import 'package:ambad2/screens/reuse_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'dart:io';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEBED),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Provider.of<Data>(context).getData.length,
          itemBuilder: (context, index) {
            return BoxData(
              imageUrl: Provider.of<Data>(context).getData[index].image,
              name: Provider.of<Data>(context).getData[index].name,
              age: Provider.of<Data>(context).getData[index].age,
              location: Provider.of<Data>(context).getData[index].location,
            );
            //BoxData(imageUrl: imageUrl, name: name, age: age, location: location);
          },
        ),
      ),
      bottomSheet: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add post"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "Account"),
        ],
      ),
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
