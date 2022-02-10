import 'package:pets/app/messages/labels/labels_en.dart';
import 'package:pets/app/messages/labels/labels_es.dart';
import 'package:get/get.dart';

class Messages extends Translations {

  @override
  Map<String, Map<String, String>> get keys => {
    'en' : en,
    'es' : es,
  };
}

final Map<String, String> en = {
    'login': LabelsEN.LOGIN,
    'username' : LabelsEN.USERNAME,
    'password' : LabelsEN.PASSWORD,
    'friend' : LabelsEN.FRIEND,
    'activities' : LabelsEN.ACTIVITIES
};

final Map<String, String> es = {
    'login': LabelsES.LOGIN,
    'username' : LabelsES.USERNAME,
    'password' : LabelsES.PASSWORD,
    'friend' : LabelsES.FRIEND,
    'activities' : LabelsES.ACTIVITIES
};
