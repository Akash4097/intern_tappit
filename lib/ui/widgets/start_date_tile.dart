import 'package:flutter/material.dart';

class StartDateTile extends StatefulWidget {
  @override
  _StartDateTileState createState() => _StartDateTileState();
}

class _StartDateTileState extends State<StartDateTile> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100.0,
      child: ListTile(
        leading: const Icon(Icons.calendar_today),
        title: const Text("Start Date"),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            _selectedDate.toLocal().toString().split(' ')[0],
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.black),
          ),
        ),
        trailing: const Icon(Icons.navigate_next),
        onTap: () => _selectDate(context),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    bool _decideWhichDayToEnable(DateTime day) {
      if (day.isAfter(DateTime.now().subtract(const Duration(days: 1)))) {
        return true;
      }
      return false;
    }

    final pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2100),
        selectableDayPredicate: _decideWhichDayToEnable);

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }
}
