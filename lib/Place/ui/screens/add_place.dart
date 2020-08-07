import 'dart:io';

import 'package:curso_flutter/Place/modal/place.dart';
import 'package:curso_flutter/Place/ui/widgets/card_image.dart';
import 'package:curso_flutter/Place/ui/widgets/input_location.dart';
import 'package:curso_flutter/User/bloc/bloc_user.dart';
import 'package:curso_flutter/Widgets/button_purple.dart';
import 'package:curso_flutter/Widgets/gradient_back.dart';
import 'package:curso_flutter/Widgets/input_text.dart';
import 'package:curso_flutter/Widgets/title_header.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class AddPlace extends StatefulWidget {
  File img;

  AddPlace({this.img});

  @override
  _AddPlaceState createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  final TextEditingController _controllerTitle = new TextEditingController();
  final TextEditingController _controllerDescription =
      new TextEditingController();
  final TextEditingController _controllerLocation = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(
            height: 300,
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox(
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left),
                    color: Colors.white,
                    iconSize: 45,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 25.0),
                  child: TitleHeader(
                    title: "Add Place",
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 100, bottom: 20),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: CardImageWithFab(
                    pathImage: "assets/img/beach_palm.jpeg",
                    height: 250,
                    width: 350,
                    top: 0,
                    left: 0,
                    iconData: Icons.camera_alt,
                    onPressedFabIcon: null,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: InputText(
                    hintText: "Title",
                    inputType: TextInputType.text,
                    maxLines: 1,
                    controller: _controllerTitle,
                  ),
                ),
                InputText(
                  hintText: "Description",
                  inputType: TextInputType.multiline,
                  controller: _controllerDescription,
                  maxLines: 4,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: InputLocation(
                    hintText: "Add Location",
                    iconData: Icons.location_on,
                    controller: _controllerLocation,
                  ),
                ),
                Container(
                  width: 70,
                  child: ButtonPurple(
                    text: "Add place",
                    onPressed: () {
                      // 1- Firebase storage
                      // Url

                      // 2- Cloud Firestore
                      // Place
                      userBloc
                          .updatePlaceData(Place(
                        name: _controllerTitle.text,
                        description: _controllerDescription.text,
                        likes: 0,
                      ))
                          .whenComplete(() {
                        print("Data");
                        Navigator.pop(context);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
