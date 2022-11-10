import 'package:flutter/material.dart';
import '../beli/beliEmpat.dart';



class RouterEmpat extends StatelessWidget {
  const RouterEmpat({super.key});

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
                          child: Image.network("https://images.tokopedia.net/img/cache/900/product-1/2019/3/16/8949680/8949680_2ca816bb-6473-4d10-9d83-0512056a7dee_1000_1000.jpg"),
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
                              text: "TP-Link TL-WR940N : 450Mbps TPLink WiFi Wireless N Router",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 10,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Notes: \n- TP-Link TL-WR940N : 450Mbps TPLink WiFi Wireless N Router \n- Garansi Resmi TP Link Indonesia 1 Tahun",
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16.0,)),
                        ),
                        const SizedBox(height: 5,),  
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Rp278.000",
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
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const BeliEmpat())));
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
