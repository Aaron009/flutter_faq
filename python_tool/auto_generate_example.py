# -*- coding: utf-8 -*

"""
自动添加文件示例
"""
import os
import re

if __name__ == '__main__':

    example_files = []
    main_folder = "lib/"
    for root, dirs, files in os.walk(main_folder):
        if root != main_folder:
            continue
        for f in files:
            f = f.decode('GB2312').encode("utf-8")
            c = os.path.splitext(f)
            if (c[1] == '.dart'):
                if (c[0] != 'main'):
                    example_files.append(c[0])

    main_path = main_folder + "main.dart"
    with open(main_path, mode='r') as f:
        main_content = f.read()

        ret = re.search(r"material.dart';\n([\w\W]*)void", main_content)
        temp_str = ret.group(1)

        # 检测已经添加过的代码。
        add_list = re.findall(r"import 'package:flutter_app/(.*)\.dart\' as Error[\d+];?", temp_str)
        add_list_length = len(add_list)
        remove_count = 0
        for index in range(0, len(example_files)):
            file_name = example_files[index - remove_count]
            if file_name in add_list:
                remove_count += 1
                example_files.remove(file_name)

        import_content = "\n"
        for index in range(0, len(example_files)):
            file_name = example_files[index]
            import_content += "import 'package:flutter_app/{}.dart' as Error{};\n".format(file_name,
                                                                                          add_list_length + index + 1)
        import_content += '\n'
        import_content = temp_str.replace('\n\n', import_content)
        main_content = main_content.replace(temp_str, import_content)

        child_content = "\n"
        for index in range(0, len(example_files)):
            file_name = example_files[index]
            child_content += "          getListTitle('{}', new Error{}.MainApp()),\n".format(file_name,
                                                                                             add_list_length + index + 1)

        ret = re.search(r"body: ListView\([\w\W]*children: <Widget>\[([\w\W]*)\]", main_content)
        temp_str = ret.group(1)
        find_index = temp_str.rfind('\n\n        ')
        sub_str = temp_str[0:find_index]
        child_content = sub_str + child_content
        child_content += '\n        '
        main_content = main_content.replace(temp_str, child_content)

    with open(main_folder + "main.dart", mode='w+') as main_f:
        main_f.write(main_content)
