import 'package:flutter/material.dart';

class vista1 extends StatefulWidget {
  const vista1({Key? key}) : super(key: key);

  @override
  State<vista1> createState() => _vista1State();
}

class _vista1State extends State<vista1> {

  final txtN1=TextEditingController();
  final txtN2=TextEditingController();

  String res='';
  late int num1,num2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            Text('Calculadora',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),

            SizedBox(
              height: 15,
            ),

            TextFormField(
              controller: txtN1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingrese Numero 1:',
                labelText: 'Numero 1:',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            TextFormField(
              controller: txtN2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingrese Numero 12:',
                labelText: 'Numero 2:',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                ElevatedButton(
                    onPressed: (){
                      num1=int.parse(txtN1.text);
                      num2=int.parse(txtN2.text);
                      int s=num1+num2;
                      setState(() {
                        res='$s';
                      });
                    },
                    child: Text('+')),

                ElevatedButton(
                    onPressed: (){
                      num1=int.parse(txtN1.text);
                      num2=int.parse(txtN2.text);
                      int r=num1-num2;
                      setState(() {
                        res='$r';
                      });
                    },
                    child: Text('-')),

                ElevatedButton(
                    onPressed: (){
                      num1=int.parse(txtN1.text);
                      num2=int.parse(txtN2.text);
                      int m=num1*num2;
                      setState(() {
                        res='$m';
                      });
                    },
                    child: Text('*')),

                ElevatedButton(
                    onPressed: (){
                      num1=int.parse(txtN1.text);
                      num2=int.parse(txtN2.text);
                      double d=num1/num2;
                      setState(() {
                        res='$d';
                      });
                    },
                    child: Text('/')),

              ],
            ),
            SizedBox(
              height: 15,
            ),

            Text('Resultado: $res',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),


          ],
        ),
      ),
    );
  }
}
