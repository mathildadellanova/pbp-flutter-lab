import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/tambah_budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'globals.dart' as globals;

class DataBudgetPage extends StatefulWidget {
    class _DataBudgetState extends State<DataBudgetPage> {
        appBar: AppBar(
            title: Text('Data Budget'),
        ),
        drawer: Drawer(
            child: Column(
                children: [
                    // Menambahkan clickable menu
                    ListTile(
                        title: const Text('counter_7'),
                        onTap: () {
                            // Route menu ke halaman utama
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const MyHomePage(title: 'counter_7')),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('Tambah Budget'),
                        onTap: () {
                            // Route menu ke halaman tambah budget
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TambahBudgetPage()),
                            );
                        },
                    ),
                    ListTile(
                        title: const Text('Data Budget'),
                        onTap: () {
                            // Route menu ke halaman data budget
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DataBudgetPage()),
                            );
                        },
                    ),
                ],
            ),
        ),
        drawer: const DrawerApp(),
        body: Center(
            child: ListView.builder(
            itemCount: globals.budgets.length,
            itemBuilder: ((context, index) {
                return ListTile(
                    title: Text(globals.budgets[index].judul),
                    subtitle: Text(globals.budgets[index].nominal.toString()),
                    trailing: Text(globals.budgets[index].jenisBudget),
                );
            }),
        )),
        itemCount: globals.budgets.length,
        itemBuilder: ((context, index) {
            return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(5.0),
                    shadowColor: Colors.blueGrey,
                    child: ListTile(
                        title: Text(globals.budgets[index].judul),
                        subtitle: Text(globals.budgets[index].nominal.toString()),
                        trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                                Text(globals.budgets[index].jenisBudget),
                                Text(
                                globals.budgets[index].date.toString(),
                                style: const TextStyle(color: Colors.grey),
                                )
                            ]),
                    )),
            );
        }),
       )),
     );
   }
 }