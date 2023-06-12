import 'package:notes_csit/data/network/baseApiService.dart';
import 'package:notes_csit/data/network/networkApiService.dart';
import 'package:notes_csit/models/testexammodel.dart';
import 'package:notes_csit/res/app_url.dart';

class AutoModelRepository {
  BaseApiServices _apiServices = NetworkApiService();
  Future<AutoModels> requestApiz() async {
    try {
      // print("trying to get data");
      AutoModels licenseData = AutoModels();
      dynamic response = await _apiServices
          .getGetRequest("http://192.168.18.35/lapi/public/api/category/1");

      print(response);
      licenseData = AutoModels.fromJson(response);
      return licenseData;
    } catch (e) {
      print("i am error in repo");

      print(e);
      throw e;
    }
  }
}
