class ProductModel {
  final int id;
  final String title;
  final double price;
  final List<String> images;
  final String thumbnail;
  final String description;
  // final List<String> images;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.images,
    required this.description,
    required this.thumbnail,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'] as String,
      thumbnail: json['thumbnail'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );
  }
}
