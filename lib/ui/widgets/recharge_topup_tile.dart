import 'package:flutter/material.dart';
import 'package:tappit/ui/widgets/delivery_drop_down_button.dart';

class RechargeTopUpTile extends StatefulWidget {
  final Function setDelivery;
  final int delivery;

  const RechargeTopUpTile(
      {Key? key, required this.setDelivery, required this.delivery})
      : super(key: key);
  @override
  _RechargeTopUpTileState createState() => _RechargeTopUpTileState();
}

class _RechargeTopUpTileState extends State<RechargeTopUpTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100.0,
      child: ListTile(
        leading: const Icon(Icons.replay),
        title: const Text("Recharge/Top up"),
        trailing: const Icon(Icons.navigate_next),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "${widget.delivery} Deliveries",
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.black),
          ),
        ),
        onTap: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Select Deliveries",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                  ),
                  DeliveryDropDownButton(
                      delivery: widget.delivery,
                      onChanged: (int value) {
                        setState(() {
                          widget.setDelivery(value);
                        });
                      }),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
