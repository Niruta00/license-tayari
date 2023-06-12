import 'package:flutter/material.dart';
import 'package:notes_csit/models/traffic_Symbols.dart';
import 'package:notes_csit/utils/routes/routes_name.dart';
import 'package:notes_csit/view/traffic_signal/traffic_symbol.dart';

class TrafficSymbolHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _containers(String image, String name, VoidCallback ontap) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: ontap,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)),
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.45,
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 98,
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(" Traffic STrafficSymbol"),
      ),
      body: Wrap(
        children: [
          _containers("images/img/4.png", "आदेश दिने चिन्हहरु", () {
               Navigator.pushNamed(context, RoutesName.trafficSym,
                  arguments: {
                    'data': jankarimulakchinha
                  });

            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => TrafficSymbol(
            //               // data: aadesmulak,
            //             )));
          }),
          _containers("images/img/52.png", "चेतना दिने चिन्हहरु ", () {

            Navigator.pushNamed(context, RoutesName.trafficSym,
                  arguments: {
                    'data': chetanamulak
                  });
            // Navigator.push(

            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => TrafficSymbol(
            //               // data: chetanamulak,
            //             )));
          }),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 85),
            child:
                _containers("images/img/85.png", "जानकारी दिने चिन्हहरु ", () {
              Navigator.pushNamed(context, RoutesName.trafficSym,
                  arguments: {
                    'data': jankarimulakchinha
                  });
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => TrafficSymbol(
              //               data: jankarimulakchinha,
              //             )));
            }),
          ),
        ],
      ),
    );
  }
}
