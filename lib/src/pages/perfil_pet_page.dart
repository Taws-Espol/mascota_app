import 'package:flutter/material.dart';
import 'package:mascota_app/src/themes/color_theme.dart';

class PerfilPetPage extends StatelessWidget {
  const PerfilPetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final nombre = arguments["nombre"];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Perfil",
            style: TextStyle(color: ColorTheme.PRIMARY),
          ),
          iconTheme: IconThemeData(color: ColorTheme.PRIMARY),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(width: size.width),
            CircleAvatar(
              radius: 80,
              backgroundColor: ColorTheme.PRIMARY,
            ),
            SizedBox(height: 10),
            Text(
              nombre,
              style: TextStyle(color: ColorTheme.PRIMARY, fontSize: 24),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.20)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(),
                        CircleAvatar(),
                        CircleAvatar()
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
