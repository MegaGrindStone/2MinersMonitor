import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AboutView();
  }
}

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            title: Text(context.l10n.aboutNavBarTitle),
          ),
          expandedHeight: kToolbarHeight,
          floating: true,
        ),
        const AboutList(),
      ],
    );
  }
}

class AboutList extends StatelessWidget {
  const AboutList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(const [
        AboutVersion(),
        AboutContribute(),
        AboutTranslator(),
        AboutOSSLicense(),
        AboutPrivacyPolicy(),
      ]),
    );
  }
}

class AboutVersion extends StatelessWidget {
  const AboutVersion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshots) {
        if (snapshots.connectionState == ConnectionState.done) {
          final version = snapshots.data!.version;
          final buildNumber = snapshots.data!.buildNumber;
          return ListTile(
            onTap: () {
              launchUrl(
                Uri.parse(
                  'https://github.com/MegaGrindStone/2MinersMonitor/releases',
                ),
              );
            },
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.aboutVersionLabel,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                Text(
                  '$version+$buildNumber',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}

class AboutContribute extends StatelessWidget {
  const AboutContribute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        launchUrl(
          Uri.parse('https://github.com/MegaGrindStone/2MinersMonitor'),
        );
      },
      title: Text(
        context.l10n.aboutContributeLabel,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
    );
  }
}

class AboutTranslator extends StatelessWidget {
  const AboutTranslator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.beamToNamed('translator');
      },
      title: Text(
        context.l10n.aboutTranslatorLabel,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
    );
  }
}

class AboutOSSLicense extends StatelessWidget {
  const AboutOSSLicense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.beamToNamed('oss-license');
      },
      title: Text(
        context.l10n.aboutOSSLabel,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
    );
  }
}

class AboutPrivacyPolicy extends StatelessWidget {
  const AboutPrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        launchUrl(
          Uri.parse(
            'https://www.freeprivacypolicy.com/live/52143c11-1877-432b-8c68-366bb1e0fe1c',
          ),
        );
      },
      title: Text(
        context.l10n.aboutPrivacyPolicyLabel,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
    );
  }
}
