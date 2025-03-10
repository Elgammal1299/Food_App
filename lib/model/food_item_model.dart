class FoodItemModel {
  final String name;
  final String imgUrl;
  final double price;
  final bool isFavorite;

  FoodItemModel({
    required this.name,
    required this.imgUrl,
    required this.price,
    this.isFavorite = false,
  });
  FoodItemModel copyWith({
    String? name,
    String? imgUrl,
    double? price,
    bool? isFavorite,
  }) {
    return FoodItemModel(
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      price: price ?? this.price,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<FoodItemModel> food = [
  FoodItemModel(
    name: 'Beef Burger',
    imgUrl: 'assets/images/burger.png',
    price: 10.0,
  ),
  FoodItemModel(
    name: 'Chicken Burger',
    imgUrl: 'assets/images/burger.png',
    price: 8.40,
  ),
  FoodItemModel(
    name: 'Cheese Burger',
    imgUrl: 'assets/images/burger.png',
    price: 9.0,
  ),
  FoodItemModel(name: 'Pizza', imgUrl: 'assets/images/pizza.png', price: 11.0),
  FoodItemModel(
    name: 'Chicken Pizza',
    imgUrl: 'assets/images/pizza.png',
    price: 15.0,
  ),
  FoodItemModel(
    name: 'Meat Pizza',
    imgUrl: 'assets/images/pizza.png',
    price: 20.0,
  ),
  FoodItemModel(name: 'Pasta', imgUrl: 'assets/images/pasta.png', price: 7.0),
];
