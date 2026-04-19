import Mathlib.Analysis.InnerProductSpace.Basic

/-!
# Teorema de Pitágoras en Espacios con Producto Interno

Este archivo demuestra el teorema de Pitágoras para espacios con producto interno.
-/

variable {𝕜 V : Type*} [RCLike 𝕜] [NormedAddCommGroup V] [InnerProductSpace 𝕜 V]

/-- **Teorema de Pitágoras**: Si x,y ∈ (V, ⟨·,·⟩) y x ⊥ y, entonces ‖x+y‖² = ‖x‖² + ‖y‖² -/
theorem pitagoras (x y : V) (h : ⟨x, y⟩ = 0) : ‖x + y‖^2 = ‖x‖^2 + ‖y‖^2 := by
  -- En efecto: ‖x+y‖² = ⟨x+y, x+y⟩ = ‖x‖² + 2⟨x,y⟩ + ‖y‖²
  rw [norm_add_sq_real x y]
  -- Como x ⊥ y, tenemos ⟨x,y⟩ = 0
  rw [h]
  -- Por lo tanto: ‖x‖² + 2·0 + ‖y‖² = ‖x‖² + ‖y‖²
  ring
