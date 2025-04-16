import 'package:flutter/material.dart';
import 'package:image_gallery/src/features/gallery/domain/gallery.dart';
import 'package:image_gallery/src/theme/app_colors.dart';
import 'package:image_gallery/src/common/grid_helper.dart';

class ImageCard extends StatelessWidget {
  final GalleryItem galleryItem;
  final GridHelper gridHelper;

  const ImageCard({
    super.key,
    required this.galleryItem,
    required this.gridHelper,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: AppColors.backBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(gridHelper.e)),
      ),
      child: Column(
        children: [
          //                  Expanded(
          Padding(
            padding: EdgeInsets.only(left: gridHelper.e, right: gridHelper.e, top: gridHelper.e),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(gridHelper.e / 2)),
              child: Image.asset(
                height: gridHelper.height - 8, // s.o.
                galleryItem.imagePath,
                fit: BoxFit.contain, //fit: BoxFit.contain,
              ),
            ),
          ),
          Text(galleryItem.imageTitle,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(color: AppColors.black, fontSize: gridHelper.et / 2)),
        ],
      ),
    );
  }
}
