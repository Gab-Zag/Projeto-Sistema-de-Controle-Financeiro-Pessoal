import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/client_cubit.dart';
import 'package:flutter_application_1/cubit/client_state.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: AppBar(
            backgroundColor: Apptheme.primaryBlue,
            flexibleSpace: Center(
              child: Text(
                "Finance App",
                style: GoogleFonts.archivoBlack(
                  fontSize: 26,
                  color: Apptheme.lightBackground,
                ),
              ),
            ),
          ),
        ),
        body: BlocConsumer<ClientCubit, ClientState>(
          listener: (context, state) {
            if (state is ClientAuthenticated) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Login realizado com sucesso!")),
              );
            }
            if (state is ClientError) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          builder: (context, state) {
            if (state is ClientLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            return Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'Logo.png',
                    fit: BoxFit.contain,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Apptheme.darkText),
                      hintText: "Digite seu email",
                      filled: true,
                      fillColor: Colors.white,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(
                          color: Apptheme.primaryBlue,
                          width: 1.5,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(
                          color: Apptheme.primaryBlue,
                          width: 2,
                        ),
                      ),

                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),

                      prefixIcon: const Icon(Icons.email_outlined),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 16,
                      ),
                    ),
                  ),

                  Gap(16),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Apptheme.darkText),
                      hintText: "Digite sua senha",
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(
                          color: Apptheme.primaryBlue,
                          width: 1.5,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(
                          color: Apptheme.primaryBlue,
                          width: 2,
                        ),
                      ),

                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),

                      prefixIcon: const Icon(Icons.lock_outline),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 16,
                      ),
                    ),
                    obscureText: true,
                  ),
                  Gap(32),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Apptheme.primaryBlue,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        context.read<ClientCubit>().login(
                          emailController.text,
                          passwordController.text,
                        );
                      },
                      child: const Text("Entrar"),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
