import 'package:flutter/material.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/oss_licenses.dart';
import 'package:two_miners_monitor_oss/settings/model/oss_licenses_model.dart';
import 'package:url_launcher/url_launcher.dart';

class OSSLicensesPage extends StatelessWidget {
  const OSSLicensesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OSSLicensesView();
  }
}

class OSSLicensesView extends StatelessWidget {
  const OSSLicensesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(context.l10n.aboutOSSLabel),
          expandedHeight: kToolbarHeight,
          floating: true,
        ),
        const OSSLicenseList(),
      ],
    );
  }
}

class OSSLicenseList extends StatelessWidget {
  const OSSLicenseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        ossLicenses.values.map<Widget>((dynamic json) {
          final ossLicense =
              OSSLicensesModel.fromJson(json as Map<String, dynamic>);
          return ListTile(
            onTap: ossLicense.homepage != null
                ? () => launchUrl(Uri.parse(ossLicense.homepage!))
                : null,
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                '${ossLicense.name} ${ossLicense.version}',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
            ),
            subtitle: Text(
              ossLicense.license ?? '',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
