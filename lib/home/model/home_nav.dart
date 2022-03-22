import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';

part 'home_nav.freezed.dart';

@freezed
class HomeNav with _$HomeNav {
  const factory HomeNav({
    required String label,
    required Widget icon,
    required String uri,
  }) = _HomeNav;
}

List<HomeNav> navs(BuildContext context) => <HomeNav>[
      HomeNav(
        label: context.l10n.minersNavBarTitle,
        icon: const Icon(Icons.monitor_outlined),
        uri: '/miners',
      ),
      HomeNav(
        label: context.l10n.workersNavBarTitle,
        icon: const Icon(Icons.group_work),
        uri: '/workers',
      ),
      HomeNav(
        label: context.l10n.rewardsNavBarTitle,
        icon: const Icon(Icons.currency_bitcoin),
        uri: '/rewards',
      ),
      HomeNav(
        label: context.l10n.payoutsNavBarTitle,
        icon: const Icon(Icons.currency_exchange),
        uri: '/payouts',
      ),
      HomeNav(
        label: context.l10n.settingsNavBarTitle,
        icon: const Icon(Icons.settings),
        uri: '/settings',
      ),
    ];
