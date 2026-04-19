import Lake
open Lake DSL

package "lean_math" where
  -- add package configuration options here

require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "v4.16.0"

lean_lib «LeanMath» where
  -- add library configuration options here

@[default_target]
lean_exe "lean_math" where
  root := `Main
