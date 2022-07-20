import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../provider/data.dart';

class AddPostScreen extends StatefulWidget {
  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  //const AddPostScreen({Key? key}) : super(key: key);
  String? name;

  double? age;

  double? number;

  String? location;
  String? description;
  String? imagePath;
  Image? fileImage;

  final _globalKey = GlobalKey<FormState>();

  void getImage() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file != null) {
      setState(
        () {
          imagePath = file.path;
        },
      );
    }
  }

  // AddPostScreen(
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      size: 40,
                      color: Colors.black,
                    )),
                const SizedBox(
                  height: 30,
                ),
                imagePath != null
                    ? Align(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(File(imagePath!),
                              height: 120, width: 120, fit: BoxFit.cover),
                        ),
                      )
                    : Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {
                            getImage();
                          },
                          icon: const Icon(
                            Icons.add_a_photo,
                            size: 45,
                          ),
                        ),
                      ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: TextFormField(
                    onChanged: (value) {
                      name = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Gali Magaca";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter Name",
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black87,
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.6),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.6),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: TextFormField(
                    onChanged: (value) {
                      age = double.parse(value);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Gali da'da qofka";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter Age",
                      prefixIcon: const Icon(
                        Icons.person_sharp,
                        color: Colors.black87,
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.6),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.6),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: TextFormField(
                    onChanged: (value) {
                      number = double.parse(value);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Gali number";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter Phone number",
                      prefixIcon: const Icon(
                        Icons.call,
                        color: Colors.black87,
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.6),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.6),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: TextFormField(
                    onChanged: (value) {
                      location = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Gali goobta";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter Location",
                      prefixIcon: const Icon(
                        Icons.location_on_outlined,
                        color: Colors.black87,
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.6),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.6),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: TextFormField(
                    onChanged: (value) {
                      description = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Gali faahfaahin";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                    decoration: InputDecoration(
                      hintText: "Enter Description",
                      prefixIcon: const Icon(
                        Icons.info_outlined,
                        color: Colors.black87,
                      ),
                      //contentPadding: EdgeInsets.all(42),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.6),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.6),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: MaterialButton(
                    onPressed: () {
                      if (_globalKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Successfully Posted"),
                          ),
                        );

                        Provider.of<Data>(context, listen: false).addNewData(
                          imagePath!,
                          name!,
                          age!.toInt(),
                          number!.toInt(),
                          location!,
                          description!,
                          true,
                        );

                        Navigator.pop(context);
                      }
                      //
                    },
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 60,
                    minWidth: double.infinity,
                    child: const Text(
                      "Post",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
