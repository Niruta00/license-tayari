// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:notes_csit/models/testexammodel.dart';
// // import 'package:nvnm/model/model.dart';

// // class ApiServices {
//   Future<AutoModels>> getData() async {
//   <AutoModels> allUsers = [];
//     String baseUrl = "https:localhost/";

//     try {
//       var response = await http.get(Uri.parse("${baseUrl}lapi/public/api/category/1 "));

//       var jsonData = json.decode(response.body);

//       for (int i = 0; i < jsonData['data'].length; i++) {
//         AutoModels users = AutoModels.fromJson(jsonData['data'][i]);
//         allUsers.add(users);
//       }
//     } catch (e) {}

//     return allUsers;
//   }
// }