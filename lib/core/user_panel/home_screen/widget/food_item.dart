
import 'package:flutter/material.dart';

class FoodItems extends StatelessWidget {
  const FoodItems({
    super.key, required this.imgPath, required this.foodName, required this.foodComments, required this.price,
  });
  final String imgPath;
  final String foodName;
  final String foodComments;
  final String price;


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final media=MediaQuery.of(context).size;
    return Card(
      elevation: 2,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imgPath,
              height:media.height/6.4 ,
              width: media.height/6.4,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Text(
              foodName,
              style: theme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Text(
              foodComments,
              style: theme.bodySmall?.copyWith(color: Colors.black38),
            ),
            const SizedBox(height: 10),
            Text("\$$price", style: theme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
