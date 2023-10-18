import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mint_dentistry/config/color_constants.dart';
import 'package:mint_dentistry/config/custom_style.dart';
import 'package:mint_dentistry/config/image_constants.dart';
import 'package:mint_dentistry/widgets/avtar_label_view.dart';
import 'package:mint_dentistry/widgets/buttons/primary_round_button.dart';
import 'package:mint_dentistry/widgets/buttons/transparent_button.dart';

class CompanyPoliciesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CompanyPoliciesScreen();
  }
}

class _CompanyPoliciesScreen extends State<CompanyPoliciesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.companyPolicies,
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        loadSeparator(
                          16,
                        ),
                        Text(
                          AppLocalizations.of(context)!.welcome,
                          style: CustomStyle.h4Light28,
                        ),
                        loadSeparator(
                          8,
                        ),
                        Text(
                          AppLocalizations.of(context)!
                              .companyPolicyDescription,
                          style: CustomStyle.subTitle1Medium16,
                        ),
                        loadSeparator(
                          32,
                        ),
                        AvtarLabelView(
                          leftIconName: AllImages().file,
                          title: AppLocalizations.of(context)!.termsOfService,
                          rightIconName: Icons.arrow_forward_ios,
                        ),
                        loadSeparator(
                          16,
                        ),
                        AvtarLabelView(
                          leftIconName: AllImages().file,
                          title: AppLocalizations.of(context)!.privacyPolicy,
                          rightIconName: Icons.arrow_forward_ios,
                        ),
                        loadSeparator(
                          16,
                        ),
                        AvtarLabelView(
                          leftIconName: AllImages().file,
                          title: AppLocalizations.of(context)!.rewardsPolicy,
                          rightIconName: Icons.arrow_forward_ios,
                        ),
                        loadSeparator(
                          16,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: LightThemeColors.background,
                    child: Padding(
                      padding: const EdgeInsets.all(
                        16.0,
                      ),
                      child: Column(
                        children: [
                          PrimaryRoundButton(
                            title: AppLocalizations.of(context)!.acceptBtn,
                            onPressed: () {},
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          TransparentButton(
                            title: AppLocalizations.of(context)!.declineBtn,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

loadSeparator(double height) {
  return SizedBox(
    height: height,
  );
}
