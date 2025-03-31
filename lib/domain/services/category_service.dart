import 'package:blog/domain/models/category.dart';

abstract class CategoryService {
  Future<List<Category>> recupererListCategories();

  Future<void> creerCategorie();
}
