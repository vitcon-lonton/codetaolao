import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    return FirebaseFirestore.instance
        .collection('users')
        .doc('user.id.getOrCrash()');

    // final userOption = await getIt<IAuthFacade>().getSignedInUser();
    // final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    // return FirebaseFirestore.instance
    //     .collection('users')
    //     .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
