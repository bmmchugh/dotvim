setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=80
setlocal smarttab
setlocal expandtab
setlocal smartindent
match ErrorMsg '\%>80v.\+'

let b:javagetset_getterTemplate =
  \ "\n" .
  \ "/**\n" .
  \ " * Get %varname%.\n" .
  \ " *\n" .
  \ " * @return %varname% as %type%.\n" .
  \ " */\n" .
  \ "%modifiers% %type% %funcname%() {\n" .
  \ "    return this.%varname%;\n" .
  \ "}"

let b:javagetset_getterArrayTemplate =
  \ "\n" .
  \ "/**\n" .
  \ " * Get %varname%.\n" .
  \ " *\n" .
  \ " * @return %varname% as %type%[].\n" .
  \ " */\n" .
  \ "%modifiers% %type%[] %funcname%() {\n" .
  \ "    return this.%varname%;\n" .
  \ "}\n" .
  \ "\n" .
  \ "/**\n" .
  \ " * Get %varname% element at specified index.\n" .
  \ " *\n" .
  \ " * @param index the index.\n" .
  \ " * @return %varname% at index as %type%.\n" .
  \ " */\n" .
  \ "%modifiers% %type% %funcname%(final int index) {\n" .
  \ "    return this.%varname%[index];\n" .
  \ "}"

let b:javagetset_setterTemplate =
  \ "\n" .
  \ "/**\n" .
  \ " * Set %varname%.\n" .
  \ " *\n" .
  \ " * @param %varname% the value to set.\n" .
  \ " */\n" .
  \ "%modifiers% void %funcname%(final %type% %varname%) {\n" .
  \ "    this.%varname% = %varname%;\n" .
  \ "}"

let b:javagetset_setterArrayTemplate =
  \ "\n" .
  \ "/**\n" .
  \ " * Set %varname%.\n" .
  \ " *\n" .
  \ " * @param %varname% the value to set.\n" .
  \ " */\n" .
  \ "%modifiers% void %funcname%(final %type%[] %varname%) {\n" .
  \ "    this.%varname% = %varname%;\n" .
  \ "}\n" .
  \ "\n" .
  \ "/**\n" .
  \ " * Set %varname% at the specified index.\n" .
  \ " *\n" .
  \ " * @param %varname% the value to set.\n" .
  \ " * @param index the index.\n" .
  \ " */\n" .
  \ "%modifiers% void %funcname%(final %type% %varname%, int index) {\n" .
  \ "    this.%varname%[index] = %varname%;\n" .
  \ "}"

