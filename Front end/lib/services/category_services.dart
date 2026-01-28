import 'package:flutter_application_1/models/category.dart';

abstract class CategoryServices {
  Future<Category> getCategory(int id);
}