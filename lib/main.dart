import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Design(),
    );
  }
}

class Design extends StatefulWidget {
  const Design({Key? key}) : super(key: key);

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           Stack(
             children: [
               ClipRRect(
                 borderRadius: BorderRadius.circular(20.0),
                 child: Image.asset('images/venice-gc917dc8f2_1920.jpg')
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Container(
                       padding: const EdgeInsets.only(top: 40,right: 10),
                       child:const Icon(Icons.share,color: Colors.white,)),
                   Container(
                       padding: const EdgeInsets.only(top: 40,right: 10),
                       child:const Icon(Icons.favorite_border,color: Colors.white,))
                 ],
               ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 140, bottom: 10, left: 20),
                    child: const Text('Venice',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 10, left: 20),
                          child:const Icon(Icons.location_pin, color: Colors.white, size: 20,)),
                      Container(
                        padding: const EdgeInsets.only(bottom: 10, left: 3),
                          child:const Text('Italy',style: TextStyle(fontSize: 20, color: Colors.white)))
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(left: 20),
                          child:const Icon(Icons.grade,color: Colors.white,)),
                      const Icon(Icons.grade,color: Colors.white,),
                      const Icon(Icons.grade,color: Colors.white,),
                      const Icon(Icons.grade,color: Colors.white,),
                      const Icon(Icons.grade_outlined,color: Colors.white,),
                      Container(
                        padding: const EdgeInsets.only(left: 5),
                          child:const Text('4.0', style: TextStyle(fontSize: 20, color: Colors.white)))
                    ],
                  )
                ],
              ) 
             ],
           ),
           const SizedBox(height: 30),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.grey),
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child:const Icon(Icons.wifi, color: Colors.black87, size: 30)
               ),
               Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                       border: Border.all(color: Colors.grey),
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child:const Icon(Icons.restaurant, color: Colors.black87, size: 30)
               ),
               Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                       border: Border.all(color: Colors.grey),
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child:const Icon(Icons.beach_access, color: Colors.black87, size: 30)
               ),
               Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                       border: Border.all(color: Colors.grey),
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child:const Icon(Icons.more_horiz, color: Colors.black87, size: 30)
               )
             ]
           ),
           const SizedBox(height: 5),
           Row(
             children: [
               Container(
                 padding: const EdgeInsets.only(left: 59),
                 child: const Text('Wifi'),
               ),
               Container(
                 padding: const EdgeInsets.only(left: 58),
                 child: const Text('キッチン'),
               ),
               Container(
                 padding: const EdgeInsets.only(left: 47),
                 child: const Text('ビーチ'),
               ),
               Container(
                 padding: const EdgeInsets.only(left: 54),
                 child: const Text('その他'),
               ),
             ],
           ),
           const SizedBox(height: 30),
           Container(
               padding: const EdgeInsets.only(right: 350),
               child: const Text('詳細', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,))
           ),
           const SizedBox(height: 5),
           Container(
             width: 390,
             height: 230,
             padding: const EdgeInsets.all(15),
             decoration: BoxDecoration(
               color: Colors.black12,
               borderRadius: BorderRadius.circular(10),
             ),
             child: const Text('イタリア共和国北東部に位置する都市で、その周辺地域を含む人口約26万人の基礎自治体（コムーネ）。ヴェネト州の州都、ヴェネツィア県の県都でもある。ヴの表記によりベネチアと表記されることもある。中世にはヴェネツィア共和国の首都として栄えた都市で、「アドリア海の女王」「水の都」などの別名を持つ。英語では「Venice」と呼ばれ、これに由来して日本語でもヴェニス、ベニスと呼ばれることもある。'
                   ,style: TextStyle(fontSize: 15.5),)
           ),
           const SizedBox(height: 30),
           Container(
             child: FloatingActionButton.extended(onPressed: (){}, label: const Text('ホテルを予約する')),
           )
         ],
       ),
    );
  }
}
