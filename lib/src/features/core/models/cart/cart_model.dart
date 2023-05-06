import 'package:equatable/equatable.dart';
import 'package:pettie_petstore/src/features/core/models/product/product_model.dart';

class Cart extends Equatable{

Cart();

double get subtotal => products.fold(0, (total, current) => total + current.price);


double  deliveryFee(subtotal){

  if(subtotal >= 30.0){
  return 0.0;
  }else {
    return 30.0;
  }

}

double total(subtotal, deliveryFee ){
  return subtotal + deliveryFee(subtotal);
}

String freeDelivery(subtotal){
  if(subtotal>= 30.0){
    return 'You have a a Free Delivery';
  }else{
    double missing = 30.0 - subtotal;
    return 'Add Rs.${missing.toStringAsFixed(2)} for Free Delivery';
  }
}
String get totalString => subtotal.toStringAsFixed(2);
String get subtotalString => total(subtotal, deliveryFee).toStringAsFixed(2);
String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);
String get freeDeliveryString => freeDelivery(subtotal);

List<Product> products = [
    const Product(
      name: 'Dog taorg',
      category: 'Dog Food',
      imageUrl:
          'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
      price: 500.0,
      isPopular: false,
      isBestProduct: true,
      isRecommended: true,
    ),
    const Product(
        name: 'dooed',
        category: 'Cat Food',
        imageUrl:
            'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
        price: 500.0,
        isPopular: true,
        isBestProduct: true,
        isRecommended: true,),
    const Product(
        name: 'Dog t',
        category: 'Dog supplies',
        imageUrl:
            'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
        price: 500.0,
        isPopular: false,
        isBestProduct: true,
        isRecommended: true),
    const Product(
        name: 'Dog F',
        category: 'Dog Food',
        imageUrl:
            'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
        price: 500.0,
        isPopular: true,
        isBestProduct: true,
        isRecommended: true),
    const Product(
        name: 'Cat tag',
        category: 'Cat supplies',
        imageUrl:
            'https://images.unsplash.com/photo-1554079500-a359614b7666?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1089&q=80',
        price: 500.0,
        isPopular: true,
        isBestProduct: true,
        isRecommended: true),
  ];
  
  @override

  List<Object?> get props => [];
}