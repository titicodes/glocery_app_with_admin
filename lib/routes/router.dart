import 'package:flutter/material.dart';



class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      // case HomeRoute:
      //   return MaterialPageRoute(builder: (_) => const BottomNavPage());
      // case MainHomeRoute:
      //   return MaterialPageRoute(builder: (_) => const Home());
      // case loginRoute:
      //   return MaterialPageRoute(builder: (_) => const LoginScreen());
      // case splashScreenRoute:
      //   return MaterialPageRoute(builder: (_) => const SplashScreen());
      // // case NotificationsRoute:
      // //   return MaterialPageRoute(builder: (_) => const Notifications());
      // case signupRoute:
      //   return MaterialPageRoute(builder: (_) => const SignUpScreen());
      // case CaptureOwnerScreenRoute:
      //   return MaterialPageRoute(builder: (_) => const CaptureOwnerScreen());
      // case EnrollPropertyRoute:
      //   return MaterialPageRoute(builder: (_) => const EnrollPropertyScreen());
      // case CaptureAUserRoute:
      //   return MaterialPageRoute(builder: (_) => const CaptureAUserScreen());
      // case SelectAccountTypeRoute:
      //   return MaterialPageRoute(builder: (_) => SelectAccountType());
      // case PersonalInformationRoute:
      //   return MaterialPageRoute(
      //       builder: (_) => const PersonalInformationScreen());
      // case CaptureUserImageRoute:
      //   return MaterialPageRoute(builder: (_) => CaptureImageScreen());
      // case SelectPropertyTypeRoute:
      //   return MaterialPageRoute(builder: (_) => PropertTypeScreen());
      // case EnterPropertyInformationRoute:
      //   return MaterialPageRoute(builder: (_) => PropertyInformationScreen());
      // case SelectPropertyImagesRoute:
      //   return MaterialPageRoute(builder: (_) => PropertyImageScreen());
      // case SelectPropertyLocationRoute:
      //   return MaterialPageRoute(builder: (_) => PropertyLocationScreen());

      // //capture rented property
      // case RentedPropertyTypeRoute:
      //   return MaterialPageRoute(builder: (_) => RentedPropertyTypePage());
      // // case RentedPropertyLocationRoute:
      // //   return MaterialPageRoute(builder: (_) => SearchByLocationPage());
      // case RentedPropertySearchCriteriaRoute:
      //   return MaterialPageRoute(builder: (_) => PropertySearchCriteria());
      // case SearchPropertyByPhoneRoute:
      //   return MaterialPageRoute(builder: (_) => SearchPropertyByPhonePage());
      // case SearchPropertyByGPSRoute:
      //   return MaterialPageRoute(builder: (_) => SearchPropertyByGPSPage());
      // case SearchPropertyByLocationRoute:
      //   return MaterialPageRoute(builder: (_) => SearchByLocationPage());
      // case PropertySearchResultsRoute:
      //   return MaterialPageRoute(builder: (_) => PropertyResultPage());
      // case RentInformationPageRoute:
      //   return MaterialPageRoute(builder: (_) => RentInformationPage());
      // case RentedPropertySuccessRoute:
      //   return MaterialPageRoute(
      //       builder: (_) => EnrollRentedPropertySuccessPage());
      // case EmailVerificationRoute:
      //   bool? _data = args as bool?;
      //   return MaterialPageRoute(
      //       builder: (_) => OTPVerification(
      //             isEmail: _data,
      //           ));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}