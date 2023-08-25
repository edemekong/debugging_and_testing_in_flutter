// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  final String id;
  final String name;
  final String image;
  final int amount;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.amount,
    required this.description,
  });

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      amount: map['amount'] as int,
      description: map['description'] as String,
    );
  }

  Product copyWith({
    String? id,
    String? name,
    String? image,
    int? amount,
    String? description,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      amount: amount ?? this.amount,
      description: description ?? this.description,
    );
  }
}
