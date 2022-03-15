import 'package:flutter/material.dart';
import 'tasks.dart';

//Store de données.
class CollectionData with ChangeNotifier {

      final String _createStatut = "delete";
      String get createStatut => _createStatut;

  void create() {
    print("create");
     notifyListeners();
  }

  void uodate() {
    print(_createStatut);
     notifyListeners();
  }

  void delete(int id) {
    print("deleted");
    tasks.removeWhere((item) => item.id == id);
     notifyListeners();
  }
}
