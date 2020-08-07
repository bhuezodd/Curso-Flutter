import 'package:curso_flutter/Place/ui/screens/add_place.dart';
import 'package:curso_flutter/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            // Change password
            CircleButton(
              true,
              Icons.lock,
              20.0,
              Color.fromRGBO(255, 255, 255, 0.6),
              onPressed: () {},
            ),
            // Add place
            CircleButton(
              false,
              Icons.add,
              40.0,
              Color.fromRGBO(255, 255, 255, 1),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new AddPlace()));
              },
            ),
            // LogOu
            CircleButton(
              true,
              Icons.exit_to_app,
              20.0,
              Color.fromRGBO(255, 255, 255, 0.6),
              onPressed: () {
                userBloc.signOut();
              },
            ),
          ],
        ));
  }
}
