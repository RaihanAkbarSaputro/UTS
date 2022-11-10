import 'package:flutter/material.dart';
import 'package:uts/beli/beliLima.dart';




class RouterLima extends StatelessWidget {
  const RouterLima({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset("assets/images/back.png", width: 20,height: 20, color: Colors.white,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: size.width - 30,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Image.network("https://images.tokopedia.net/img/cache/900/VqbcmM/2021/3/19/248b1fd3-3e64-4c59-b154-b8647ffe5bb0.jpg"),
                        )),
                  ],
                ),
              ),
              Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "TOTOLINK N200RE 300Mbps Mini Wireless Router - Versi 5",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 10,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Notes: \n300Mbps Mini Wireless N Router \n-  300Mbps Wireless Speed \n- Mini Design, Max Use ",
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16.0,)),
                        ),
                        const SizedBox(height: 5,),  
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Rp132.999",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,)),
                        ),
                        
                      ],
                    ),
                  )
              ),
              const SizedBox(
                       height: 15.0,),
                           Container(
                            height: 50,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(child: const Text('Beli', style: TextStyle(fontWeight: FontWeight.bold),),
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const BeliLima())));
                  },
                )
            ),
            ],
          ),
        ),
      ),
    );
  }
}
