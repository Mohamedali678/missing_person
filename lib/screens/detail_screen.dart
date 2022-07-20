import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailScreen extends StatefulWidget {
  //const DetailScreen({Key? key}) : super(key: key);

  final imageUrl;
  final String name;
  final age;
  final number;
  final location;
  final info;

  DetailScreen(
      {required this.imageUrl,
      required this.name,
      required this.age,
      required this.number,
      required this.location,
      required this.isFile,
      required this.info});

  bool isFile;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  File? imageFile;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageFile = File(widget.imageUrl);
  }

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: widget.isFile != true
                      ? Image(
                          image: AssetImage(widget.imageUrl),
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        )
                      : Image.file(
                          imageFile!,
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              ListTile(
                leading: SizedBox(
                  width: 80,
                  height: 50,
                  child: Column(
                    children: [
                      Text(
                        "Goobta",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        widget.location.toString(),
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                title: Text(
                  "Magaca",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  widget.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                trailing: SizedBox(
                  width: 60,
                  height: 50,
                  child: Column(
                    children: [
                      Text(
                        "Da'da",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        widget.age.toString(),
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  widget.info.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Fadlan naga soo wac ${widget.number}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: MaterialButton(
                  height: 60,
                  minWidth: double.infinity,
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    "Go back",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
