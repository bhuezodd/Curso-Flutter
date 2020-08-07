import 'package:curso_flutter/User/bloc/bloc_user.dart';
import 'package:curso_flutter/User/modal/user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import '../widgets/user_info.dart';
import '../widgets/button_bar.dart';

class ProfileHeader extends StatelessWidget {
  UserBloc userBloc;
  User user;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
            return showProfile(snapshot);
          case ConnectionState.done:
            return showProfile(snapshot);
        }
      },
    );
  }

  Widget showProfile(AsyncSnapshot snapshot) {
    if (!snapshot.hasData || snapshot.hasError) {
      print("Not singin");
      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            Text("No se pudo cargar la información, Haz signIn"),
          ],
        ),
      );
    } else {
      user = User(
        name: snapshot.data.displayName,
        email: snapshot.data.email,
        pictureURL: snapshot.data.photoUrl,
        uid: null,
      );
      final title = Text(
        'Profile',
        style: TextStyle(
            fontFamily: 'Lato',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      );
      return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[title],
            ),
            UserInfo(user),
            ButtonsBar()
          ],
        ),
      );
    }
  }
}
