import 'package:flutter/material.dart';
import 'package:mascota_app/src/pages/home_page.dart';

class Rutas {
  static const INIT = '/home';

  static final Map<String, Widget Function(BuildContext)> appRoutes = {
    INIT: (context) => HomePage(),
  };
}
