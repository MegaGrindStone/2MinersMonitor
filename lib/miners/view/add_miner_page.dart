import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:two_miners_api/two_miners_api.dart';
import 'package:two_miners_monitor_oss/l10n/l10n.dart';
import 'package:two_miners_monitor_oss/miners/bloc/add_miner_bloc.dart';
import 'package:two_miners_monitor_oss/miners/bloc/miners_bloc.dart';
import 'package:two_miners_monitor_oss/miners/model/add_miner_form.dart';
import 'package:two_miners_monitor_oss/widget/exception_label.dart';

class AddMinerPage extends StatelessWidget {
  const AddMinerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddMinerBloc(coinRepositories: context.read()),
      child: const AddMinerView(),
    );
  }
}

class AddMinerView extends StatelessWidget {
  const AddMinerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddMinerBloc, AddMinerState>(
      listener: (context, state) {
        state.whenOrNull(
          submitSuccess: (form, miner) {
            context
                .read<MinersBloc>()
                .add(MinersEvent.minerAdded(miner: miner));
            context.beamBack();
          },
        );
      },
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: kToolbarHeight,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(context.l10n.minersAddMiner),
            ),
            pinned: true,
          ),
          const AddMinerForm()
        ],
      ),
    );
  }
}

class AddMinerForm extends StatelessWidget {
  const AddMinerForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: BlocBuilder<AddMinerBloc, AddMinerState>(
        builder: (context, state) {
          var width = MediaQuery.of(context).size.width;
          if (width > 500) {
            width = 500;
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: SizedBox(
                  width: width,
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const RepositoryIndexView(),
                          const SizedBox(height: 15),
                          const WalletIDView(),
                          state.maybeWhen(
                            submitFailure: (form, exception) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: ExceptionLabel(exception: exception),
                            ),
                            orElse: () => const SizedBox(height: 15),
                          ),
                          const AddMinerSubmitButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class RepositoryIndexView extends StatelessWidget {
  const RepositoryIndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddMinerBloc, AddMinerState>(
      builder: (context, state) {
        final input = state.form.repositoryIndexInput;
        return DropdownButtonFormField<RepositoryIndex>(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            errorText: parseValidationError(context, input.error),
            hintText: context.l10n.addMinerCoinLabel,
            errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).errorColor,
                ),
          ),
          value: !input.pure ? input.value : null,
          items: context.read<CoinRepositories>().repositories.entries.map((e) {
            return DropdownMenuItem(
              value: e.key,
              child: Text(
                e.value.name,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            );
          }).toList(),
          onChanged: (repositoryIndex) {
            context.read<AddMinerBloc>().add(
                  AddMinerEvent.inputChanged(
                    form: state.form.copyWith(
                      repositoryIndexInput:
                          RepositoryIndexInput.dirty(repositoryIndex!),
                    ),
                  ),
                );
          },
        );
      },
    );
  }
}

class WalletIDView extends StatelessWidget {
  const WalletIDView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddMinerBloc, AddMinerState>(
      builder: (context, state) {
        final input = state.form.walletIDInput;
        return TextFormField(
          decoration: InputDecoration(
            hintText: context.l10n.addMinerAddressLabel,
            errorText: parseValidationError(context, input.error),
            focusedBorder: const OutlineInputBorder(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          initialValue: input.pure ? '' : input.value,
          onChanged: (walletID) {
            context.read<AddMinerBloc>().add(
                  AddMinerEvent.inputChanged(
                    form: state.form.copyWith(
                      walletIDInput: WalletIDInput.dirty(walletID),
                    ),
                  ),
                );
          },
        );
      },
    );
  }
}

class AddMinerSubmitButton extends StatelessWidget {
  const AddMinerSubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddMinerBloc, AddMinerState>(
      builder: (context, state) {
        final status = Formz.validate(state.form.inputs);
        final isLoading = state.maybeWhen(
          submitInProgress: (_) => true,
          orElse: () => false,
        );
        return ElevatedButton(
          onPressed: (status == FormzStatus.valid) &&
                  (status != FormzStatus.pure) &&
                  !isLoading
              ? () {
                  context
                      .read<AddMinerBloc>()
                      .add(AddMinerEvent.submitted(form: state.form));
                }
              : null,
          child: isLoading
              ? SizedBox(
                  height: 15,
                  width: 15,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.primary,
                    ),
                    strokeWidth: 2,
                  ),
                )
              : Text(context.l10n.saveButton),
        );
      },
    );
  }
}
