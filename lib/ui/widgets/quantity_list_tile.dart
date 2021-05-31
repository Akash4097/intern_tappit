import 'package:flutter/material.dart';

class QuantityListTile extends StatefulWidget {
  final Function increaseQuantity;
  final int quantity;
  final Function decreaseQuantity;

  const QuantityListTile(
      {Key? key,
      required this.increaseQuantity,
      required this.quantity,
      required this.decreaseQuantity})
      : super(key: key);
  @override
  _QuantityListTileState createState() => _QuantityListTileState();
}

class _QuantityListTileState extends State<QuantityListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      alignment: Alignment.center,
      child: ListTile(
        leading: const Icon(
          Icons.shopping_bag,
        ),
        title: const Text("Quantity"),
        subtitle: const Text("per day"),
        trailing: Container(
          width: 130.0,
          alignment: Alignment.center,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(width: 1.5, color: Colors.green.shade500),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: () {
                if (widget.quantity > 0) {
                  setState(() {
                    widget.decreaseQuantity();
                  });
                }
              },
              color:
                  widget.quantity != 0 ? Colors.green[600] : Colors.grey[600],
              icon: const Icon(Icons.remove),
            ),
            Text(
              "${widget.quantity}",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            IconButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: () {
                setState(() {
                  widget.increaseQuantity();
                });
              },
              color: Colors.green[700],
              icon: const Icon(Icons.add),
            ),
          ]),
        ),
      ),
    );
  }
}
