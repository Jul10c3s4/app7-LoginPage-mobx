import 'package:app7_mobx/login.dart';
import 'package:app7_mobx/pages/page_login.dart';
import 'package:app7_mobx/store/list_store.dart';
import 'package:app7_mobx/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleList = TextEditingController();
  List_store listTask = List_store();
  bool tipeList = true;
  List<String> listSearch = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.fromLTRB(32, 0, 32, 32),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tarefas: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.logout_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Provider.of<Login>(context, listen: false).logOut();
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => PageLogin()));
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.clear,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      listTask.list.clear();
                    },
                  )
                ],
              )),
          Expanded(
              child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 16,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Observer(builder: (_) {
                    return CustomTextFiled(
                        controler: titleList,
                        title: 'Digite o nome da tarefa: ',
                        obscure: false,
                        sufixIcon: listTask.isFormValid
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    tipeList = true;
                                    listTask.addTodo();
                                    titleList.text = "";
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 25,
                                ))
                            : null,
                        prefixIcon: listTask.isFormValid
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    listTask.listSearch.clear();
                                    tipeList = false;
                                    listTask.list.forEach((element) {
                                      if (element.title ==
                                          titleList.text.toString()) {
                                        listTask.creatListSearch(element);
                                      }
                                    });
                                  });

                                  ;
                                },
                                icon: Icon(
                                  Icons.search,
                                  size: 25,
                                ))
                            : null,
                        callback: listTask.setNewTodoTitle,
                        textInput: TextInputType.text,
                        enabled: true);
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(child: Observer(builder: (_) {
                    return ListView.separated(
                        itemBuilder: (_, index) {
                          return ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              tileColor: tipeList
                                  ? listTask.list[index].done
                                      ? Colors.red
                                      : Colors.white
                                  : listTask.listSearch[index].done
                                      ? Colors.red
                                      : Colors.green,
                              title: Text(
                                '${tipeList ? listTask.list[index].title : listTask.listSearch[index].title}',
                                style: TextStyle(
                                    decoration: tipeList
                                        ? listTask.list[index].done
                                            ? TextDecoration.lineThrough
                                            : null
                                        : listTask.listSearch[index].done
                                            ? TextDecoration.lineThrough
                                            : null,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              leading: Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: Colors.lightBlue,
                                  value: tipeList
                                      ? listTask.list[index].done
                                      : listTask.listSearch[index].done,
                                  onChanged: (value) {
                                    setState(() {
                                      tipeList
                                          ? listTask.list[index].toggleDone()
                                          : listTask.listSearch[index]
                                              .toggleDone();
                                    });
                                  }),
                              trailing: IconButton(
                                  onPressed: () {
                                    tipeList
                                        ? listTask
                                            .deleteList(listTask.list[index])
                                        : {
                                            listTask.deleteListSearch(
                                                listTask.listSearch[index]),
                                            listTask.list.forEach((element) {
                                              if (element.title ==
                                                  titleList.text.toString()) {
                                                listTask.deleteList(element);
                                              }
                                              ;
                                            })
                                          };
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.lightBlueAccent,
                                  )));
                        },
                        separatorBuilder: (_, __) {
                          return const Divider();
                        },
                        itemCount: tipeList
                            ? listTask.list.length
                            : listTask.listSearch.length);
                  }))
                ],
              ),
            ),
          ))
        ],
      ),
    ));
  }
}
