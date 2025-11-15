; ---------------------------------------
; Keywords
; ---------------------------------------
[
  "attribute"
  "const"
  "uniform"
  "buffer"
  "shared"
  "coherent"
  "volatile"
  "restrict"
  "readonly"
  "writeonly"
  "atomic_uint"
  "layout"
  "centroid"
  "patch"
  "sample"
  "in"
  "out"
  "inout"
  "flat"
  "smooth"
  "noperspective"
  "break"
  "continue"
  "do"
  "for"
  "while"
  "switch"
  "case"
  "default"
  "if"
  "else"
  "subroutine"
  "true"
  "false"
  "discard"
  "return"
  "precision"
  "struct"
] @keyword

; ---------------------------------------
; Types (from grammar)
; ---------------------------------------
(type_specifier) @type

; The grammar exposes type names as identifiers inside type_specifier,
; but also has builtins:
[
  "void"
  "bool" "int" "uint" "float" "double"
  "bvec2" "bvec3" "bvec4"
  "ivec2" "ivec3" "ivec4"
  "uvec2" "uvec3" "uvec4"
  "vec2"  "vec3"  "vec4"
  "dvec2" "dvec3" "dvec4"
  "mat2" "mat3" "mat4"
  "sampler2D" "sampler3D" "samplerCube"
  "sampler2DShadow" "samplerCubeShadow"
] @type.builtin

; ---------------------------------------
; Builtin variables (grammar: built_in_variable)
; ---------------------------------------
(built_in_variable) @variable.builtin

; ---------------------------------------
; Builtin functions (grammar: built_in_function_name)
; ---------------------------------------
(built_in_function_name) @function.builtin

; ---------------------------------------
; Operators
; ---------------------------------------
[
  "=" "+" "-" "*" "/" "%"
  "==" "!=" "<" "<=" ">" ">="
  "&&" "||" "!"
  "+=" "-=" "*=" "/="
] @operator

; Unary operators (grammar has explicit tokens)
[
  "++" "--"
  "&" "|" "^" "~"
  ">>" "<<"
] @operator

; ---------------------------------------
; Identifiers
; ---------------------------------------
(identifier) @variable

; ---------------------------------------
; Function definitions
; ---------------------------------------
(function_definition
  declarator: (function_declarator
    declarator: (identifier) @function.definition))

; ---------------------------------------
; Function calls
; ---------------------------------------
(function_call_expression
  function: (identifier) @function)

; ---------------------------------------
; Literals (exact node names from the grammar)
; ---------------------------------------
(integer_constant) @number
(float_constant)   @number
(bool_constant)    @boolean

(string_literal) @string

; ---------------------------------------
; Comments (exact node names!)
; ---------------------------------------
(comment) @comment
