import 'package:flutter/material.dart';

class DaysSelectionTile extends StatefulWidget {
  @override
  _DaysSelectionTileState createState() => _DaysSelectionTileState();
}

class _DaysSelectionTileState extends State<DaysSelectionTile> {
  bool _mondayChip = false;
  bool _tudesdayChip = false;
  bool _wednesdayChip = false;
  bool _thursdayChip = false;
  bool _fridayChip = false;
  bool _saturdayChip = false;
  bool _sundayChip = false;
  bool _repeat = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100.0,
      child: ListTile(
        leading: const Icon(Icons.autorenew_rounded),
        title: Row(
          children: [
            const Text("Repeat"),
            TextButton(
              onPressed: () {
                setState(() {
                  _repeat = !_repeat;
                  _toggleDays();
                });
              },
              child: Text(
                "DAILY",
                style: TextStyle(color: _repeat ? Colors.blue : Colors.grey),
              ),
            )
          ],
        ),
        subtitle: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildChoiceDayChip(
                onSelect: (value) {
                  setState(() {
                    _mondayChip = value;
                    _repeat = false;
                    _checkRepeat();
                  });
                },
                label: "M",
                selected: _mondayChip,
              ),
              _buildChoiceDayChip(
                onSelect: (value) {
                  setState(() {
                    _tudesdayChip = value;
                    _repeat = false;
                    _checkRepeat();
                  });
                },
                label: "T",
                selected: _tudesdayChip,
              ),
              _buildChoiceDayChip(
                onSelect: (value) {
                  setState(() {
                    _wednesdayChip = value;
                    _repeat = false;
                    _checkRepeat();
                  });
                },
                label: "W",
                selected: _wednesdayChip,
              ),
              _buildChoiceDayChip(
                onSelect: (value) {
                  setState(() {
                    _thursdayChip = value;
                    _repeat = false;
                    _checkRepeat();
                  });
                },
                label: "T",
                selected: _thursdayChip,
              ),
              _buildChoiceDayChip(
                onSelect: (value) {
                  setState(() {
                    _fridayChip = value;
                    _repeat = false;
                    _checkRepeat();
                  });
                },
                label: "F",
                selected: _fridayChip,
              ),
              _buildChoiceDayChip(
                onSelect: (value) {
                  setState(() {
                    _saturdayChip = value;
                    _repeat = false;
                    _checkRepeat();
                  });
                },
                label: "S",
                selected: _saturdayChip,
              ),
              _buildChoiceDayChip(
                onSelect: (value) {
                  setState(() {
                    _sundayChip = value;
                    _repeat = false;
                    _checkRepeat();
                  });
                },
                label: "S",
                selected: _sundayChip,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _checkRepeat() {
    if (_mondayChip &&
        _tudesdayChip &&
        _wednesdayChip &&
        _thursdayChip &&
        _fridayChip &&
        _saturdayChip &&
        _sundayChip) {
      _repeat = true;
    } else {
      _repeat = false;
    }
  }

  void _toggleDays() {
    if (_repeat) {
      _mondayChip = _tudesdayChip = _wednesdayChip =
          _thursdayChip = _fridayChip = _saturdayChip = _sundayChip = true;
    } else {
      _mondayChip = _tudesdayChip = _wednesdayChip =
          _thursdayChip = _fridayChip = _saturdayChip = _sundayChip = false;
    }
  }

  ChoiceChip _buildChoiceDayChip({
    required Function(bool) onSelect,
    required String label,
    required bool selected,
  }) {
    return ChoiceChip(
      onSelected: onSelect,
      labelStyle: TextStyle(color: selected ? Colors.white : Colors.black),
      selected: selected,
      disabledColor: Colors.grey,
      selectedColor: Colors.green[300],
      label: Text(
        label,
      ),
    );
  }
}
