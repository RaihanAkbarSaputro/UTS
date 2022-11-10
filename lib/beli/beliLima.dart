        import 'package:flutter/material.dart';
        import 'package:rflutter_alert/rflutter_alert.dart';
        import 'package:uts/mainPage.dart';
    
  
    class BeliLima extends StatefulWidget {
     const BeliLima({super.key});

      @override
      _FormState createState() => _FormState();
    }
    
    class _FormState extends State<BeliLima> {

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
                  Image.network('https://images.tokopedia.net/img/cache/900/VqbcmM/2021/3/19/248b1fd3-3e64-4c59-b154-b8647ffe5bb0.jpg', width: 150, height: 150,),
                  const SizedBox(height: 10), 
                  const Text('TOTOLINK N200RE 300Mbps Mini Wireless Router - Versi 5', textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                  const SizedBox(height: 10), 
                    const Text('Rp132.999',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red)),
                  
                  const SizedBox(height: 10), 
                    const Text('Aldi Taher',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black,)),

                  const SizedBox(height: 1), 
                  Container(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Alamat',
                          hintText: 'Ketik alamat lengkap anda'
                      ),
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
    