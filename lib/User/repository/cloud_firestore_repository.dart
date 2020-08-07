import 'package:curso_flutter/Place/modal/place.dart';
import 'package:curso_flutter/User/modal/user.dart';
import 'package:curso_flutter/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) =>
      _cloudFirestoreAPI.updateUserData(user);

  Future<void> updatePlaceData(Place place) =>
      _cloudFirestoreAPI.updatePlaceData(place);
}
