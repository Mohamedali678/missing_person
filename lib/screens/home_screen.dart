import 'package:ambad2/provider/data.dart';
import 'package:ambad2/screens/add_post.dart';
import 'package:ambad2/screens/bottom_nav.dart';
import 'package:ambad2/screens/detail_screen.dart';
import 'package:ambad2/screens/reuse_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
            final provider = Provider.of<Data>(context);
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      imageUrl: provider.getData[index].image,
                      name: provider.getData[index].name,
                      age: provider.getData[index].age,
                      number: provider.getData[index].number,
                      location: provider.getData[index].location,
                      info: provider.getData[index].desc,
                      isFile: Provider.of<Data>(context).getData[index].isFile,
                    ),
                  ),
                );
              },
              child: BoxData(
                  imageUrl: Provider.of<Data>(context).getData[index].image,
                  name: Provider.of<Data>(context).getData[index].name,
                  age: Provider.of<Data>(context).getData[index].age,
                  location: Provider.of<Data>(context).getData[index].location,
                  isFile: Provider.of<Data>(context).getData[index].isFile,
                  iconData: Icon(Icons.share_rounded, size: 40)),
            );
          },
        ),
      ),
      // bottomSheet: BottomNavBar(),
    );
  }
}
