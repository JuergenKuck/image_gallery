import 'package:flutter/material.dart';
import 'package:image_gallery/src/gallery.dart';
import 'package:image_gallery/utility/app_colors.dart';
import 'package:image_gallery/utility/grid_helper.dart';

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
        borderRadius: BorderRadius.all(Radius.circular(0)),
      ),
      child: Column(
        children: [
          //                  Expanded(
          Padding(
            padding: EdgeInsets.only(left: gridHelper.e, right: gridHelper.e, top: gridHelper.e),
            child: SizedBox(
              width: gridHelper.width,
              height: gridHelper.height - 8, //das gridViw ist genau um 8 Pixel weniger hoch, als gedacht
              child: Image.asset(
                height: gridHelper.height - 8,
                galleryItem.imagePath,
                fit: BoxFit.contain, //fit: BoxFit.contain,
              ),
            ),
          ),
          Text(galleryItem.imageTitle,
              overflow: TextOverflow.ellipsis, maxLines: 1, style: TextStyle(fontSize: gridHelper.et / 1.5)),
        ],
      ),
    );
  }
}
