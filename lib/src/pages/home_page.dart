import 'package:flutter/material.dart';
import 'package:mascota_app/src/pages/lugares_page.dart';
import 'package:mascota_app/src/pages/pets_page.dart';
import 'package:mascota_app/src/pages/veterinarias_page.dart';
import 'package:mascota_app/src/themes/color_theme.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int opcion = 1;
  PageController pageCtrl = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(child: Text("Hola mundo")),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Pet App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: ColorTheme.PRIMARY),
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: ColorTheme.PRIMARY,
          ),
          SizedBox(
            width: 20,
          )
        ],
        // leading: IconButton(
        //   icon:Icon(Icons.menu, color: Colors.black),
        //   onPressed:()=>print("menu")
        // ),
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        controller: pageCtrl,
        onPageChanged: (int index) {
          setState(() {
            opcion = index;
          });
        },
        children: [
          VeterinariasPage(),
          PetsPage(),
          LugaresPage(),
        ],
      ),
      bottomNavigationBar: _CustomNavigationBar(
        opcion: opcion,
        onTap: (int index) {
          setState(() {
            opcion = index;
          });
          pageCtrl.animateToPage(index,
              duration: Duration(milliseconds: 200), curve: Curves.easeIn);
        },
      ),
    );
  }
}

class _CustomNavigationBar extends StatelessWidget {
  const _CustomNavigationBar({
    required this.opcion,
    required this.onTap,
  });

  final int opcion;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: opcion,
      onTap: onTap,
      backgroundColor: ColorTheme.PRIMARY,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: Colors.white,
      selectedItemColor: ColorTheme.SECONDARY,
      iconSize: 28,
      items: [
        BottomNavigationBarItem(
          label: "GPS",
          icon: Icon(Icons.location_on_outlined),
        ),
        BottomNavigationBarItem(
          label: "Pets",
          icon: Icon(Icons.pets_outlined),
        ),
        BottomNavigationBarItem(
          label: "Lugares",
          icon: Icon(Icons.location_city_outlined),
        ),
      ],
    );
  }
}
