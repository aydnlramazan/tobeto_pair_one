import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tobeto_pair_one/constants/collection_name.dart';

class UserRepository {
  final FirebaseFirestore _firebaseFirestore;

  UserRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  Future<void> saveUser(
      {required String email,
      required String password,
      required String username}) async {
    await _firebaseFirestore
        .collection(CollectionName.USERS)
        .doc(/* kullanıcı idsi */)
        .set({
      'email': email,
      'password': password,
      'username': username,
      'registerDate': DateTime.now(),
    });
  }
}
