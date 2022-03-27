import 'package:flutter/material.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/settings/model/translator_model.dart';
import 'package:url_launcher/url_launcher.dart';

class TranslatorPage extends StatelessWidget {
  const TranslatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TranslatorView();
  }
}

class TranslatorView extends StatelessWidget {
  const TranslatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(context.l10n.aboutTranslatorLabel),
          expandedHeight: kToolbarHeight,
          floating: true,
        ),
        const TranslatorList(),
      ],
    );
  }
}

class TranslatorList extends StatelessWidget {
  const TranslatorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        translators.entries.map<Widget>((entry) {
          final locale = entry.key;
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: FutureBuilder<AppLocalizations>(
                  future: _loadl10n(locale),
                  builder: (context, snapshots) {
                    if (snapshots.connectionState == ConnectionState.done) {
                      final l10n = snapshots.data!;
                      return Text(
                        l10n.languageName,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                      );
                    }
                    return const SizedBox();
                  }),
            ),
            subtitle: TranslatorItemList(
              translators: entry.value,
            ),
          );
        }).toList(),
      ),
    );
  }

  Future<AppLocalizations> _loadl10n(Locale locale) async {
    return AppLocalizations.delegate.load(locale);
  }
}

class TranslatorItemList extends StatelessWidget {
  const TranslatorItemList({Key? key, required this.translators})
      : super(key: key);

  final List<TranslatorModel> translators;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: translators
          .map<Widget>(
            (translator) => ListTile(
              onTap: translator.clickURL != null
                  ? () => launch(translator.clickURL!)
                  : null,
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  translator.name ?? '',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
