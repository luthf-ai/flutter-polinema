import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spender/components/bar_graph.dart';
import 'package:spender/data/expense_data.dart';
import 'package:spender/datetime/datetime_helper.dart';

class ExpenseSum extends StatelessWidget {
  final DateTime startOfWeek;
  const ExpenseSum({
    Key? key,
    required this.startOfWeek,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String sunday = convertDateTimeToString(startOfWeek.add(const Duration(days: 0)));
    String monday = convertDateTimeToString(startOfWeek.add(const Duration(days: 1)));
    String tuesday = convertDateTimeToString(startOfWeek.add(const Duration(days: 2)));
    String wednesday = convertDateTimeToString(startOfWeek.add(const Duration(days: 3)));
    String thursday = convertDateTimeToString(startOfWeek.add(const Duration(days: 4)));
    String friday = convertDateTimeToString(startOfWeek.add(const Duration(days: 5)));
    String saturday = convertDateTimeToString(startOfWeek.add(const Duration(days: 6)));


    return Consumer<ExpenseData>(
      builder: (context, value, child) => Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: SizedBox(
          height: 200,
          child: BarGraph(
            maxY: 100000,
            sunAmount: value.calculateExpenseSum()[sunday] ?? 0,
            monAmount: value.calculateExpenseSum()[monday] ?? 0,
            tueAmount: value.calculateExpenseSum()[tuesday] ?? 0,
            wedAmount: value.calculateExpenseSum()[wednesday] ?? 0,
            thuAmount: value.calculateExpenseSum()[thursday] ?? 0,
            friAmount: value.calculateExpenseSum()[friday] ?? 0,
            satAmount: value.calculateExpenseSum()[saturday] ?? 0,
      
          ),
        ),
      )
    );
  }
}
