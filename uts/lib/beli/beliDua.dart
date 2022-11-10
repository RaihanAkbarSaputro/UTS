        import 'package:flutter/material.dart';
        import 'package:rflutter_alert/rflutter_alert.dart';
        import 'package:uts/mainPage.dart';
    
  
    class BeliDua extends StatefulWidget {
     const BeliDua({super.key});

      @override
      _FormState createState() => _FormState();
    }
    
    class _FormState extends State<BeliDua> {

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
                  Image.network('https://images.tokopedia.net/img/cache/900/product-1/2018/3/12/15092423/15092423_816c7a33-c4f5-4786-900a-a0425ab1e68e_515_510.jpg', width: 150, height: 150,),
                  const SizedBox(height: 10), 
                  const Text(' TL-WR840N 300Mbps Wireless Router TP LINK', textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                  const SizedBox(height: 10), 
                    const Text('Rp155.000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red)),
                  
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
    