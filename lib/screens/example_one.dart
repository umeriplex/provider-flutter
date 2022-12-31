import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satate_management_one/providers/example_one_provider.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({Key? key}) : super(key: key);

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {
  @override
  Widget build(BuildContext context) {
    final exOneProvier = Provider.of<ExampleOneProvider>(context,listen: false);
    print("BUILD!!!!");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example One Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(
              builder: (context,v,child){
                return Slider(min: 0, max: 1, value: v.value, onChanged: (val) {
                  v.setValue(val);
                });
              }
          ),
          Consumer<ExampleOneProvider>(
              builder: (context,v,child){
                return Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration:
                        BoxDecoration(color: Colors.cyan.withOpacity(v.value)),
                        child: const Center(
                          child: Text('Container 1'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration:
                        BoxDecoration(color: Colors.blueGrey.withOpacity(v.value)),
                        child: const Center(
                          child: Text('Container 2'),
                        ),
                      ),
                    ),
                  ],
                );
              }
          ),

        ],
      ),
    );
  }
}
