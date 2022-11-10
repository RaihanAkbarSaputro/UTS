import 'package:flutter/material.dart';
import 'package:uts/mainPage.dart';
import 'package:uts/beli/beli.dart';


class routerSatu extends StatelessWidget {
  const routerSatu({super.key});

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
              Container(
                height: size.width - 30,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Image.network("https://images.tokopedia.net/img/cache/900/VqbcmM/2021/5/18/ef6163fd-d0bc-44d2-a6ca-c78db49fb219.jpg"),
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
                              text: "TP-Link Archer C80 AC1900 WiFi Router / Archer C 80 AC 1900 Mu-Mimo",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 10,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Archer C80 AC1900 Wireless MU-MIMO Wi-Fi Router High-Performance Wi-Fi for the Mainstream Dual Band | Full Gigabit AC1900 MU-MIMO Wi-Fi Router.",
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16.0,)),
                        ),
                        const SizedBox(height: 10,),  
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Rp545.000",
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
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const Beli())));
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
