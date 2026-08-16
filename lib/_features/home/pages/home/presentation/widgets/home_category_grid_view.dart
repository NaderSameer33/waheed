import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:waheed/_features/categories/cubit/category_cubit.dart';
import 'package:waheed/_features/categories/cubit/category_state.dart';
import '../../../../../categories/presentation/widgets/category_item.dart';

class HomeCategoryGridView extends StatelessWidget {
  const HomeCategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategoryLoadingState) {
          return Center(
            child: LoadingAnimationWidget.threeArchedCircle(
              color: Colors.black,
              size: 30,
            ),
          );
          
        }else if (state is CategoryFailureState){ 
          return Center(child: Text(state.errorMessage)) ; 
        } else if(state is CategorySuccessState) { 
   return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.model.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 151.w / 56.h,
            mainAxisSpacing: 8.r,
            crossAxisSpacing: 8.r,
          ),
          itemBuilder: (context, index) => CategoryItem(width: 40.w , model: state.model[index],),
        );
        } 
        return SizedBox() ; 
     
      },
    );
  }
}
