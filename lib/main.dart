import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:page_indicator/page_indicator.dart';



void main() {runApp(rootWidget);}
  
  final imagePaths = [
    'assets/images/slide_01.jpg',
    'assets/images/slide_02.jpg',
    'assets/images/slide_03.jpg',
    'assets/images/slide_04.jpg',
  ];
  final slideItemsWidget = imagePaths.map((imagePath){
    return buildSlideItemWidget(imagePath);
  }).toList();


  final slideBlockWidget = CarouselSlider(
    height: 300,
    items: slideItemsWidget,
    autoPlay: true,
    reverse: false,
    
  );
    final cartWidget = Container(
      height: 100,
      width: 100,
      child: Icon(
        Icons.shopping_cart,
        color: Colors.orange,
        size: 60,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Color(0x80e41749),
      ),
      
    // color: Colors.red,
    // height: 100,
    // width: 100,
  );

  final slideStack = Stack(
    children: <Widget>[
      slideBlockWidget,
      Positioned(
        child: cartWidget,
        right: 0,
      )
    ],
  );
//  SizedBox(
//    height:20,);
//   Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: map<Widget>(imagePaths, (index)){
//       return Container(
//         width: 10.0,
//         height: 10.0,
//         margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: _current ==index ? Colors.redAccent :Colors.green
//         ),
//       );
//     }
//   );
  final catagories=[
    'សៀវភៅ', 
    'សម្ភារៈផ្ទះបាយ', 
    'គ្រឿងអេឡិចត្រូនិច',
     'គ្រឿងសំអាង'
     ];

  final categoriesBlockWidget = Container(
    height: 60,
    padding: EdgeInsets.all(10),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: catagories.length,
      itemBuilder: (context, index){
      return homeCatagoryItem(catagories[index]);
      }
    ),
  );
final newProductsTitle = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('សៀវភៅ')
    ],
  );
    final rigtArrowIcon = Icon(Icons.arrow_right);
    final rigtTextALL = Text('All');
    final newProdoctRightArrowWidget = Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      rigtTextALL,
      rigtArrowIcon
      

    ],
  );
  final newProductsCategoriesBlockWidget = Row(
    children: <Widget>[
      newProductsTitle,
      Spacer(),
      newProdoctRightArrowWidget

    ],
  );
  final newProductsItemContainer = Container(
    height: 100,
    decoration: BoxDecoration(
      border: Border.all( color: Colors.grey),
      borderRadius: BorderRadius.all(Radius.circular(8)),
      color: Colors.white,
    
    ),
  );

  //Secondhand Products
  final secondHandProductTitle = Text('គ្រឿងអេឡិចត្រូនិច');
  final secondHandProdoctRightArrowWidget = Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      rigtTextALL,
      rigtArrowIcon
      
    ],

  );
 
  final secondhandProductBlockWidget = Row(
    children: <Widget>[
      secondHandProductTitle,
      Spacer(),
      secondHandProdoctRightArrowWidget
     
    ],
    
  );
  final secondHandProductItemContainer = Container(
     height: 100,
    
    decoration: BoxDecoration(
      border: Border.all( color: Colors.grey),
      borderRadius: BorderRadius.all(Radius.circular(8)),
      color: Colors.white,
    
    ),
  );
//third Products
  final thirdHandProductTitle = Text('គ្រឿងអេឡិចត្រូនិច');
  final thirdHandProdoctRightArrowWidget = Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      rigtTextALL,
      rigtArrowIcon
      
    ],
);
 
  final thirdhandProductBlockWidget = Row(
    children: <Widget>[
      thirdHandProductTitle,
      Spacer(),
      thirdHandProdoctRightArrowWidget
     
    ],
    
  );
  final thirdHandProductItemContainer = Container(
     height: 100,
    
    decoration: BoxDecoration(
      border: Border.all( color: Colors.grey),
      borderRadius: BorderRadius.all(Radius.circular(8)),
      color: Colors.white,
    
    ),
  );
  final bodyWidget = Column(
    children: <Widget>[slideStack,
     categoriesBlockWidget,
      newProductsCategoriesBlockWidget,
      newProductsItemContainer,
      secondhandProductBlockWidget,
      secondHandProductItemContainer,
      thirdhandProductBlockWidget,
      thirdHandProductItemContainer,
      ],
  );

  final homeScreenWidget = Scaffold(
    body: bodyWidget,
    backgroundColor: Color(0xFFEFEFF4),
  );

  final rootWidget = MaterialApp(
    home: homeScreenWidget,
  );
  
Widget homeCatagoryItem(String catagory)
  {
    return  Container(
    margin: EdgeInsets.symmetric(horizontal: 8),
    padding: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.white),
    child: Center(
      child: Text(catagory),
    ),
  ); 
  }
  Widget buildSlideItemWidget(String imagePath) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill)),
  );

}