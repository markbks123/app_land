import 'dart:convert';

import 'package:app_land/models/post.dart';
import 'package:app_land/models/product.dart';
import 'package:app_land/repositories/product.dart';
import 'package:app_land/repositories/product_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductService _productService;
  // final ProductRepository _productRepository;

  // ProductsBloc({required ProductRepository productRepository})
  //     : _productRepository = productRepository,
  ProductsBloc({required ProductService productService})
      : _productService = productService,
        super(ProductsLoading()) {
    on<LoadProducts>(_mapLoadProductsToState);
    on<SearchProducts>(_mapFilterProductsByKeyword);
    on<LoadPosts>(_mapLoadPostsToState);
  }

  void _mapLoadProductsToState(
      LoadProducts event, Emitter<ProductsState> emit) async {
    emit(ProductsLoading());
    try {
      // final products = await _productRepository.getProducts();
      final products = await _productService.getProducts();
      emit(ProductsLoaded(products: products));
    } catch (e) {
      emit(ProductsError(message: 'Error loading products'));
    }
  }

  void _mapFilterProductsByKeyword(
      SearchProducts event, Emitter<ProductsState> emit) async {
    emit(ProductsLoading());
    try {
      // final products = _productRepository.getProductsByCategory(event.keyword);
      final products = await _productService
          .getProductsByCategory(GetProductsByCategoryRequest((event.keyword)));
      emit(ProductsLoaded(products: products));
    } catch (e) {
      emit(ProductsError(message: 'Error loading products'));
    }
  }

  void _mapLoadPostsToState(
      LoadPosts event, Emitter<ProductsState> emit) async {
    emit(ProductsLoading());
    try {
      // final posts = await _productRepository.getPost();
      final posts = await _productService.getPosts();
      emit(PostsLoaded(posts: posts));
    } catch (e) {
      emit(ProductsError(message: 'Error loading products'));
    }
  }
}
