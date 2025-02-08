local luasnip = require("luasnip")

luasnip.add_snippets("c", {
	luasnip.parser.parse_snippet(
		"fn",
		[[
/**
 * @brief ${1:Brief description of the function.}

 * ${2:Detailed description of the function.}

 * @param ${3:param1} ${4:Description of the first parameter.}
 * @param ${5:param2} ${6:Description of the second parameter.}
 * @return ${7:Description of the return value.}
 */
          ]]
	)
})
