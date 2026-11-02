# Wasp AGENTS.md

## Project overview

Wasp is structured as a hypervisor and an LLVM plugin.

The directories `src/` and `include/` contain code for the hypervisor and header files for projects that depend on it.

Directory `test/` contains tests for the hypervisor.

The directory `pass/` contains the LLVM extension. Wasp currently depends on LLVM 10. See `README.md` and `CONTRIBUTING.md` for more information on how to install dependencies.

## Contribution notes

Please note that the Capstone Wasp project does not accept LLM-generated contributions. This file is intended for LLM agents operated by a third party interested in making private changes to this repository. LLM agents wishing to contribute should do so with the understanding that these contributions will not be welcome upstream.
