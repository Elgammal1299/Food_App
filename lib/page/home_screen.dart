import 'package:flutter/material.dart';
import 'package:food_app/model/food_item_model.dart';
import 'package:food_app/widgets/grid_food_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Food App'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        drawer: Drawer(child: Center(child: Text('Ahmed'))),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/classic_burger.jpg',
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Classic',
              //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //     ),
              //     Text(
              //       'See All',
              //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: food.length,
                  itemBuilder: (context, index) {
                    return GridFoodItem(food: food[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
