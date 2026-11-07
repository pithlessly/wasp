
# Sprint Note: Sprint 2, Supporting Separate Compilation with Virtines

**Team:** Supporting Separate Compilation with Virtines | **Sprint dates:** 10-26-2026 to 11-06-2026 | **Date submitted:** 11-07-2026

## 1. Working Software Evidence

Our current work is in the repo [https://github.com/pithlessly/wasp](https://github.com/pithlessly/wasp), but Wasp is not back to fully functional yet. Wasp is, however, fully compiling on older versions of LLVM, which is distinctive progress that has been made.

## 2. What Got Done, and Who

### Done

#### [Wasp now builds under LLVM 14](https://github.com/pithlessly/wasp/commit/cd6fea8e7f4a9afd4633d79e260dd3762a27b225)

- Owner: Christine Lin
- Reviewed and accepted by: Jonas Carew

#### Living Documentation Organized in Repo 

- Location: Final commit [here](https://github.com/pithlessly/wasp/commit/4319fc8caa95820cd69af9fc1645a1706bdd7d83), but many incremental commits as well.
- Owner: Jonas Carew
- Reviewed and accepted by: Christine Lin

### In Progress

#### Getting Wasp fully functional in LLVM 14

- Owner: Christine Lin
- Status: Working through errors to return previous functionality.

## 3. Top Risk and Decisions

- Top risk: Security vulnerabilities may arise while doing the rewrites, nullifying the point of virtines.
- Decision needed: No decision is needed this sprint.
- Previous note's decision: The decision on whether or not to update to a newer LLVM version was made mutually by both team members. The result was working in separate branches to both attempt to get original version working on LLVM 14 and to write a new compiler pass on LLVM 23.
- Other decisions concluded this sprint, and who chaired each (optional):

## 4. Judgment Layer (human-written, about five lines)

The team has successfully gotten the Wasp hypervisor to compile under LLVM 14, although it is not fully functional yet. This is good progress towards our plan as Wasp is an integral part of using virtines, and it must be functional before the team can truly begin to work on it. The team has also investigated into how Wasp's compiler pass functions, which has helped determine what must be changed in order to convert to a newer version of LLVM and to support separate compilation, as we hope to in the future.
