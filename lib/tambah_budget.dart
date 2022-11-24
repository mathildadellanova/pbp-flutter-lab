import 'package:counter_7/data_budget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:counter_7/drawer.dart';
import 'globals.dart' as globals;

 class TambahBudgetPage extends StatefulWidget {
  class Budget {
   late String judul;
   late int nominal;
   late String jenisBudget;
   late DateTime date;

   Budget(
       {required this.judul, required this.nominal, required this.jenisBudget});
       {required this.judul, required this.nominal, required this.jenisBudget, required this.date});
 }

 class _TambahBudgetPageState extends State<TambahBudgetPage> {
  class _TambahBudgetPageState extends State<TambahBudgetPage> {
   int? nominal;
   String? jenisBudget;
   List<String> listJenisBudget = ['Pemasukan', 'Pengeluaran'];
   DateTime date = DateTime.now();

   onPressed(BuildContext context) {
     var data =
         Budget(judul: _judul!, nominal: nominal!, jenisBudget: jenisBudget!);
         Budget(judul: _judul!, nominal: nominal!, jenisBudget: jenisBudget!, date: date);
     globals.budgets.add(data);
     Navigator.pushReplacement(
       context,
     class _TambahBudgetPageState extends State<TambahBudgetPage> {
       appBar: AppBar(
         title: Text('Form Budget'),
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
       body: Form(
         key: _formKey,
         child: SingleChildScrollView(
           class _TambahBudgetPageState extends State<TambahBudgetPage> {
                     },
                   ),
                 ),
                 ListTile(
                   title: Text(date.toString()),
                   leading: TextButton.icon(
                     icon: const Icon(Icons.calendar_today),
                     label: const Text("Pilih Tanggal"),
                     onPressed: () {
                       showDatePicker(
                         context: context,
                         initialDate: DateTime.now(),
                         firstDate: DateTime(2000),
                         lastDate: DateTime(2099),
                       ).then((date) {
                         //tambahkan setState dan panggil variabel _dateTime.
                         setState(() {
                           this.date = date!;
                         });
                       });
                     },
                   ),
                 ),
                 DropdownButtonHideUnderline(
                   child: DropdownButton(
                     value: jenisBudget,
                    icon: const Icon(Icons.arrow_drop_down),
                    items: listJenisBudget.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        jenisBudget = newValue!;
                      });
                    },
                    hint: Container(
                      width: 150, //and here
                      child: const Text(
                        "Pilih Jenis",
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.all(15.0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.center),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (jenisBudget == null || jenisBudget == '') {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 15,
                                child: Container(
                                  child: ListView(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 20),
                                    shrinkWrap: true,
                                    children: <Widget>[
                                      const Center(
                                          child: Text(
                                              'Pilih Jenis tidak boleh kosong')),
                                      const SizedBox(height: 20),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Kembali'),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        } else {
                          onPressed(context);
                        }
                      }
                    },
                    child: const Text(
                      "Simpan",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}