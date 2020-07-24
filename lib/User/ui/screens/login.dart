import 'package:curso_flutter/User/modal/user.dart';
import 'package:flutter/material.dart';
import 'package:curso_flutter/User/bloc/bloc_user.dart';
import 'package:curso_flutter/Widgets/button_green.dart';
import 'package:curso_flutter/Widgets/gradient_back.dart';
import 'package:curso_flutter/platzi_trips_cupertino.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        // Objecy user
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGoogleUI();
        } else {
          return PlatziTripsCupertino();
        }
      },
    );
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Welcome \n This is your Travel App',
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 37.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ButtonGreen(
                height: 50.0,
                width: 300.0,
                text: "Sign In Google",
                onTap: () {
                  userBloc.signIn().then((user) {
                    userBloc.updateUserData(User(
                      uid: user.uid,
                      name: user.displayName,
                      email: user.email,
                      pictureURL: user.photoUrl,
                    ));
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
