import 'package:image_gallery/src/features/gallery/domain/gallery.dart';

abstract class DatabaseRepository {
  List<GalleryItem> getGalleryItems();
  String getProfile();
}
