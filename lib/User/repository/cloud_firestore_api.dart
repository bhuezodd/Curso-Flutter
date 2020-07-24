import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curso_flutter/User/modal/user.dart';

class CloudFirestoreAPI {
  final String USERS = "users";
  final String PLACES = "places";

  final Firestore _db = Firestore.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'pictureURL': user.pictureURL,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePlace,
      'lastSignIn': DateTime.now()
    }, merge: true);
  }
}
