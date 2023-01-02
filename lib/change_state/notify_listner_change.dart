import 'package:flutter/material.dart';


class NotifyChangeListeners extends StatelessWidget {
  NotifyChangeListeners({Key? key}) : super(key: key);

  final ValueNotifier<bool> _status = ValueNotifier<bool>(true);
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);


  @override
  Widget build(BuildContext context) {
    print("BUILD!!!!");
    return Scaffold(
      appBar: AppBar(
        title: const Text('StateLess to StateFul'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(
              valueListenable: _status,
              builder: (conntext,value,child){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: TextFormField(
                    obscureText: _status.value,
                    decoration: InputDecoration(
                        hintText: 'Password Dalo Naww',
                      suffixIcon: InkWell(
                          child: _status.value == true ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                        onTap: (){
                          _status.value = !_status.value;
                        },
                      ),
                    ),
                  ),
                );
              }
          ),
          Center(
            child: ValueListenableBuilder(
                valueListenable: _counter,
                builder: (context,value,child){
                  return Text(_counter.value.toString(),style: const TextStyle(fontSize: 50),);
                }
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _counter.value++;
          print(_counter.value.toString());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
