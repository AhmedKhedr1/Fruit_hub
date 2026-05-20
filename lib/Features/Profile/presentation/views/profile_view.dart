import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/services/get_it_services.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/Auth/domain/repos/auth_repo.dart';
import 'package:fruit_hub/Features/Profile/presentation/manager/cubit/sign_out_cubit.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/logout_button.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/profile_view_body.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/sign_out_bar_bloc_consumer.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignOutCubit(getIt<AuthRepo>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            S.current.account,
            style: TextStyless.bold19.copyWith(color: Color(0xff0C0D0D)),
          ),
        ),
        body: ProfileViewBody(),
        bottomNavigationBar: SignOutBarBlocConsumer(),
      ),
    );
  }
}
