import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:satate_management_one/favorites/selected_screen.dart';
import 'package:satate_management_one/providers/favourite_provider.dart';
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavouriteProvider>(context,listen: false);
    print('BUILD!!');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite List'),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        actions: [
          GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedScreen()));},
              child: const Icon(Icons.favorite_rounded,color: Colors.red,)),
          const SizedBox(width: 12,)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
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
