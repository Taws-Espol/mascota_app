import 'package:flutter/material.dart';
import 'package:mascota_app/src/themes/color_theme.dart';
import 'package:mascota_app/src/widgets/custom_divider.dart';
import 'package:url_launcher/url_launcher.dart';

class VeterinariasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Veterinarias",
            style: TextStyle(fontSize: 18),
          ),
          CustomDivider(),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                CustomExpansionTile(
                  title: "Vet Axell",
                  subtitle: "12:00 - 14:00",
                  image:
                      "https://images7.alphacoders.com/108/thumb-1920-1081933.jpg",
                ),
                CustomExpansionTile(
                  title: "Vet Axell2",
                  subtitle: "12:00 - 14:00",
                  image:
                      "https://images7.alphacoders.com/108/thumb-1920-1081933.jpg",
                ),
                CustomExpansionTile(
                  title: "Vet Axell3",
                  subtitle: "12:00 - 20:00",
                  image:
                      "https://images7.alphacoders.com/108/thumb-1920-1081933.jpg",
                ),
                CustomExpansionTile(
                  title: "Vet Axell4",
                  subtitle: "12:00 - 18:00",
                  image:
                      "https://images7.alphacoders.com/108/thumb-1920-1081933.jpg",
                ),
                CustomExpansionTile(
                  title: "Vet Axell5",
                  subtitle: "12:00 - 13:00",
                  image:
                      "https://images7.alphacoders.com/108/thumb-1920-1081933.jpg",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}



class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const CustomExpansionTile({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        title: Text(
          this.title,
          style: TextStyle(
              color: ColorTheme.PRIMARY,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        subtitle: Row(
          children: [
            Icon(Icons.access_time_rounded, size: 14),
            SizedBox(width: 5),
            Text(this.subtitle)
          ],
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            this.image,
            fit: BoxFit.cover,
            height: 40,
            width: 40,
          ),
        ),
        children: [
          Container(
            height: 40,
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async {
                    final latitude = "-2.1452844";
                    final longitude = "-79.8942079";
                    final url =
                        "https://www.google.com/maps/search/?api=1&query=$latitude,$longitude";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                  icon: Icon(
                    Icons.location_on,
                    color: ColorTheme.PRIMARY,
                  ),
                ),
                VerticalDivider(thickness: 2),
                IconButton(
                  onPressed: () async {
                    final telf = "+59396058222";
                    if (await canLaunch("tel:$telf")) {
                      await launch("tel:$telf");
                    }
                  },
                  icon: Icon(
                    Icons.phone,
                    color: ColorTheme.PRIMARY,
                  ),
                ),
                VerticalDivider(thickness: 2),
                IconButton(
                  onPressed: () async {
                    final telf = "+59396058222";
                    final url = "https://wa.me/$telf";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                  icon: Icon(
                    Icons.whatsapp,
                    color: ColorTheme.PRIMARY,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
