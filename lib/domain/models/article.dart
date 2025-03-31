import 'category.dart';

class Article {
  int? id;
  String? title;
  String? slug;
  String? photo;
  String? auteur;
  String? content;
  int? nbrComment;
  int? nbLikes;
  List<Category>? category;
  List<dynamic>? tags;
  String? dateCreation;
  DateTime? lastModif;

  Article({
    this.id,
    this.title,
    this.slug,
    this.photo,
    this.auteur,
    this.content,
    this.nbrComment,
    this.nbLikes,
    this.category,
    this.tags,
    this.dateCreation,
    this.lastModif,
  });

  Article copyWith({
    int? id,
    String? title,
    String? slug,
    String? photo,
    String? auteur,
    String? content,
    int? nbrComment,
    int? nbLikes,
    List<Category>? category,
    List<dynamic>? tags,
    String? dateCreation,
    DateTime? lastModif,
  }) =>
      Article(
        id: id ?? this.id,
        title: title ?? this.title,
        slug: slug ?? this.slug,
        photo: photo ?? this.photo,
        auteur: auteur ?? this.auteur,
        content: content ?? this.content,
        nbrComment: nbrComment ?? this.nbrComment,
        nbLikes: nbLikes ?? this.nbLikes,
        category: category ?? this.category,
        tags: tags ?? this.tags,
        dateCreation: dateCreation ?? this.dateCreation,
        lastModif: lastModif ?? this.lastModif,
      );

  factory Article.fromMap(Map<String, dynamic> json) => Article(
    id: json["id"],
    title: json["title"],
    slug: json["slug"],
    photo: json["photo"],
    auteur: json["auteur"],
    content: json["content"],
    nbrComment: json["nbr_comment"],
    nbLikes: json["nb_likes"],
    category: json["category"] == null ? [] : List<Category>.from(json["category"]!.map((x) => Category.fromMap(x))),
    tags: json["tags"] == null ? [] : List<dynamic>.from(json["tags"]!.map((x) => x)),
    dateCreation: json["date_creation"],
    lastModif: json["last_modif"] == null ? null : DateTime.parse(json["last_modif"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "slug": slug,
    "photo": photo,
    "auteur": auteur,
    "content": content,
    "nbr_comment": nbrComment,
    "nb_likes": nbLikes,
    "category": category == null ? [] : List<dynamic>.from(category!.map((x) => x.toMap())),
    "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
    "date_creation": dateCreation,
    "last_modif": lastModif?.toIso8601String(),
  };
}