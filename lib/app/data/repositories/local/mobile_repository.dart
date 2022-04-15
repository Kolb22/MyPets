import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:pets/app/data/providers/local/mobile_provider.dart';

class MobileRepository {

  final MobileProvider _mobileProvider = Get.find<MobileProvider>();

  Future<void> saveAndLaunchFileRepository(List<int> bytes, String fileName)
    => _mobileProvider.saveAndLaunchFile(bytes, fileName);

  Future<Uint8List> readImageData(String name)
    => _mobileProvider.readImageData(name);

}