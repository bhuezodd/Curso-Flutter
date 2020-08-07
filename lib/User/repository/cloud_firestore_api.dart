import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curso_flutter/Place/modal/place.dart';
import 'package:curso_flutter/User/modal/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CloudFirestoreAPI {
  final String USERS = "users";
  final String PLACES = "places";

  final Firestore _db = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return await ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'pictureURL': user.pictureURL,
      'myPlaces': user.myPlaces,
      'myFavoritePlaces': user.myFavoritePlace,
      'lastSignIn': DateTime.now()
    }, merge: true);
  }

  Future<void> updatePlaceData(Place place) async {
    CollectionReference refPlace = _db.collection(PLACES);
    await _auth.currentUser().then(
          (user) => {
            refPlace.add(
              {
                "name": place.name,
                "description": place.description,
                "likes": place.likes,
                "userOwner": "${USERS}/${user.uid}"
              },
            ),
          },
        );
  }
}
