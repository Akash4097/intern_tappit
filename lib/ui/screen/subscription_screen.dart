import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
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
                      _buildQuantityTile(context),
                      Divider(
                        thickness: 2.0,
                      ),
                      _buildDaysSelectionTile(),
                      Divider(
                        thickness: 2.0,
                      ),
                      _buildRechargeTopUpTile(),
                      Divider(
                        thickness: 2.0,
                      ),
                      _buildStartDateTile(),
                      Divider(
                        thickness: 2.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 2.0,
            ),
            Expanded(
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
                        // backgroundColor: MaterialStateColor(),
                      ),
                      onPressed: () {},
                      child: Text("SUBSCRIBE"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStartDateTile() {
    return Container(
      height: 100.0,
      child: ListTile(
        leading: Icon(Icons.calendar_today),
        title: Text("Start Date"),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "Tomorrow",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.black),
          ),
        ),
        trailing: Icon(Icons.navigate_next),
      ),
    );
  }

  Widget _buildRechargeTopUpTile() {
    return Container(
      alignment: Alignment.center,
      height: 100.0,
      child: ListTile(
        leading: Icon(Icons.replay),
        title: Text("Recharge/Top up"),
        trailing: Icon(Icons.navigate_next),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "30 Deliveries",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _buildDaysSelectionTile() {
    return Container(
      alignment: Alignment.center,
      height: 100.0,
      child: ListTile(
        leading: Icon(Icons.autorenew_rounded),
        title: Row(
          children: [
            Text("Repeat"),
            TextButton(
              onPressed: () {},
              child: Text("DAILY"),
            )
          ],
        ),
        subtitle: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ChoiceChip(
                selected: true,
                selectedColor: Colors.green[300],
                label: Text(
                  "M",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ChoiceChip(
                selected: true,
                selectedColor: Colors.green[300],
                label: Text(
                  "T",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ChoiceChip(
                selected: true,
                selectedColor: Colors.green[300],
                label: Text(
                  "W",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ChoiceChip(
                selected: true,
                selectedColor: Colors.green[300],
                label: Text(
                  "T",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ChoiceChip(
                selected: true,
                selectedColor: Colors.green[300],
                label: Text(
                  "F",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ChoiceChip(
                selected: true,
                selectedColor: Colors.green[300],
                label: Text(
                  "S",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ChoiceChip(
                selected: true,
                selectedColor: Colors.green[300],
                label: Text(
                  "S",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuantityTile(BuildContext context) {
    return Container(
      height: 100.0,
      alignment: Alignment.center,
      child: ListTile(
        leading: const Icon(
          Icons.shopping_bag,
        ),
        title: Text("Quantity"),
        subtitle: Text("per day"),
        trailing: Container(
          width: 130.0,
          alignment: Alignment.center,
          height: 40.0,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: () {},
              icon: Icon(Icons.remove),
            ),
            Text(
              "0",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            IconButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: () {},
              color: Colors.green[600],
              icon: Icon(Icons.add),
            ),
          ]),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(width: 1.5, color: Colors.green.shade600),
          ),
        ),
      ),
    );
  }

  Widget _buildProductTile() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      color: Colors.lightBlue[100],
      height: 150.0,
      child: Row(children: [
        Expanded(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
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
              Text(
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
