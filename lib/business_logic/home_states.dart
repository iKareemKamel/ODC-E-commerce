abstract class HomeStates {}
class InitialHomeState extends HomeStates {}
class GetProductDataSuccessState extends HomeStates{}
class GetProductDataErrorState extends HomeStates{
  final String error;
  GetProductDataErrorState(this.error);
}
class GetProductDataLoadingState extends HomeStates{}
class GetCategoryDataSuccessState extends HomeStates{}
class GetCategoryDataErrorState extends HomeStates{
  final String error;
  GetCategoryDataErrorState(this.error);
}
class GetCategoryDataLoadingState extends HomeStates{}


