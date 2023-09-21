import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_application/core/theme/app_space.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:to_do_application/feature/todo/cubit/todo_cubit.dart';

class TodoFormDialog extends StatelessWidget {
  const TodoFormDialog({Key? key}) : super(key: key);

  static final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppSpace.verticalL,
              const Text("Tell me what u need to do ?"),
              AppSpace.verticalM,
              FormBuilderTextField(
                name: 'title',
                validator: FormBuilderValidators.required(
                  errorText: "Please tell me what u need to do ?",
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close'),
                  ),
                  TextButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      if (_formKey.currentState?.saveAndValidate() ?? false) {
                        context.read<TodoCubit>().addTodo(_formKey.currentState!.value);
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('Add'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
