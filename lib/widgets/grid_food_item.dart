import 'package:flutter/material.dart';
import 'package:food_app/model/food_item_model.dart';

class GridFoodItem extends StatelessWidget {
  final FoodItemModel food;
  const GridFoodItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image.asset(food.imgUrl, fit: BoxFit.cover, height: 100),

          SizedBox(height: 8),
          Text(
            food.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Text(
            'Price: \$${food.price}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
