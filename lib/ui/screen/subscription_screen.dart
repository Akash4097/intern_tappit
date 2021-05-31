import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

import '../widgets/days_selection_tile.dart';
import '../widgets/product_list_tile.dart';
import '../widgets/quantity_list_tile.dart';
import '../widgets/recharge_topup_tile.dart';
import '../widgets/start_date_tile.dart';

class SubscriptionScreen extends StatefulWidget {
  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  final _itemPrice = 531.0;
  int _quantity = 1;
  int _deliveries = 30;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 4.0,
          title: const Text(
            "Create Subscription",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: _buildProductTile(),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildQuantityTile(),
                      const Divider(
                        thickness: 2.0,
                      ),
                      _buildDaysSelectionTile(),
                      const Divider(
                        thickness: 2.0,
                      ),
                      _buildRechargeTopUpTile(),
                      const Divider(
                        thickness: 2.0,
                      ),
                      _buildStartDateTile(),
                      const Divider(
                        thickness: 2.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2.0,
            ),
            _buildSubscribeButton(context)
          ],
        ),
      ),
    );
  }

  Expanded _buildSubscribeButton(BuildContext context) {
    return Expanded(
      child: ButtonBar(
        children: [
          SizedBox(
            height: 50.0,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "DELIVER ONCE",
                style: TextStyle(color: Colors.green[600]),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
            width: 220.0,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: () {
                CoolAlert.show(
                    context: context,
                    type: CoolAlertType.success,
                    title: "Order Details",
                    text: "₹ ${_itemPrice * _quantity * _deliveries}");
              },
              child: const Text("SUBSCRIBE"),
            ),
          )
        ],
      ),
    );
  }

  void _increaseQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decreaseQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  void _setDelivery(int delivery) {
    setState(() {
      _deliveries = delivery;
    });
  }

  Widget _buildStartDateTile() {
    return StartDateTile();
  }

  Widget _buildRechargeTopUpTile() {
    return RechargeTopUpTile(
      setDelivery: _setDelivery,
      delivery: _deliveries,
    );
  }

  Widget _buildDaysSelectionTile() {
    return DaysSelectionTile();
    //TODO: don't forgot to add scroolling horizontal on pressed
  }

  Widget _buildQuantityTile() {
    return QuantityListTile(
      quantity: _quantity,
      decreaseQuantity: _decreaseQuantity,
      increaseQuantity: _increaseQuantity,
    );
  }

  Widget _buildProductTile() {
    return ProductListTile();
  }
}
