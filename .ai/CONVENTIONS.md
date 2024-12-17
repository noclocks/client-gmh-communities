# R Package Development Conventions

## Contents

[TOC]

---

## General Development Practices

> **Note:** *These guidelines are not specific to any programming language or framework.*

1. Write clean, readable, and maintainable code.
2. Use meaningful and descriptive names for variables, functions, and files.
3. Write comments to explain the purpose of the code, especially for complex logic.
4. Keep functions short and focused on a single task.
5. Conduct code reviews and pair programming to ensure code quality.
6. Use Git for version control with a remote-hosted GitHub repository.
7. Include the following files in all projects:
    - `.gitignore` to exclude unnecessary files.
    - `.gitattributes` to identify project languages for GitHub linguist.
    - `.editorconfig` for consistent coding styles across editors and IDEs.
    - `README.md` for an overview, installation instructions, and usage examples (or `README.Rmd` for R projects).
    - `CHANGELOG.md` (and `NEWS.md` for R projects) to document changes over time.
8. Automate tasks with GitHub Actions (e.g., testing, linting, code coverage).
9. Use `.github/dependabot.yml` to configure Dependabot for automated dependency updates.

---

## R Projects

> **Note:** *These guidelines pertain to R development projects.*

1. Structure almost every R project as an R package for better organization, documentation, dependency management, and reusability.
2. Use RStudio as the primary IDE and include a `.Rproj` file for project configurations.
3. Recommended R tools for development:
    - **Package Management:** `usethis`, `devtools`
    - **Documentation:** `roxygen2`
    - **Testing:** `testthat`
    - **Static Code Analysis:** `lintr`
    - **Code Formatting:** `styler`
    - **Test Coverage:** `covr`
    - **Package Website:** `pkgdown`
    - **Dependency Management:** `attachment`, `renv` (optional)
4. Use `R CMD check` to check for errors and warnings.
5. Optional tools:
    - `codemetar::write_codemeta()` for generating `codemeta.json`.
    - `goodpractice` to identify common issues.

---

## General R Code Style

1. Follow the [Tidyverse Style Guide](https://style.tidyverse.org/) with exceptions outlined below.
2. Use **2 spaces** for indentation.
3. Place spaces around all operators (e.g., `+`, `-`, `<-`, `=`).
4. Avoid spaces directly inside parentheses or brackets (e.g., `function(arg1, arg2)`, not `function( arg1, arg2 )`).
5. Limit lines to **120 characters**, but ideally only **80-100 characters**.
6. Prefer explicit function declarations over anonymous functions for clarity.
7. Use the **One True Brace Style (OTBS)** for braces:
    ```r
    if (condition) {
      do_something()
    } else {
      do_something_else()
    }
    ```
8. Use the **native R pipe operator (`|>`)** over `%>%`.
9. Always namespace package functions (e.g., `dplyr::mutate`).
10. Prefer "long" code to "wide" code in contexts like Shiny apps.

---

## R Naming Conventions

1. Use `snake_case` for variables and functions, avoiding `lowerCamelCase`.
2. Use `UpperCamelCase` for `R6` class names.
3. Use `UPPER_SNAKE_CASE` for environment variables and constants.
4. Use a consistent format for function names:
    - `verb_noun()` for general-purpose functions (e.g., `run_app()`).
    - `noun_verb()` for related sets of functions (e.g., `config_load()`).
5. Prefix private/internal functions with a dot (`.`).
6. Use lowercase for directories and filenames.
7. For non-R files, follow language-specific conventions.

---

## R Development Practices

1. Avoid hardcoding values. Use variables, constants, or configuration files instead.
2. Use inline comments sparingly to clarify logic and structure.
3. Include a script header in all R files with metadata:

    ```r
    #  ------------------------------------------------------------------------
    #
    # Title : Internal Data Preparation
    #    By : Jane Doe <jane.doe@example.com>
    #  Date : 2024-12-15
    #
    #  ------------------------------------------------------------------------

    # source ------------------------------------------------------------------
    source("data-raw/scripts/excel.R")

    # data --------------------------------------------------------------------
    usethis::use_data(..., internal = TRUE, overwrite = TRUE)
    ```

---

## Roxygen2 Documentation

1. Use `roxygen2` comments for documenting R functions.
2. All exported functions should include:
    - `@title` (do not have to include the`@title` tag, just the title itself)
    - `@description` (prefer to explicitly include the `@description` tag on its own separate line to distinguish from the title.
    - `@param` tags
    - `@returns` (Avoid the legacy `@return` and leverage the plural `@returns` tag in all cases)
    - `@export` for all exported functions, data, etc.
    - `@importFrom` Be thorough and include everything imported. The `prefixer` package is useful here with its `@importFrom` function/add-in.
3. Recommended optional tags:
    - `@examples`, `@examplesIf`, and/or `@example examples/ex_*.R`
    - ``@seealso`
    - `@details`
    - `@section`
4. Use `@inheritParams` and `@inheritDotParams` to avoid repetitive documentation.
5. Use `@family` to group related functions.
6. Document package-level details in `R/<pkgname>-package.R`.
7. Separate each “section”of a block with an empty line.

Examples:

```r
#' Add Loading Spinners to Outputs                                          Title at top on its own line without the @title tag
#'                                                                                                 Empty Lines to separate "sections"
#' @description                                                                           @description tag on its own isolated line
#' Adds a loading spinner to a Shiny output element.              Complete sentences.
#'
#' @param output The output element.                                    All parameters taken into account
#' @inheritDotParams shinycustomloader::withLoader             Leveraging inheritence
#'
#' @returns                                                                                Use @returns, not @return
#' The output element with the spinner added.
#'
#' @seealso [shinycustomloader::withLoader()]
#'
#' @export
#'
#' @importFrom shinycustomloader withLoader
with_loader <- function(output, ...) {
  shinycustomloader::withLoader(output, ...)
}
```

---

## Package Structure

1. Organize code into standard R package directories:

    ```plaintext
    +---R/
    +---man/
    +---tests/
    +---vignettes/
    +---data/
    +---data-raw/
    +---inst/
    +---dev/
    ```

2. Key folder purposes:
    - `R/`: Core package logic.
    - `man/`: Function documentation (`.Rd` files).
    - `tests/`: Unit tests.
    - `vignettes/`: Long-form documentation.
    - `data-raw/`: Raw data and preparation scripts.
    - `inst/`: Files included with the package (e.g., Shiny apps, configuration, static assets).

3. Include additional folders as needed:
    - `examples/`: Example scripts referenced in documentation.
    - `dev/`: Internal development files.

---

## Additional Considerations

1. Document APIs using OpenAPI specifications.
2. Document data models using DBML or similar.
3. Use `pkgdown` to generate and host documentation websites.
4. Include a "Getting Started" vignette named after the package.
5. Maintain a `_pkgdown.yml` configuration for detailed website customization.
6. Ensure reproducibility with tools like `{targets}` or `{renv}`.
