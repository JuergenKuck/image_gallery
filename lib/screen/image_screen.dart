import 'package:flutter/material.dart';
import 'package:image_gallery/src/gallery.dart';
import 'package:image_gallery/utility/app_colors.dart';
import 'package:image_gallery/utility/box_decoration_blue.dart';
import 'package:image_gallery/utility/box_decoration_orange.dart';

double pd = 0;
double pd16 = 0;

class ImageScreen extends StatelessWidget {
  const ImageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    pd = MediaQuery.of(context).size.width / 616;
    pd16 = pd * 16;
    return Container(
      decoration: boxDecorationBlue(),
      child: Padding(
        padding: EdgeInsets.all(pd16),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 632 / 419,
          mainAxisSpacing: pd16 / 2,
          crossAxisSpacing: pd16 / 2,
          children: buildImages(context),
        ),
      ),
    );
  }

  List<Widget> buildImages(BuildContext context) {
    List<Widget> myWidgets = [];

    for (GalleryItem galleryItem in galleryItems) {
      myWidgets.add(
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Column(
                    children: [
                      Expanded(child: Image.asset(galleryItem.imagePath)),
                      Text(galleryItem.imageDescription),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Schließt den Dialog
                      },
                      child: Text("Schließen"),
                    ),
                  ],
                );
              },
            );
          },
          child: Card(
            elevation: 10,
            color: AppColors.backBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(pd * 16)),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: pd * 8 / 0.6),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(pd * 12)),
                        child: Image.asset(
                          galleryItem.imagePath,
                          fit: BoxFit.contain, //fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Text(galleryItem.imageTitle, style: TextStyle(fontSize: 13.68 * pd)),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return myWidgets;
  }
}
