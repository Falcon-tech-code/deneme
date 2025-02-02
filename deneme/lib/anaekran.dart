import "package:flutter/material.dart";




class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  var sayi1, sayi2, sonuc;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(sonuc.toString()),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: sayiTopla,
                  child: const Text('Topla'),
                ),
                ElevatedButton(
                  onPressed: sayiCikar,
                  child: const Text('Çıkar'),
                ),
                ElevatedButton(
                  onPressed: sayiCarp,
                  child: const Text('Çarp'),
                ),
                ElevatedButton(
                  onPressed: sayiBol,
                  child: const Text('Böl'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}