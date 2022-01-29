import 'package:ecommerce/Shared/network/remote/dio_helper.dart';
import 'package:ecommerce/business_logic/home_states.dart';
import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit():super(InitialHomeState());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<Product?>? products=[];
  ProductModel? model;
  CategoryModel? categoryModel;
  List<Category> categories =[];



  void getProductData (){
    emit(GetProductDataLoadingState());
    DioHelper.dio.get('http://retail.amit-learning.com/api/products').then((value) {
      model = ProductModel.fromJson(value.data);
      model!.products.forEach((element) {
        products!.add(element);


      });
      print(products);
print(value);
      print(model.toString());
      emit(GetProductDataSuccessState());
    }).catchError((error){
      print(error);
      emit(GetProductDataErrorState(error.toString()));
    });
  }


  void getCategoryData (){
    emit(GetCategoryDataLoadingState());
    DioHelper.dio.get('http://retail.amit-learning.com/api/categories').then((value) {
      categoryModel = CategoryModel.fromJson(value.data);
      categoryModel!.categories.forEach((element) {
        categories.add(element);
      });
      print(categories);
      print(value);

      emit(GetCategoryDataSuccessState());
    }).catchError((error){
      print(error);
      emit(GetCategoryDataErrorState(error.toString()));
    });
  }
}