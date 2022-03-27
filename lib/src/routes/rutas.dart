import 'package:flutter/material.dart';
import 'package:mascota_app/src/pages/home_page.dart';
import 'package:mascota_app/src/pages/perfil_pet_page.dart';

class Rutas {
  static const INIT = '/';
  static const PERFIL_PET = "/pet";

  static final Map<String, Widget Function(BuildContext)> appRoutes = {
    INIT: (context) => HomePage(),
    PERFIL_PET: (context) => PerfilPetPage(),
  };
}
