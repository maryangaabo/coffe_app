import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final Color? color;
  final void Function()? onPressed;

  const ItemCategory({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.brown),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(53),
            bottomLeft: Radius.circular(53),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Item image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Image.asset(
                imagePath,
                height: 90,
              ),
            ),
            // Item name
            Text(
              itemName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            // Price button
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: MaterialButton(
                onPressed: onPressed,
                color: color ?? Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$$itemPrice',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    // Icon(Icons.star),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
