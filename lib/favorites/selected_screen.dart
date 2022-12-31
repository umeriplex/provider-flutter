import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favourite_provider.dart';

class SelectedScreen extends StatefulWidget {
  const SelectedScreen({Key? key}) : super(key: key);

  @override
  State<SelectedScreen> createState() => _SelectedScreenState();
}

class _SelectedScreenState extends State<SelectedScreen> {
  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavouriteProvider>(context,listen: false);
    print('BUILD!!');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected List'),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favProvider.list.length,
                itemBuilder: (context,index){
                  return Consumer<FavouriteProvider>(
                      builder: (context,value,child){
                        return ListTile(
                          onTap: (){
                            if(value.list.contains(index)){
                              value.removeItem(index);
                            }else{
                              value.addItem(index);
                            }

                          },
                          title: Text('Item $index'),
                          trailing: value.list.contains(index) ? const Icon(Icons.favorite,color: Colors.cyan,) : const Icon(Icons.favorite_border,color: Colors.cyan,),
                        );
                      }
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
