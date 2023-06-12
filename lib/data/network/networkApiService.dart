import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';

import 'package:http/http.dart' as http;
import 'package:notes_csit/app_excaptions.dart';
import 'package:notes_csit/data/network/baseApiService.dart';
import 'package:notes_csit/models/testexammodel.dart';

class NetworkApiService extends BaseApiServices {
  @override
  Future getGetRequest(String url) async {
    print(url);
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url));

      print("the ststu code is ${response.statusCode}");
      responseJson = returnResponse(response);

      print(response);
    } on SocketException catch (e) {
      // print(e.message);
      // print("fetcg data exception");
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  dynamic returnResponse(http.Response response) {
    print(response.statusCode);
    switch (response.statusCode) {
      case 200:
      case 201:
       dynamic jsonData = Utf8Decoder().convert(response.bodyBytes);
        dynamic responseJson = json.decode(jsonData);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 500:
      case 404:
        throw UnauthorizedException(response.body.toString());
      default:
        throw FetchDataException(
            'Error occured while communicating with server' +
                'with status code' +
                response.statusCode.toString());
    }
  }
}
