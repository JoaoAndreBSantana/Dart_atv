import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nubank',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF820AD1), 
          onPrimary: Colors.white,
          secondary: Colors.black, 
          onSecondary: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black,
          error: Colors.red,
          onError: Colors.white,
        ),
      ),
      home: const HomeBanco(),
    );
  }

}



class HomeBanco extends StatelessWidget {
  const HomeBanco({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF820AD1), Colors.white],
            stops: [0.4, 0.4],
          ),
        ),
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                _body(),
              ],
            ),
        ),
      ),
    );
  }




  Widget _header() {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 20, 16, 25),
      color: const Color(0xFF820AD1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: const [
          CircleAvatar(radius: 25, backgroundColor: Color.fromARGB(255, 255, 255, 255) , child: Icon(Icons.person, size: 30, color: Colors.black), 
          ),
          SizedBox(height: 20),

          Text(
            'Olá, João',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],

      ),
    );
  }



  Widget _body() {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _saldoCard(),
          const SizedBox(height: 10),
          _BotaoLista(),
          const SizedBox(height: 20),
          _cartaoCard(),
          const SizedBox(height: 20),
          _descubraSection(),
         
        ],
      ),
    );
  }



Widget _saldoCard() {
    return Container(
      width: 500,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Saldo disponível',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 8),
          Text(
            'R\$ 100,00',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
 



  Widget _BotaoLista() {
    return SizedBox(
      height: 100,

      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),

        children: [
          _opBotao(' Área Pix e Transferir', Colors.grey),
          _opBotao('Pagar', Colors.grey),
          _opBotao('Pegar emprestado', Colors.grey),
          _opBotao('Converter limite', Colors.grey),
        ],
      ),
    );
  }




  Widget _opBotao(String label, Color color) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 12),

      decoration: BoxDecoration(
        
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Center(
        child: Text(label, textAlign: TextAlign.center),
      ),

    );
  }





 Widget _cartaoCard() {
  return Container(
     width: 370, 
    margin: const EdgeInsets.symmetric(horizontal: 16),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 6,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: const Text(
      'Meus cartões',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
  );
}




  Widget _descubraSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal:16, vertical:5),

          child: Text(
            'Descubra mais',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _descubraCard('Prêmios mensais', 'Participe e ganhe.'),
              _descubraCard('Indique amigos', 'Mostre aos seus amigos.'),
            ],
          ),
        ),
      ],
    );
  }





  Widget _descubraCard(String title, String content) {
    return Container(
      width: 175,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(content, style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
