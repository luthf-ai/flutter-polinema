import 'dart:async';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  // Variable/State untuk mengambil tanggal
  DateTime selectedDate = DateTime.now();

  //  Initial SelectDate FLutter
  Future<void> _selectDate(BuildContext context) async {
    // Initial DateTime FIinal Picked
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("${selectedDate.toLocal()}".split(' ')[0]),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () => {
            _selectDate(context),
            // ignore: avoid_print
            print(selectedDate.day + selectedDate.month + selectedDate.year)
          },
          child: const Text('Pilih Tanggal'),
        ),
      ],
    );
  }
}