import 'package:ecommerce_design_system_package/controller/lateral_menu_controller.dart';
import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:ecommerce_design_system_package/models/menu_option_model.dart';
import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';

/// A stateful widget that represents the lateral menu in the application.
class LateralMenu extends StatefulWidget {
  final Widget profileSection;
  final LateralMenuController lateralMenuController;
  final VoidCallback closeMenu;
  final List<MenuOptionModel> menuOptions;
  final VoidCallback signOut;

  /// Creates a [LateralMenu] widget.
  const LateralMenu({
    Key? key,
    required this.profileSection,
    required this.lateralMenuController,
    required this.closeMenu,
    required this.menuOptions,
    required this.signOut,
  }) : super(key: key);

  @override
  State<LateralMenu> createState() => _LateralMenuState();
}

class _LateralMenuState extends State<LateralMenu>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    widget.lateralMenuController.initAnimation(ticker: this);
  }

  @override
  void dispose() {
    widget.lateralMenuController.disposeAnimation();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) => Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () async {
              await widget.lateralMenuController.animationController.reverse();
              widget.closeMenu();
            },
            child: Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              color: AppColors.blackColor.withOpacity(0.5),
            ),
          ),
          SlideTransition(
            position: widget.lateralMenuController.offsetAnimation,
            child: Container(
              color: AppColors.whiteColor,
              width: 273,
              height: constraints.maxHeight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: AppSpacing.small,
                  right: AppSpacing.small,
                  top: MediaQuery.of(context).padding.top,
                  bottom: MediaQuery.of(context).padding.bottom,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        widget.profileSection,
                        const SizedBox(
                          height: AppSpacing.medium,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.menuOptions.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                const Divider(),
                                LateralMenuOption(
                                  option: widget.menuOptions[index],
                                ),
                                const Divider(),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: AppSpacing.medium),
                      child: CustomButtonWidget(
                        key: const Key('sign_out_btn'),
                        onPressed: () => widget.signOut(),
                        text: 'Sign out',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
