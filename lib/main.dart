import 'package:app_land/blocs/products/products_bloc.dart';
import 'package:app_land/blocs/promotions/promotions_bloc.dart';
import 'package:app_land/models/product.dart';
import 'package:app_land/pages/home_screen.dart';
import 'package:app_land/pages/product_screen.dart';
import 'package:app_land/pages/promotion_detail_id_screen.dart';
import 'package:app_land/pages/promotion_screen.dart';
import 'package:app_land/repositories/product.dart';
import 'package:app_land/repositories/product_repository.dart';
import 'package:app_land/repositories/promotion_repository.dart';
import 'package:app_land/services/app_constants.dart';
import 'package:app_land/setup_env.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/product_detail_screen.dart';
import 'pages/promotion_detail_screen.dart';

void main() async {
  await setupEnvironment(AppEnvironment.production);
  // final productRepository = ProductRepository();
  final productRepository = ProductService();
  final promotionRepository = PromotionRepository();

  runApp(MyApp(
    productRepository: productRepository,
    promotionRepository: promotionRepository,
  ));
}

class MyApp extends StatelessWidget {
  static late AppEnvironment appEnvironment;
  final ProductRepository productRepository;
  final PromotionRepository promotionRepository;

  MyApp({required this.productRepository, required this.promotionRepository});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsBloc>(
          create: (context) =>
              ProductsBloc(productRepository: productRepository),
        ),
        BlocProvider<PromotionsBloc>(
          create: (context) =>
              PromotionsBloc(promotionRepository: promotionRepository),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        onGenerateRoute: (settings) {
          if (settings.name == '/product_detail') {
            final product = settings.arguments as Product;
            return MaterialPageRoute(
              builder: (context) => ProductDetailScreen(product: product),
            );
          }
          if (settings.name == '/promotion_detail') {
            final args = settings.arguments as PromotionScreenArguments;
            final categoryName = args.categoryName;
            final promotion = args.promotion;
            return MaterialPageRoute(
              builder: (context) => PromotionDetailScreen(
                  categoryName: categoryName, promotion: promotion),
            );
          }
          return null;
        },
        routes: {
          '/': (context) => HomeScreen(),
          '/products': (context) => ProductScreen(),
          '/promotions': (context) => PromotionScreen(),
          '/promotion_detail_id': (context) => PromotionDetailIdScreen(),
        },
      ),
    );
  }
}
