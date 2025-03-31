
import '../models/article.dart';

abstract class ArticleService {
  Future<void> creerArticle();

  Future<List<Article>> recupererListArticles();
}
