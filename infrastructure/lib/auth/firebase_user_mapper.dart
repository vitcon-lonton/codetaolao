import 'package:domain/domain.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}
