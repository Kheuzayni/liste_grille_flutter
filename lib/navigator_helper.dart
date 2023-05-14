import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liste_grille/detail_page.dart';
import 'package:liste_grille/place.dart';

class NavigatorHelper {

  toDetail({
    required BuildContext context,
    required Place place,
  }) {
    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) {
              return DetailPage(place: place);
            })
    );
  }

}