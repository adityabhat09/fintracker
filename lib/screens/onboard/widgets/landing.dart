import 'package:fintracker/widgets/buttons/button.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class LandingPage extends StatelessWidget{
  final VoidCallback onGetStarted;
  const LandingPage({super.key, required this.onGetStarted});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Fintracker", style: theme.textTheme.headlineSmall),
              const SizedBox(height: 15,),
              Text("Easy method to manage your savings", style: theme.textTheme.headlineMedium),
              const SizedBox(height: 40,),
               Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Symbols.check, color: theme.colorScheme.primary, size: 20,),
                  const SizedBox(width: 15,),
                  const Expanded(child: Text("Using our app, manage your finances."))
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Symbols.check, color: theme.colorScheme.primary,size: 20,),
                  const SizedBox(width: 15,),
                  const Expanded(child: Text("Simple expense monitoring for more accurate budgeting"))
                ],
              ),
              const SizedBox(height: 15,),
               Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(Symbols.check, color: theme.colorScheme.primary, size: 20,),
                  const SizedBox(width: 15,),
                  const Expanded(child: Text("Keep track of your spending whenever and wherever you are.") ,)
                ],
              ),
              const Expanded(child: SizedBox()),
              const Text("*Since this application is currently in beta, be prepared for UI changes and unexpected behaviours."),
              const SizedBox(height: 20,),
              Container(
                alignment: Alignment.bottomRight,
                child: AppButton(
                  color: theme.colorScheme.primary,
                  isFullWidth: true,
                  onPressed: onGetStarted,
                  size: AppButtonSize.medium,
                  label: "Get Started",
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

}