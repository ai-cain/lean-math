# Lean Math: Taller de Análisis II

Este proyecto contiene formalizaciones matemáticas utilizando el asistente de pruebas **Lean 4** y su biblioteca de matemáticas **Mathlib**.

## 🚀 Contenido del Proyecto

Actualmente, el proyecto se enfoca en temas de Análisis Funcional y Espacios con Producto Interno:

*   **Taller de Análisis 2**:
    *   `taller-analisis2/clase1.lean`: Demostración formal del **Teorema de Pitágoras** en espacios con producto interno sobre cuerpos `RCLike` (Reales o Complejos).

## 🛠️ Requisitos e Instalación

Para trabajar en este proyecto, necesitas tener instalado Lean 4 (vía `elan`).

1.  **Clonar el repositorio**:
    ```powershell
    git clone <url-del-repositorio>
    cd lean_math
    ```

2.  **Descargar caché de Mathlib**:
    Para evitar compilar toda la biblioteca matemática (lo cual toma mucho tiempo), descarga los archivos precompilados:
    ```powershell
    lake exe cache get
    ```

3.  **Compilar el proyecto**:
    ```powershell
    lake build
    ```

## 📚 Estructura de Archivos

```text
lean_math/
├── .lake/                # Archivos de build y dependencias
├── taller-analisis2/     # Contenido del curso de Análisis II
│   └── clase1.lean      # Teorema de Pitágoras
├── lakefile.lean         # Configuración del paquete y dependencias
└── lean-toolchain        # Versión específica de Lean utilizada
```

## ✨ Ejemplo de Código

Fragmento del Teorema de Pitágoras implementado:

```lean
theorem pitagoras (x y : V) (h : ⟨x, y⟩ = 0) : ‖x + y‖^2 = ‖x‖^2 + ‖y‖^2 := by
  rw [norm_add_sq_real x y]
  rw [h]
  ring
```

---
Desarrollado con ❤️ usando Lean 4.