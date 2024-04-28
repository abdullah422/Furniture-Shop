import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_shop/features/auth/presentaion/complete_profile_view.dart';
import 'package:furniture_shop/features/auth/presentaion/login_view.dart';
import 'package:furniture_shop/features/auth/presentaion/register_view.dart';
import 'package:furniture_shop/features/root/presentation/manger/Cubit/root_cubit.dart';
import 'package:furniture_shop/features/root/presentation/view/root_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/onboarding/presentation/manager/onboarding_cubit/onboareing_cubit.dart';
import '../../features/onboarding/presentation/view/onboarding_view.dart';
import '../../features/splash/presentation/view/splash_screen.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kRootView = '/rootView';
  static const kOnboardingView = '/onboardingView';
  static const kSearchView = '/searchView';
  static const kLoginView = '/LoginView';
  static const kRegisterView = '/RegisterView';
  static const kCompleteProfileView = '/CompleteProfileView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      /*GoRoute(
        path: kOnboardingView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => OnboardingCubit(),
            child: const OnBoardingView(),
          );
        },
      ),*/
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => RootCubit(),
            child:  RootView(),
          );
        },
      ),

      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kCompleteProfileView,
        builder: (context, state) => const CompleteProfile(),
      ),

      GoRoute(
        path: kCompleteProfileView,
        builder: (context, state) => const CompleteProfile(),
      ),
      GoRoute(
        path: kRootView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => RootCubit(),
            child:  RootView(),
          );
        },
      )
      /*GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),*/
    ],
  );
}
