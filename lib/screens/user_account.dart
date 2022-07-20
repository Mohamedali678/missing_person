import 'package:ambad2/screens/detail_screen.dart';
import 'package:ambad2/screens/reuse_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../provider/data.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            //color: Colors.teal,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(12),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffeecda3), Color(0xffef629f)],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(46),
                    image: const DecorationImage(
                        image: AssetImage("images/kid1.jpg"),
                        fit: BoxFit.cover),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "@Mohamed",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Expanded(
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
                          isFile:
                              Provider.of<Data>(context).getData[index].isFile,
                        ),
                      ),
                    );
                  },
                  child: BoxData(
                    imageUrl: Provider.of<Data>(context).getData[index].image,
                    name: Provider.of<Data>(context).getData[index].name,
                    age: Provider.of<Data>(context).getData[index].age,
                    location:
                        Provider.of<Data>(context).getData[index].location,
                    isFile: Provider.of<Data>(context).getData[index].isFile,
                    iconData: Icon(Icons.arrow_forward_ios_outlined, size: 30),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
