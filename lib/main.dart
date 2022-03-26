
import 'package:flutter/material.dart';
import 'package:mascota_app/src/routes/rutas.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Rutas.appRoutes,
      debugShowCheckedModeBanner: false,
      title: 'Mascota App',
      initialRoute: Rutas.INIT,
    );
  }


}

