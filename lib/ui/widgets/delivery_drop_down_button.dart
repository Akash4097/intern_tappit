import 'package:flutter/material.dart';

class DeliveryDropDownButton extends StatelessWidget {
  final int delivery;
  final Function onChanged;

  const DeliveryDropDownButton(
      {Key? key, required this.delivery, required this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton<int>(
            value: delivery,
            onChanged: (value) {
              onChanged(value);
              Navigator.pop(context);
            },
            items: const [
              DropdownMenuItem(
                value: 10,
                child: Text(
                  "10 Deliveries",
                ),
              ),
              DropdownMenuItem(
                value: 20,
                child: Text(
                  "20 Deliveries",
                ),
              ),
              DropdownMenuItem(
                value: 30,
                child: Text(
                  "30 Deliveries",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
