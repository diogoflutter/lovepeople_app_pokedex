
class Pokemon {
  List<String> abilities = [];
  String detailPageURL = '';
  int weight = 0;
  List<String> weakness = [];
  String number = '';
  int height = 0;
  String collectiblesSlug = '';
  String featured = '';
  String slug = '';
  String description = '';
  String name = '';
  String thumbnailAltText = '';
  String thumbnailImage = '';
  int id = 0;
  List<String> type = [];

  Pokemon(
      {required this.abilities,
      required this.detailPageURL,
      required this.weight,
      required this.weakness,
      required this.number,
      required this.height,
      required this.collectiblesSlug,
      required this.featured,
      required this.slug,
      required this.description,
      required this.name,
      required this.thumbnailAltText,
      required this.thumbnailImage,
      required this.id,
      required this.type});

  Pokemon.fromJson(Map<String, dynamic> json) {
    abilities = json['abilities'].cast<String>();
    detailPageURL = json['detailPageURL'];
    weight = json['weight'];
    weakness = json['weakness'].cast<String>();
    number = json['number'];
    height = json['height'];
    collectiblesSlug = json['collectibles_slug'];
    featured = json['featured'];
    slug = json['slug'];
    description = json['description'];
    name = json['name'];
    thumbnailAltText = json['thumbnailAltText'];
    thumbnailImage = json['thumbnailImage'];
    id = json['id'];
    type = json['type'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['abilities'] = this.abilities;
    data['detailPageURL'] = this.detailPageURL;
    data['weight'] = this.weight;
    data['weakness'] = this.weakness;
    data['number'] = this.number;
    data['height'] = this.height;
    data['collectibles_slug'] = this.collectiblesSlug;
    data['featured'] = this.featured;
    data['slug'] = this.slug;
    data['description'] = this.description;
    data['name'] = this.name;
    data['thumbnailAltText'] = this.thumbnailAltText;
    data['thumbnailImage'] = this.thumbnailImage;
    data['id'] = this.id;
    data['type'] = this.type;
    return data;
  }
}