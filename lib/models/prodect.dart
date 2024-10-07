import 'package:store/constants/colors.dart';
import 'package:store/constants/imagesString.dart';
import 'package:flutter/material.dart';

class Prodect{
final  int id,price;
final Color color1;
final Color color2;
final Color color3;
final String title ,subtitle,description,images;
Prodect({
  required this.id,
  required this.price,
  required  this.title,
  required this.subtitle,
  required this.description,
  required this.images,
  required this.color1,
  required this.color2,
  required this.color3,

});
}

List<Prodect> prodects=[
  Prodect(
    id: 1,
    price: 1500,
    title: 'iphone xs max',
    subtitle: ' الجهاز امريكي وكاله ',
    description:'    ذاكره 256جيجا ',
    images: TImage.product1,
    color1: TColors.black,
    color2: TColors.warning,
    color3: TColors.white,
  ),
   Prodect(
    id: 2,
    price: 15,
    title: ' سماعه بلتوث ',
    subtitle: 'الصوت استريو  ',
    description:'السماعه صوتها واضح جدا  ',
    images: TImage.product4,
     color1: TColors.error,
    color2: TColors.secondry,
    color3: TColors.black,
  ),
  Prodect(
      id: 3,
      price: 3000,
      title: '  شاشة lg ',
      subtitle: ' الصوره hd  ',
      description:'   الصوره واضحه جدا  ',
      images: TImage.product2,
       color1: TColors.black,
    color2: TColors.secondry,
    color3: TColors.white,
  ),
 Prodect(
      id: 4,
      price: 900,
      title: '  samsung note 20',
      subtitle: '  الجهاز امريكي وكاله    ',
      description:'     الحهاز خالي من اي عيوب والذاكره 256جيجا الرام 12 ',
      images: TImage.product3,
       color1: TColors.green,
    color2: TColors.warning,
    color3: TColors.white,
  ),
  Prodect(
      id: 5,
      price: 30,
      title: ' power pank ',
      subtitle: ' 10A',
      description:'  يشحن 5 اجهزه ',
      images: TImage.product5,
       color1: TColors.black,
    color2: TColors.secondry,
    color3: TColors.white,
  ),

];