import 'package:abis_mobile/widgets/drawer.dart';
import 'package:flutter/material.dart';

class SalesOrderList extends StatelessWidget {
  const SalesOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales Order'),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text(
          'Sales Order Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
