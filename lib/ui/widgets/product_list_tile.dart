import 'package:flutter/material.dart';

class ProductListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      color: Colors.lightBlue[100],
      height: 150.0,
      child: Row(children: [
        Expanded(
          child: Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/product.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tata Gold Tea(1 Kg)",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.grey[600]),
                  children: const [
                    TextSpan(
                      text: "₹ 531",
                      style: TextStyle(fontSize: 17.0, color: Colors.black),
                    ),
                    TextSpan(
                      text: " ₹ 625.00",
                      style: TextStyle(decoration: TextDecoration.lineThrough),
                    ),
                    TextSpan(
                      text: " .1 pkt",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
