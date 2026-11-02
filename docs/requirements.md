# Contributing Guide

Virtines are a technology developed to provide local containerization of services by using virtual machines deployed at runtime. The hypervisor developed to support virtines is Wasp, which has both a runtime API for invoking virtines and a Clang/LLVM compiler extension. The compiler extension allows developers to bypass having to develop kernel-style build systems by creating a virtine binary at compile time. To do this, a clang wrapper and LLVM compiler pass are used, but a known limitation of the current system is that the call graph must be statically known, and thus virtine functions are not able to invoke functions defined outside of their LLVM compilation unit. Special support is needed for the C standard library and this support is not available for other libraries. This support would be a significant step towards the adoption of virtines by expanding the range of existing code that can be isolated by the Wasp compiler extension.

The functional requirements for this project are still being developed by the team as they gain familiarity with the project.

