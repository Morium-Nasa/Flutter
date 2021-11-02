import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class TakeImage extends StatefulWidget {
  const TakeImage({Key? key}) : super(key: key);

  @override
  _TakeImageState createState() => _TakeImageState();
}

class _TakeImageState extends State<TakeImage> {

  File ? _image;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(50)),
                    border: Border.all(
                        color:Colors.grey, width: 1.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        decoration: BoxDecoration(
                         // color: BrandColors.colorPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        child: _image == null
                            ? IconButton(
                          onPressed: () {
                            // selectImage(context);
                            selectImage(context);
                          },
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                            : CircleAvatar(
                          backgroundImage: FileImage(_image !),
                        )
                      // : Image.file(
                      //     image,
                      //     fit: BoxFit.cover,
                      //   ),
                    ),
                  ),
                ),
                Positioned(
                  right: -15,
                  top: -15,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _image = null;
                      });
                    },
                    icon: _image != null
                        ? Icon(Icons.clear,color: Colors.white,)
                        : Icon(
                      Icons.clear,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Text(
                'Add your profile photo',
              //  style: myStyle(14,BrandColors.colorText),
              ),
            ],
          ),
        ),
      ),
    );
  }


  final ImagePicker _picker = ImagePicker();
  Future getImageGallery() async {
    var pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile!.path);
    });
    Navigator.of(context).pop();
  }

   Future getImageCamera() async {
     var pickedFile = await _picker.pickImage(source: ImageSource.camera);
     setState(() {
       _image = File(pickedFile!.path);

     });
     Navigator.of(context).pop();
   }



  selectImage(parentContext) {
    return showDialog(
        context: parentContext,
        builder: (context) {
          return SimpleDialog(
            title: Text(
              "Upload Image",
              style: TextStyle(),
            ),
            children: [

              SimpleDialogOption(
                child: Text("Image from Gallery"),
                onPressed: () {
                  print("Gallery");
                  getImageGallery();
                },
              ),
              SimpleDialogOption(
                child: Text("Image from Camera"),
                onPressed: () {
                  print("open camera");
                  getImageCamera();
                },
              ),
              SimpleDialogOption(
                child: Text("cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
