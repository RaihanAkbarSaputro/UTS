import 'package:flutter/material.dart';
import 'package:uts/login_page.dart';
import 'package:uts/router/routerDua.dart';
import 'package:uts/router/routerEmpat.dart';
import 'package:uts/router/routerEnam.dart';
import 'package:uts/router/routerLima.dart';
import 'package:uts/router/routerSatu.dart';
import 'package:uts/router/routerTiga.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: [
  PopupMenuButton(
    icon: Icon(Icons.menu), 
    onSelected: (value){
      Navigator.push(context,MaterialPageRoute(builder: ((context) => MyApp())));
    },
    color: Color.fromARGB(255, 255, 255, 255),
    itemBuilder: (context) => [
     PopupMenuItem(
      child: Row(
        children: [
          Icon(Icons.logout,color: Colors.red,),
            Text("Logout",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),value: 1,
        ),
      ],
      ),
    ],
        
        
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("TOKO ROUTER"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        // crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const routerSatu())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/5/18/ef6163fd-d0bc-44d2-a6ca-c78db49fb219.jpg', height: 100, width: 100,),
                    const Text("TP-Link Archer C80 AC1900 WiFi Router", style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),
          
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const RouterDua())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://images.tokopedia.net/img/cache/900/product-1/2018/3/12/15092423/15092423_816c7a33-c4f5-4786-900a-a0425ab1e68e_515_510.jpg', height: 100, width: 100,),
                    const Text("TL-WR840N 300Mbps Wireless Router TP LINK",style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),

          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const RouterTiga())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://images.tokopedia.net/img/cache/900/VqbcmM/2020/11/12/37631430-230b-4358-ba4d-b1dfe33900c2.jpg', height: 100, width: 100,),
                    const Text("Tp-Link Archer C54 AC1200 Dual-Band Wi-Fi Router", style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),

           Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const RouterEmpat())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://images.tokopedia.net/img/cache/900/product-1/2019/3/16/8949680/8949680_2ca816bb-6473-4d10-9d83-0512056a7dee_1000_1000.jpg', height: 100, width: 100,),
                    const Text("TP-Link TL-WR940N : 450Mbps TPLink WiFi Wireless N Router", style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),
          
           Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const RouterLima())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/3/19/248b1fd3-3e64-4c59-b154-b8647ffe5bb0.jpg', height: 100, width: 100,),
                    const Text("TOTOLINK N200RE 300Mbps Mini Wireless Router - Versi 5", style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),
          
         Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const RouterEnam())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://images.tokopedia.net/img/cache/900/hDjmkQ/2022/1/22/33108f0b-644d-4fe8-8963-6c7e7cdce5de.jpg', height: 100, width: 100,),
                    const Text("Mercusys MW302R Multi-Mode Wireless N Router 300Mbps", style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  