import 'package:flutter/material.dart';
import 'package:studybuddy/models/hedef_model.dart';
import 'package:studybuddy/service/firestore_hedef_service.dart';
import 'package:uuid/uuid.dart';


class HedefProvider with ChangeNotifier {

  final firestoreService = FirestoreHedefService();
  String? _id;
  String? _title;
  String? _description;

  var uuid = const Uuid();

  String? get id => _id;

  String? get title => _title;

  String? get description => _description;


  changeTitle(String value) {
    _title = value;
    notifyListeners();
  }

  changeDescription(String value) {
    _description = value;
    notifyListeners();
  }


  loadValues(HedefModel hedef) {
    _id = hedef.id;
    _title = hedef.title;
    _description = hedef.descripton;
  }

  saveHedef() {
    if (_id == null) {
      var newHedef = HedefModel(
          id: uuid.v4(),
          title: title,
          descripton: description,);
      firestoreService.saveHedef(newHedef);
    } else {
      //Update
      var updatedDomainFirm = HedefModel(
          id:id,
          title: title,
          descripton: description,);
      firestoreService.saveHedef(updatedDomainFirm);
    }
  }

  removeHedef(String id) {
    firestoreService.removeHedef(id);
  }
}