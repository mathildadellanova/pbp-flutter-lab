import 'package:flutter/material.dart';
import 'package:counter_7/tambah_budget.dart';
import 'package:counter_7/data_budget.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/page/drawer.dart';

 void main() {
   runApp(const MyApp());
    class _MyHomePageState extends State<MyHomePage> {
           // the App.build method, and use it to set our appbar title.
           title: Text(widget.title),
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
           // Center is a layout widget. It takes a single child and positions it
           // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _counter % 2 == 0
                  ? const Text('GENAP',
                      style: TextStyle(color: Colors.redAccent))
                  : const Text('GANJIL',
                      style: TextStyle(color: Colors.blueAccent)),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                    visible: _counter != 0,
                    child: FloatingActionButton(
                      onPressed: _decrementCounter,
                      tooltip: 'Decrement',
                      backgroundColor:
                          _counter == 0 ? Colors.grey : Colors.blueAccent,
                      child: const Icon(Icons.remove),
                    )),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            )) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}