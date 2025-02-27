import 'package:flutter/material.dart';
import 'package:food_app/model/food_item_model.dart';

class GridFoodItem extends StatefulWidget {
  final int foodIndex;
  const GridFoodItem({super.key, required this.foodIndex});

  @override
  State<GridFoodItem> createState() => _GridFoodItemState();
}

class _GridFoodItemState extends State<GridFoodItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  food[widget.foodIndex].imgUrl,
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: InkWell(
                    onTap:
                        () => setState(() {
                          food[widget.foodIndex] = food[widget.foodIndex]
                              .copyWith(
                                isFavorite: !food[widget.foodIndex].isFavorite,
                              );
                        }),
                    child: Icon(
                      food[widget.foodIndex].isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 8),
          Text(
            food[widget.foodIndex].name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Text(
            'Price: \$${food[widget.foodIndex].price}',
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
