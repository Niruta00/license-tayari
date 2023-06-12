import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_csit/models/traffic_Symbols.dart';
import 'package:notes_csit/utils/routes/routes_name.dart';
import 'package:notes_csit/view/check_license/check_license.dart';
import 'package:notes_csit/view/check_license/check_results.dart';
import 'package:notes_csit/view/check_license/check_tax.dart';
import 'package:notes_csit/view/check_license/license_print_checking.dart';
import 'package:notes_csit/view/examquizScreen.dart';
import 'package:notes_csit/view/home_screens.dart';
import 'package:notes_csit/view/imp_doc_screens.dart';
import 'package:notes_csit/view/question/qna.dart';
import 'package:notes_csit/view/register.screen.dart';
import 'package:notes_csit/view/testExamscreens/quizscreen.dart';
import 'package:notes_csit/view/traffic_signal/traffic_home.dart';
import 'package:notes_csit/view/traffic_signal/traffic_symbol.dart';
import 'package:notes_csit/view/vision_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final argume = settings.arguments;
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreens());
      case RoutesName.Impdoc:
        return MaterialPageRoute(
            builder: (BuildContext context) => ImpDocScreen());

      case RoutesName.register:
        return MaterialPageRoute(
            builder: (BuildContext context) => RegisterScreen());

      case RoutesName.vision:
        return MaterialPageRoute(
            builder: (BuildContext context) => VisionScreen());

      case RoutesName.trafficHome:
        return MaterialPageRoute(
            builder: (BuildContext context) => TrafficSymbolHome());

      case RoutesName.qna:
        return MaterialPageRoute(
            builder: (BuildContext context) => QNAScreen());


            case RoutesName.quizz:
        final argument = settings.arguments;

        return MaterialPageRoute(
          

            builder: (BuildContext context) => QuizzScreens(
              // arguements: argument as Map,
              


            ));

 case RoutesName.checkLicense:
        return MaterialPageRoute(
            builder: (BuildContext context) => CheckLicenseScreen());
            case RoutesName.checkResult:
        return MaterialPageRoute(
            builder: (BuildContext context) => CheckResultsScreen());
            case RoutesName.checkTax:
        return MaterialPageRoute(
            builder: (BuildContext context) => CheckTaxScreen());
            case RoutesName.licensePrint:
        return MaterialPageRoute(
            builder: (BuildContext context) => LicensePrintScreen());
            

      case RoutesName.trafficSym:
        final argument = settings.arguments;
        return MaterialPageRoute(
            builder: (BuildContext context) => TrafficSymbol(
                  // data: aadesmulak,
                  arguements: argument as Map,
                ));

      // case RoutesName.trafficHome:
      //   final argument = settings.arguments;
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => TrafficSymbolHome(
      //         args:argument as Map,
      //             data: [

      //             ],
      //           ));

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("no Route defined"),
            ),
          );
        });
    }
  }
}
