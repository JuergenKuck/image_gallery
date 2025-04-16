import 'package:flutter/material.dart';
import 'package:image_gallery/src/data/database_repository.dart';
import 'package:image_gallery/src/features/gallery/presentation/detail_screen.dart';
import 'package:image_gallery/src/features/gallery/domain/gallery.dart';
import 'package:image_gallery/src/common/image_card.dart';
import 'package:image_gallery/src/theme/app_colors.dart';
import 'package:image_gallery/src/common/grid_helper.dart';

GridHelper gh = GridHelper();

class ImageScreen extends StatelessWidget {
  final DatabaseRepository repository;

  const ImageScreen({
    super.key,
    required this.repository,
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
            crossAxisCount: 2,
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

    for (GalleryItem galleryItem in repository.getGalleryItems()) {
      myWidgets.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(galleryItem: galleryItem)),
            );
          },
          child: Hero(
            tag: galleryItem.imagePath,
            child: ImageCard(
              galleryItem: galleryItem,
              gridHelper: gh,
            ),
          ),
        ),
      );
    }

    return myWidgets;
  }
}
