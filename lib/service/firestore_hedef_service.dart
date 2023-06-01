import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/hedef_model.dart';

class FirestoreHedefService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveHedef(HedefModel hedef) {
    return _db
        .collection('hedef')
        .doc(hedef.id)
        .set(hedef.toMap());
  }

  Stream<List<HedefModel>> getHedef() {
    return _db.collection('hedef').snapshots().map((snapshot) => snapshot
        .docs
        .map((document) => HedefModel.fromFirestore(document.data()))
        .toList());
  }

  Future<void> removeHedef(String id) {
    return _db.collection('hedef').doc(id).delete();
  }
}