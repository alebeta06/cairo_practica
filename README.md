# Cairo Práctica - Fundamentos del Lenguaje

Proyecto de práctica básica del lenguaje de programación Cairo, enfocado en aprender los conceptos fundamentales del lenguaje.

## 📚 Descripción

Este proyecto contiene ejercicios y ejemplos prácticos sobre los conceptos básicos de Cairo, incluyendo:

- **Felts**: Tipos de datos felt y operaciones matemáticas
- **Funciones**: Definición y uso de funciones
- **Enteros**: Tipos enteros (u8, u16, u32, u64, u128, u256, i8, i16, i32, i64, i128)
- **Casting**: Conversión entre tipos
- **Result y Option**: Manejo de errores y valores opcionales
- **Enums**: Tipos enumerados
- **Mutabilidad**: Variables mutables e inmutables
- **Snapshots**: Referencias inmutables
- **References**: Referencias y ownership
- **Copy Trait**: Semántica de copia
- **Constraints**: Restricciones y validaciones
- **Arrays**: Arreglos y operaciones con ellos

## 🎥 Tutorial

Este proyecto sigue el tutorial de YouTube:

**🔗 [Cairo Programming Language Tutorial](https://www.youtube.com/watch?v=lW1lVbc5bN4&list=PLMXIoXErTTYV-Pd6tXu0TzsQ2EYQ5bBEh&index=3)**

## 📋 Requisitos

- **Scarb**: Versión 2.13.1 o superior
- **Cairo**: Versión 2.13.1 o superior

## 🚀 Instalación

### Instalar Scarb

```bash
curl --proto '=https' --tlsv1.2 -sSf https://docs.swmansion.com/scarb/install.sh | sh
```

### Verificar instalación

```bash
scarb --version
```

Salida esperada:
```
scarb 2.13.1 (a76aed717 2025-10-30)
cairo: 2.13.1 (https://crates.io/crates/cairo-lang-compiler/2.13.1)
sierra: 1.7.0
arch: x86_64-unknown-linux-gnu
```

## 📁 Estructura del Proyecto

```
cairo_practica/
├── src/
│   ├── lib.cairo              # Módulo principal
│   ├── arrays.cairo           # Operaciones con arreglos
│   ├── casting.cairo          # Conversión de tipos
│   ├── constraints.cairo      # Restricciones y validaciones
│   ├── copy_trait.cairo       # Semántica de copia
│   ├── enums.cairo            # Tipos enumerados
│   ├── felts.cairo            # Tipos felt
│   ├── functions.cairo        # Funciones básicas
│   ├── integers.cairo         # Tipos enteros
│   ├── mutable.cairo          # Mutabilidad
│   ├── references.cairo       # Referencias y ownership
│   ├── result_and_option.cairo # Manejo de errores
│   └── snapshots.cairo        # Snapshots
├── Scarb.toml                 # Configuración del proyecto
├── Scarb.lock                 # Lock de dependencias
└── README.md                  # Este archivo
```

## 🛠️ Comandos Principales

### Compilar el proyecto

```bash
scarb build
```

### Ejecutar tests

```bash
scarb test
```

### Salida de los tests

Al ejecutar `scarb test`, verás la siguiente salida:

```bash
node@f7199f6e51ee:/workspaces/cairo_practica$ scarb test
     Running cairo-test cairo_practica
warn: `scarb cairo-test` is deprecated and will be removed in a future version.
help: please migrate to `snforge` for all your testing needs.
help: to install snforge, please visit: https://foundry-rs.github.io/starknet-foundry/getting-started/installation.html
help: to learn how to migrate, see: https://foundry-rs.github.io/starknet-foundry/getting-started/first-steps.html#using-snforge-with-existing-scarb-projects
   Compiling test(cairo_practica_unittest) cairo_practica v0.1.0 (/workspaces/cairo_practica/Scarb.toml)
    Finished `dev` profile target(s) in 7 seconds
     Testing cairo_practica
running 47 tests
test cairo_practica::felts::tests::test_overflow_felt_should_panic ... ignored
test cairo_practica::integers::tests::test_mixing_types_fail ... ok
test cairo_practica::integers::tests::test_int_overflow_protection ... ok
test cairo_practica::felts::tests::test_implicit_vs_explicit ... ok
test cairo_practica::felts::tests::test_byte_array ... ok
test cairo_practica::integers::tests::test_uint_overflow_protection ... ok
test cairo_practica::integers::tests::test_int_underflow_protection ... ok
test cairo_practica::felts::tests::test_overflow_u256_should_panic ... ok
test cairo_practica::felts::tests::test_math ... ok
test cairo_practica::integers::tests::test_advanced_math ... ok
test cairo_practica::integers::tests::test_uint_underflow_protection ... ok
test cairo_practica::snapshots::tests::test_get_age_return_ownership ... ok
test cairo_practica::felts::tests::test_short_string ... ok
test cairo_practica::functions::tests::test_foo ... ok
test cairo_practica::casting::tests::test_casting_to_smaller_type_that_overflows_3 ... ok
test cairo_practica::integers::tests::test_mixing_types_success ... ok
test cairo_practica::casting::tests::test_casting_to_bigger_type ... ok
test cairo_practica::casting::tests::test_casting_to_smaller_type_that_fits ... ok
test cairo_practica::references::tests::test_return_ownership ... ok
test cairo_practica::integers::tests::test_basic_int_math ... ok
test cairo_practica::copy_trait::tests::test_get_age ... ok
test cairo_practica::references::tests::test_make_person_older_with_reference ... ok
test cairo_practica::enums::tests::simple_enum::test_simple_enum ... ok
test cairo_practica::functions::tests::test_bar ... ok
test cairo_practica::snapshots::tests::test_get_age_with_snapshot ... ok
test cairo_practica::references::tests::test_take_ownership ... ignored
test cairo_practica::result_and_option::tests::test_divide_by_zero_should_fail_method ... ok
test cairo_practica::copy_trait::tests::test_add_one ... ok
test cairo_practica::functions::tests::test_baz ... ok
test cairo_practica::casting::tests::test_casting_to_smaller_type_that_overflows_1 ... ok
test cairo_practica::copy_trait::tests::test_increase_age ... ok
test cairo_practica::enums::tests::enums_with_values::test_enums_with_values ... ok
test cairo_practica::mutable::tests::test_mutability ... ok
test cairo_practica::constraints::tests::test_human_vs_human_fight ... ok
test cairo_practica::result_and_option::tests::test_divide_by_zero_should_fail_match ... ok
test cairo_practica::functions::tests::test_double ... ok
test cairo_practica::mutable::tests::test_constant ... ok
test cairo_practica::result_and_option::tests::test_divide_by_zero_should_error_match_default ... ok
test cairo_practica::constraints::tests::test_fight ... ok
test cairo_practica::integers::tests::test_basic_uint_math ... ok
test cairo_practica::arrays::tests::test_array_macro ... ok
test cairo_practica::casting::tests::test_casting_to_smaller_type_that_overflows_2 ... ok
test cairo_practica::arrays::tests::test_iterate_array ... ok
test cairo_practica::snapshots::tests::test_get_age ... ok
test cairo_practica::mutable::tests::test_shadowing ... ok
test cairo_practica::result_and_option::tests::test_divide_by_zero_should_fail_match_error ... ok
test cairo_practica::result_and_option::tests::test_divide_by_zero_should_fail_enum_shorthand ... ok
test result: ok. 45 passed; 0 failed; 2 ignored; 0 filtered out;
```

### Resumen de Tests

- ✅ **45 tests pasaron**
- ⏭️ **2 tests ignorados**
- ❌ **0 tests fallaron**

## 📦 Dependencias

El proyecto utiliza las siguientes dependencias (definidas en `Scarb.toml`):

```toml
[dependencies]
alexandria_math = "0.7.0"

[dev-dependencies]
cairo_test = "2.13.1"
```

## 📝 Notas

- ⚠️ **Advertencia**: `scarb cairo-test` está deprecado. Se recomienda migrar a `snforge` para testing en el futuro.
- El proyecto está configurado con `enable-gas = false` para simplificar el desarrollo.

## 🔗 Recursos Adicionales

- [Documentación oficial de Scarb](https://docs.swmansion.com/scarb/)
- [Documentación oficial de Cairo](https://www.cairo-lang.org/docs/)
- [Starknet Foundry (snforge)](https://foundry-rs.github.io/starknet-foundry/)

## 📄 Licencia

Este es un proyecto educativo de práctica personal.

---

**Desarrollado siguiendo el tutorial de Cairo Programming Language** 🚀

