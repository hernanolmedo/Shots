import 'package:flutter/material.dart';
import 'package:shots/app/models/pack_model.dart';
import 'package:shots/app/utils/packs.dart';

class PacksProvider extends ChangeNotifier {
  // maybe put these in yaml files for easier getting
  List<PackModel> _packs = [...Packs.all];
  List<PackModel> get packs => _packs;

  // filenames of selected packs

  addPack(PackModel pack) {
    print("adding pack");
    int index = _packs.indexOf(pack);
    _packs[index] = pack.select();
    // print(pack.select());
    notifyListeners();
  }

  removePack(PackModel pack) {
    int index = _packs.indexOf(pack);
    _packs[index] = pack.remove();
    notifyListeners();

    print("remvoved pack");

    // if packs list empty, add basic pack

    int selectedPacksNo = 0;
    for (PackModel pack in _packs) {
      if (pack.selected) selectedPacksNo++;
    }
    if (selectedPacksNo == 0) {
      print("Empty");
      // add basic pack
      _packs[0] = _packs[0].select();
    }
  }
}
