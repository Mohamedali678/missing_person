import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BoxData extends StatefulWidget {
  // const BoxData({
  //   Key? key,
  // }) : super(key: key);

  final String imageUrl;
  final String name;
  final int age;
  final String location;

  BoxData(
      {required this.imageUrl,
      required this.name,
      required this.age,
      required this.location});

  @override
  State<BoxData> createState() => _BoxDataState();
}

class _BoxDataState extends State<BoxData> {
  bool isFile = false;

  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Stack(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: isFile != true
                    ? Image(
                        image: AssetImage(widget.imageUrl),
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      )
                    : Image(
                        image: FileImage(imageFile!),
                      ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${widget.age}",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.location.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            right: 6,
            bottom: 40,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share, size: 35),
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
