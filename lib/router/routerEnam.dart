import 'package:flutter/material.dart';
import 'package:uts/beli/beliEnam.dart';




class RouterEnam extends StatelessWidget {
  const RouterEnam({super.key});

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
                          child: Image.network("https://images.tokopedia.net/img/cache/900/hDjmkQ/2022/1/22/33108f0b-644d-4fe8-8963-6c7e7cdce5de.jpg", height: 250, width: 300,),
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
                              text: "Mercusys MW302R Multi-Mode Wireless N Router 300Mbps",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 10,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Fast Wi-Fi for Daily Life — MW302R provides fast and stable connections to meet all your network needs with speeds of up to 300 Mbps.\nBroader Coverage — Equipped with high gain external antennas to deliver strong Wi-Fi signals to every corner of your home.",
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16.0,)),
                        ),
                        const SizedBox(height: 5,),  
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Rp133.000",
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
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const BeliEnam())));
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
