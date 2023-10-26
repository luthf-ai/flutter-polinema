import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spender/components/expense_sum.dart';
import 'package:spender/data/expense_data.dart';
import 'package:spender/models/expense_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final newExpenseNameController = TextEditingController();
  final newExpenseAmountController = TextEditingController();

  void addNewExpense() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add new expense'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: newExpenseNameController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: newExpenseAmountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: cancel,
            child: const Text('Cancel'),

          ),
          TextButton(
            onPressed: save,
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void save() {
    ExpenseItem newExpense = ExpenseItem(
      name: newExpenseNameController.text,
      amount: newExpenseAmountController.text,
      dateTime: DateTime.now(),
    );

    Provider.of<ExpenseData>(context, listen: false).addExpenseItem(newExpense);
    Navigator.pop(context);
    clear();  
  }

  void cancel() {
    Navigator.pop(context);
    clear();
  }

  void clear() {
    newExpenseNameController.clear();
    newExpenseAmountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseData>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey[100],
        floatingActionButton: FloatingActionButton(
          onPressed: addNewExpense,
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              ExpenseSum(startOfWeek: value.getStartDateOfWeek(DateTime.now()),),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.getAllExpenseList().length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(value.getAllExpenseList()[index].name),
                        subtitle: Text(
                            '${value.getWeekdayName(value.getAllExpenseList()[index].dateTime)} ${value.getAllExpenseList()[index].dateTime.day}/${value.getAllExpenseList()[index].dateTime.month}/${value.getAllExpenseList()[index].dateTime.year}'),
                        trailing: Text('Rp.'+value.getAllExpenseList()[index].amount),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
