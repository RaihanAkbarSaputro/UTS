import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:uts/mainPage.dart';
    
  
    class Beli extends StatefulWidget {
  const Beli({super.key});

      @override
      _FormState createState() => _FormState();
    }
    
    class _FormState extends State<Beli> {

      final name = TextEditingController();
      final alamat = TextEditingController();
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Konfirmasi"),
          ),

          body: Form(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network('https://images.tokopedia.net/img/cache/900/VqbcmM/2021/5/18/ef6163fd-d0bc-44d2-a6ca-c78db49fb219.jpg', width: 150, height: 150,),
                  const SizedBox(height: 10), 
                  const Text('TP-Link Archer C80 AC1900 WiFi Router / Archer C 80 AC 1900 Mu-Mimo', textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                  const SizedBox(height: 10), 
                    const Text('Rp545.000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red)),
                  
                  const SizedBox(height: 10), 
                    const Text('Aldi Taher',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black,)),

                  const SizedBox(height: 1), 
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Alamat',
                        hintText: 'Ketik alamat lengkap anda'
                    ),
                  ),

ElevatedButton(
    onPressed: () => sweatAlert(context),
    child: const Text("Bayar"),
 )

                ],
              ),
            ),
          ),
        );
      }

void sweatAlert(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.success,
    title: "Pembayaran berhasil",
    desc: "Pembayaran melalui hanya melalui COD harap ditunggu",
    buttons: [
      DialogButton(
        child: const Text(
          "Selanjutnya",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const MainPage())));}
      )
    ],
  ).show();
  return;
}

    }
    