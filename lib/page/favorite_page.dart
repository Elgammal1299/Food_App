import 'package:flutter/material.dart';
import 'package:food_app/model/food_item_model.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final favoriteFood = food.where((element) => element.isFavorite).toList();
    return Padding(
      padding: const EdgeInsets.all(16.0),

      child: ListView.builder(
        itemCount: favoriteFood.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    favoriteFood[index].imgUrl,
                    fit: BoxFit.contain,
                    height: 70,
                    width: 100,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          favoriteFood[index].name,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),

                        Text(
                          'Price: \$ ${food[index].price}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite),
                    color: Colors.deepOrange,
                    iconSize: 30,
                    onPressed: () {
                      final targetedItem = favoriteFood[index];
                      int targetIndex = food.indexOf(targetedItem);
                      setState(() {
                        food[targetIndex] = food[targetIndex].copyWith(
                          isFavorite: false,
                        );
                        favoriteFood.remove(targetedItem);
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
