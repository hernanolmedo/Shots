import 'package:shots/app/models/pack_model.dart';

class Packs {
  static PackModel get basic => PackModel(name: 'Basic', filename: 'basic', selected: true);
  static PackModel get close => PackModel(name: 'Close friends only', filename: 'close');

  // un comment below for testing purposes
  static PackModel get test => PackModel(name: 'Test', filename: 'test');

  // all packs
  static List<PackModel> get all => [basic, close, test];
}