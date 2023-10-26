

import 'package:flutter/material.dart';
import 'package:spender/datetime/datetime_helper.dart';
import 'package:spender/models/expense_item.dart';

class ExpenseData extends ChangeNotifier{
  // list of expense items
  List<ExpenseItem> overallExpenseList = [];

  // get the list of expense items
  List<ExpenseItem> getAllExpenseList() {
    return overallExpenseList;
  }

  // add an expense item to the list
  void addExpenseItem(ExpenseItem expenseItem) {
    overallExpenseList.add(expenseItem);
    notifyListeners();
  }

  // delete an expense item from the list
  void deleteExpenseItem(ExpenseItem expenseItem) {
    overallExpenseList.remove(expenseItem);
    notifyListeners();
  }

  // get weekday name from date
  String getWeekdayName(DateTime dateTime) {
    String weekdayName = '';
    switch (dateTime.weekday) {
      case 1:
        weekdayName = 'Mon';
        break;
      case 2:
        weekdayName = 'Tue';
        break;
      case 3:
        weekdayName = 'Wed';
        break;
      case 4:
        weekdayName = 'Thu';
        break;
      case 5:
        weekdayName = 'Fri';
        break;
      case 6:
        weekdayName = 'Sat';
        break;
      case 7:
        weekdayName = 'Sun';
        break;
      default:
        weekdayName = 'Mon';
        break;
    }
    return weekdayName;
  }

  // get start date of the week
  DateTime getStartDateOfWeek(DateTime dateTime) {
    DateTime? startOfWeek;

    DateTime today = DateTime.now();

    // go backward to find sunday
    for (int i = 0; i < 7; i++) {
      if (getWeekdayName(today.subtract(Duration(days: i))) == 'Sun') {
        startOfWeek = today.subtract(Duration(days: i));
        break;
      }
    }

    return startOfWeek!;
  }

  Map<String, double> calculateExpenseSum() {
    Map<String, double> dailyExpenseSum = {};

    for (var expense in overallExpenseList) {
      String date = convertDateTimeToString(expense.dateTime);
      double amount = double.parse(expense.amount);

      if (dailyExpenseSum.containsKey(date)) {
        double currentAmount = dailyExpenseSum[date]!;
        currentAmount += amount;
        dailyExpenseSum[date] = currentAmount;
      } else {
        dailyExpenseSum.addAll({date: amount});
      }
    }
    return dailyExpenseSum;
  }

  getSumOfExpenses(DateTime startOfWeek) {}
}
