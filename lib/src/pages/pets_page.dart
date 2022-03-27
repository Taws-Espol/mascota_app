import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mascota_app/src/routes/rutas.dart';
import 'package:mascota_app/src/themes/color_theme.dart';
import 'package:mascota_app/src/widgets/custom_divider.dart';

class PetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mascotas",
              style: TextStyle(fontSize: 18),
            ),
            CustomDivider(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Center(
                  child: Wrap(
                    spacing: 40,
                    runSpacing: 30,
                    alignment: WrapAlignment.center,
                    children: [
                      CustomMascota(nombre: "Lili"),
                      CustomMascota(nombre: "Nino"),
                      CustomMascota(nombre: "Nila"),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CustomMascota extends StatelessWidget {
  final String nombre;

  const CustomMascota({
    required this.nombre,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        Rutas.PERFIL_PET,
        arguments: {
          "nombre": nombre,
        },
      ),
      borderRadius: BorderRadius.circular(40),
      child: Column(
        children: [
          CircleAvatar(
            radius: 57,
            backgroundColor: ColorTheme.PRIMARY,
          ),
          SizedBox(height: 8),
          Text(
            this.nombre,
            style: TextStyle(
              color: ColorTheme.PRIMARY,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
