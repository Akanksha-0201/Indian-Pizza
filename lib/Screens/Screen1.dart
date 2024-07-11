import'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:myapp/Screens/cart.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 drawer: Drawer(
        width: 200,
        child: ListView(
        children: [
          DrawerHeader(child:Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                // Adjust border radius as needed
                child: Image.network(
                  'https://i.pinimg.com/236x/48/6c/a0/486ca00640b169300b48e9ceacd8e401.jpg',
                  // Replace with your image asset path
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                //SizedBox(height: 20,),
               //Container(
                //  width: 50,
                //  height: 50,
                
                 // child:ClipRRect(
            //bo//rderRadius: BorderRadius.circular(20),
               // child: Image.network(
             // 'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
             // width: 200,
              //height: 200,
            //  fit: BoxFit.cover, // adjust the image fit as needed
          //  ),
              ),
              Text('Akanksha'),
              Text('chinni@gmail.com')
            ],
          ),
          ),
          ListTile(
            onTap: () {
              
            },
            leading: Icon(Icons.settings,size: 25,),
            title: Text('Settings',style: TextStyle(fontSize: 25,
            color: Colors.blue),),
          ),
          ListTile(
            onTap: () {

            },
            leading: Icon(Icons.info,size: 25,),
            title: Text('Info',style: TextStyle(fontSize: 25,
            color: Colors.blue),),
          ),
          ListTile(
            onTap: () {

            },
            leading: Icon(Icons.contact_mail_rounded,size: 25,),
            title: Text('contact',style: TextStyle(fontSize: 25,
            color: Colors.blue),),
          ),

          ListTile(
            onTap: () {

            },
            leading: Icon(Icons.help_center_outlined,size: 25,),
            title: Text('help',style: TextStyle(fontSize: 25,
            color: Colors.blue),),
          ),
          ListTile(
            onTap: () {

            },
            leading: Icon(Icons.logout_outlined,size: 25,),
            title: Text('logout',style: TextStyle(fontSize: 25,
            color: Colors.red),),
          ),


        ],
      ),
      ),
      appBar: AppBar(backgroundColor: Colors.red,
        title:  Center(child:  Text('Indian Pizza',style: TextStyle(fontSize: 25,
        fontWeight: FontWeight.w600,color: Colors.white),),
      ),
     actions: [
       IconButton(onPressed: ()=> {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()),),
       }, icon: Icon(Icons.search,)),
       IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active,color: Colors.yellow,)),
     ],
      
      ),

      body:    Center(
        child: ListView(
          padding: EdgeInsets.all(50),
          children: [
           Column(
            children: [
             
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  width: 50,
                  height: 50,
                
                  child:ClipRRect(
            borderRadius: BorderRadius.circular(20), // adjust the radius here
            child: Image.network(
              'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // adjust the image fit as needed
            ),
          ) ,),SizedBox(width: 20,),
               Container(
                  width: 50,
                  height: 50,
                
                  child:ClipRRect(
            borderRadius: BorderRadius.circular(20), // adjust the radius here
            child: Image.network(
              'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // adjust the image fit as needed
            ),
          ) ,),SizedBox(width: 20,),
          

 Container(
                  width: 50,
                  height: 50,
            
                  child:ClipRRect(
            borderRadius: BorderRadius.circular(20), // adjust the radius here
            child: Image.network(
              'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // adjust the image fit as needed
            ),
          ) ,),SizedBox(width: 20,),




           Container(
                  width: 50,
                  height: 50,
             
                  child:ClipRRect(
            borderRadius: BorderRadius.circular(20), // adjust the radius here
            child: Image.network(
              'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // adjust the image fit as needed
            ),
          ) ,),SizedBox(width: 20,),



           Container(
                  width: 50,
                  height: 50,
                 
                  child:ClipRRect(
            borderRadius: BorderRadius.circular(20), // adjust the radius here
            child: Image.network(
              'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // adjust the image fit as needed
            ),
          ) ,),SizedBox(width: 20,),



           Container(
                  width: 50,
                  height: 50,
                  child:ClipRRect(
            borderRadius: BorderRadius.circular(20), // adjust the radius here
            child: Image.network(
              'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // adjust the image fit as needed
            ),
          ) ,),SizedBox(width: 20,),








              ],),
            ),
            SizedBox(height: 20,),


             InkWell(
              onTap: () {
                
              },
              child: Row(children: [
                Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:992664487.
                  width: 100,
                  height: 100,
                  color:Colors.blue,

                   child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // adjust the radius here
            child: Image.network(
              'https://i.pinimg.com/236x/bb/58/04/bb580461b29d28e2dea9ef033c6f4c99.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // adjust the image fit as needed
            ),
          ),
                  ),
                Container(

                  width: 190,
                  height: 100,
                  color: Colors.orangeAccent,
                  child: Center(child: Text(' Chicken Pizza',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600
                  ,))),
                )
              ],),
             ),SizedBox(height: 20,),


            InkWell(
              onTap: () {
                
              },
              child: Row(children: [
                Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:992664487.
                  width: 100,
                  height: 100,
                  color:Colors.blue,

                   child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // adjust the radius here
            child: Image.network(
              'https://i.pinimg.com/236x/f9/e4/94/f9e494d4b4c7b764c677ff0efc660276.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // adjust the image fit as needed
            ),
          ),
                  ),
                Container(

                  width: 190,
                  height: 100,
                  color: Colors.orangeAccent,
                  child: Center(child: Text(' Veg Pizza',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600
                  ,))),
                )],),
             ),SizedBox(height: 20,),



              InkWell(
              onTap: () {
                
              },
              child: Row(children: [
                Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:992664487.
                  width: 100,
                  height: 100,
                  color:Colors.blue,

                   child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // adjust the radius here
            child: Image.network(
              'https://i.pinimg.com/236x/75/bb/36/75bb36f4f0a70e2a1faac5fc524f5629.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // adjust the image fit as needed
            ),
          ),
                  ),
                Container(

                  width: 190,
                  height: 100,
                  color: Colors.orangeAccent,
                  child: Center(child: Text(' Curryleaf Pizza',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600
                  ,))),
                )
              ],),
             ),SizedBox(height: 20,),


               InkWell(
              onTap: () {
                
              },
              child: Row(children: [
                Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:992664487.
                  width: 100,
                  height: 100,
                  color:Colors.blue,

                   child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // adjust the radius here
            child: Image.network(
              'https://i.pinimg.com/236x/69/2a/55/692a5556a19c2b11665d049db2f45923.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // adjust the image fit as needed
            ),
          ),
                  ),
                Container(

                  width: 190,
                  height: 100,
                  color: Colors.orangeAccent,
                  child: Center(child: Text('  Cheese Pizza',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600
                  ,))),
                )
              ],),
             ),SizedBox(height: 20,),

               InkWell(
              onTap: () {
                
              },
              child: Row(children: [
                Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:992664487.
                  width: 100,
                  height: 100,
                  color:Colors.blue,

                   child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // adjust the radius here
            child: Image.network(
              'https://i.pinimg.com/236x/61/45/dc/6145dc53ce61c82b071dd735232056ca.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover, // adjust the image fit as needed
            ),
          ),
                  ),
                Container(

                  width: 190,
                  height: 100,
                  color: Colors.orangeAccent,
                  child: Center(child: Text(' Margherita Pizza',style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600
                  ,))),
                )
              ],),
             ),SizedBox(height: 20,),

          ]),
          ],
        ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:151090167.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2049480851.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:843591747.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3667005877.
      ),
         
    );
  }
}