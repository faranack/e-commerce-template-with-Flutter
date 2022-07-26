import 'package:ecommerce_12hours/utils/colors.dart';
import 'package:ecommerce_12hours/utils/dimensions.dart';
import 'package:ecommerce_12hours/widgets/account_widget.dart';
import 'package:ecommerce_12hours/widgets/app_icon.dart';
import 'package:ecommerce_12hours/widgets/big_text.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: BigText(text: "Profile",size:24 ,color: Colors.white,),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          children: [
            //profile icon
            AppIcon(icon: Icons.person,
            backgroundColor: AppColors.mainColor,
                iconColor: Colors.white,
            iconSize: Dimensions.height45+Dimensions.height30,
            size: Dimensions.height15*10,),
            SizedBox(height: Dimensions.height30,),
           
           Expanded(
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   //name
                   AccountWidget(
                       appIcon:AppIcon(icon: Icons.person,
                         backgroundColor: AppColors.mainColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),

                       bigText: BigText(text: "Fara",)),
                   SizedBox(height: Dimensions.height20,),
                   //phone
                   AccountWidget(
                       appIcon:AppIcon(icon: Icons.phone,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),

                       bigText: BigText(text: "123456789",)),
                   SizedBox(height: Dimensions.height20,),
                   //email
                   AccountWidget(
                       appIcon:AppIcon(icon: Icons.email,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),

                       bigText: BigText(text: "Faranack.m@gmail.com",)),
                   SizedBox(height: Dimensions.height20,),
                   //address
                   AccountWidget(
                       appIcon:AppIcon(icon: Icons.location_on,
                         backgroundColor: AppColors.yellowColor,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),

                       bigText: BigText(text: "Fill in your address",)),
                   SizedBox(height: Dimensions.height20,),
                   //message
                   AccountWidget(
                       appIcon:AppIcon(icon: Icons.message,
                         backgroundColor: Colors.redAccent,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),

                       bigText: BigText(text: "Messages",)),
                   SizedBox(height: Dimensions.height20,),
                   //log out
                   AccountWidget(
                       appIcon:AppIcon(icon: Icons.logout,
                         backgroundColor: Colors.redAccent,
                         iconColor: Colors.white,
                         iconSize: Dimensions.height10*5/2,
                         size: Dimensions.height10*5,),

                       bigText: BigText(text: "Log out",)),
                   SizedBox(height: Dimensions.height20,),

                 ],
               ),
             ),
           )
          ],
        ),
      ) ,
    );
  }
}
