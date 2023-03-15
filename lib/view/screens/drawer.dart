import 'package:flutter/material.dart';
import 'package:task1/model/drawer_model.dart';
import 'package:task1/view/widgets/drawer_item.dart';

class DrawerScreen extends StatelessWidget {
   DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top:50,left: 10),
            child: CircleAvatar(radius: 60,
            backgroundImage:
                AssetImage('assets/images/Chris_Hemsworth_by_Gage_Skidmore_2_(cropped).jpg'),
        ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15,top:10),
            child: Text(
              "Chris Hemsworth",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 20),
          const Divider(
            thickness: 2,
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) => DrawerItem(
                      index: index,
                      model: items[index],
                    ),
                itemCount: items.length),
          ),
          const Divider(thickness: 2),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              title: Text("Sign Out",style:TextStyle(fontWeight:FontWeight.w700,fontSize:16),),
              trailing: Icon(Icons.power_settings_new,color:Colors.red,),
            ),
          )
        ],
      ),
    );
  }
}