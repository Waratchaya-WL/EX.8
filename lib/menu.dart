import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<List<dynamic>> foodLists = [
    ["https://www.cookerru.com/wp-content/uploads/2020/11/tteokbokki-feature-2-web-main-1170x1755.jpg",
      "TTEOKBOKKI",
     150
    ],
    [
     "https://www.ryoiireview.com/upload/article/202205/1652258654_813d4dddf3f8b44e030354b387a1db9a.jpg",
     "KOREAN FRIED CHICKEN",
     250,
    ],
    [
     "https://readspoonful.co/wp-content/uploads/2020/06/bibimbap-recipe-758x1024.jpg",
     "BIBIMBAB",
     250
    ],
    [
     "https://mykoreankitchen.com/wp-content/uploads/2015/01/2.-Korean-Bulgogi.jpg",
     "BULGOGI",
     465
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodLists.length,
      itemBuilder: (_, index){
         return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero
          ),
          child: Container(
            height: 150,
            width: double.infinity,
            child: Stack(
              children: [

             Row(
              children: [
                Image.network(
                  foodLists[index][0],
                  fit: BoxFit.cover,
                  width: 100,
                  ),
                  
                  Expanded(
                       child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${foodLists[index][1]}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ), 
                          ),
                          SizedBox(height: 5,),
                          Text(
                            " ${foodLists[index][2]} ฿",
                            style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 14,
                            ),
                            )
                      ],
                    ),
                  ),
                  )
               
              ],
             ),

             Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              alignment: Alignment.bottomRight,
              child: Chip(
                backgroundColor: Colors.lightGreen,
                label: Text(
                  "Order Now",
                     style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,                  
                      ),
                  ),
                ),
             ),  
              ],
            ),
          ),
         );
      },

    );
    
  }
}
