import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
          items: [
            Image.asset("images/likhit.png", fit: BoxFit.fill),
            Image.asset("images/license22.jpg", fit: BoxFit.fill),
            Image.asset("images/license11.jpg", fit: BoxFit.fill),
            Image.asset("images/eyesvs.jpg", fit: BoxFit.fill)
          ],
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 2,
          ),
        ),
        ElevatedButton(
          onPressed: () => buttonCarouselController.nextPage(
              duration: Duration(milliseconds: 300), curve: Curves.linear),
          child: Text('→'),
        )
      ]);
}
