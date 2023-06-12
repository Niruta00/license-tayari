import 'package:flutter/cupertino.dart';
import 'package:notes_csit/data/response/api_response.dart';
import 'package:notes_csit/models/testexammodel.dart';
import 'package:notes_csit/repository/automodel_repository.dart';

class AutoViewModel with ChangeNotifier {
  // AutoViewModel() {
  //   requestApi();
  // }

  final _myrepo = AutoModelRepository();
  ApiResponse<AutoModels> licenseData = ApiResponse.loading();

  SetlicenseData(ApiResponse<AutoModels>data) async{
    // print(" this is from setuser list $licenseData");
    // print(response);
    licenseData = data;
    // print(licenseData.status);
    notifyListeners();
  }

  Future<void> requestApi() async {
    SetlicenseData(ApiResponse.loading());

    try{
      AutoModels licenseData = await _myrepo.requestApiz();
      SetlicenseData(ApiResponse.completed(licenseData));

    }
    catch(e){
      SetlicenseData(ApiResponse.error(e.toString()));

    }
    // _myrepo.requestApiz().then((value) {
    //   // print(" the value is $value");
    //   // SetlicenseData(ApiResponse.completed(licenseData));
    // })
    // .onError((error, stackTrace) {
    //   // print(error);
    //   // SetlicenseData(ApiResponse.error(error.toString()));
    // }
    
  }
}
