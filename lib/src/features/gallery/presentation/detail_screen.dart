import 'package:flutter/material.dart';
import 'package:image_gallery/src/features/gallery/domain/gallery.dart';
import 'package:image_gallery/src/common/image_card.dart';
import 'package:image_gallery/src/theme/app_colors.dart';
import 'package:image_gallery/src/common/grid_helper.dart';

GridHelper gh = GridHelper();

class DetailScreen extends StatelessWidget {
  GalleryItem galleryItem;

  DetailScreen({super.key, required this.galleryItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          title: Text("${galleryItem.imageTitle} - Details"),
          backgroundColor: AppColors.orange300,
        ),
      ),
      body: Container(
        color: AppColors.orange100,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            spacing: 8,
            children: [
              LayoutBuilder(builder: (context, constraints) {
                gh = GridHelper(
                  constraints: constraints,
                  crossAxisCount: 1,
                  ePerc: 2.5,
                  ft: 6,
                  quotBH: 1200 / 742,
                  spacingRelatedPerc: 0,
                );
                return Hero(
                  tag: galleryItem.imagePath,
                  child: ImageCard(
                    galleryItem: galleryItem,
                    gridHelper: gh,
                  ),
                );
              }),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  galleryItem.imageDescription,
                  style: TextStyle(color: AppColors.black, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
