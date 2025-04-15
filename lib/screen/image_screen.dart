import 'package:flutter/material.dart';
import 'package:image_gallery/src/gallery.dart';
import 'package:image_gallery/utility/app_colors.dart';
import 'package:image_gallery/utility/box_decoration_blue.dart';
import 'package:image_gallery/utility/grid_helper.dart';

double pd = 0;
double pd16 = 0;

GridHelper gh = GridHelper();

class ImageScreen extends StatelessWidget {
  const ImageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    pd = MediaQuery.of(context).size.width / 616;
    pd16 = pd * 8;
    return Container(
      decoration: boxDecorationBlue(),
      child: Padding(
        padding: EdgeInsets.all(pd16),
        child: LayoutBuilder(builder: (context, constraints) {
          gh = GridHelper(
            constraints: constraints,
            crossAxisCount: 2,
            ePerc: 5,
            ft: 2,
            quotBH: 1400 / 742,
          );
          return GridView.count(
            crossAxisCount: gh.crossAxisCount,
            childAspectRatio: gh.aspectRatio,
            mainAxisSpacing: gh.spacing,
            crossAxisSpacing: gh.spacing,
            children: buildImages(context),
          );
        }),
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
            child: Stack(
              children: [
                //                  Expanded(
                Container(
                  color: AppColors.green500,
                  width: gh.width,
                  height: gh.height,
                ),
                /*
                      child: Image.asset(
                        galleryItem.imagePath,
                        fit: BoxFit.contain, //fit: BoxFit.contain,
            */

                //                      ),
                //                  ),
                Text(galleryItem.imageTitle, style: TextStyle(fontSize: 13.68 * pd)),
              ],
            ),
          ),
        ),
      );
    }

    return myWidgets;
  }
}
