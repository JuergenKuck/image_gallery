import 'package:flutter/material.dart';
import 'package:image_gallery/screen/detail_screen.dart';
import 'package:image_gallery/src/gallery.dart';
import 'package:image_gallery/src/image_card.dart';
import 'package:image_gallery/utility/app_colors.dart';
import 'package:image_gallery/utility/grid_helper.dart';

GridHelper gh = GridHelper();

class ImageScreen extends StatelessWidget {
  const ImageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.orange100,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: LayoutBuilder(builder: (context, constraints) {
          gh = GridHelper(
            constraints: constraints,
            crossAxisCount: 3,
            ePerc: 2.5,
            ft: 6,
            quotBH: 1200 / 742,
            spacingRelatedPerc: 0,
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(galleryItem: galleryItem)),
            );
          },
          child: ImageCard(
            galleryItem: galleryItem,
            gridHelper: gh,
          ),
        ),
      );
    }

    return myWidgets;
  }
}
