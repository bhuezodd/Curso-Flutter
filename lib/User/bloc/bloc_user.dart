import 'package:curso_flutter/Place/modal/place.dart';
import 'package:curso_flutter/User/modal/user.dart';
import 'package:curso_flutter/User/repository/cloud_firestore_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:curso_flutter/User/repository/auth_repository.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();

  // Flujo de datos Streams
  // Streams - FireBase
  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;

  Stream<FirebaseUser> get authStatus => streamFirebase;

  // Casos uso
  // 1- SignIn Google
  Future<FirebaseUser> signIn() {
    return _auth_repository.signInFirebase();
  }

  signOut() => _auth_repository.signOut();

  final _cloudFirestoreRepository = CloudFirestoreRepository();

  void updateUserData(User user) =>
      _cloudFirestoreRepository.updateUserDataFirestore(user);

  // Submit data
  Future<void> updatePlaceData(Place place) =>
      _cloudFirestoreRepository.updatePlaceData(place);

  @override
  void dispose() {}
}
