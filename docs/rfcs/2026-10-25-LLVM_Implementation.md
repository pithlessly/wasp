<!-- docs/rfcs/YYYY-MM-DD-short-title.md (or docs/adr/, whichever your repo uses) -->

# RFC: Updating Wasp's LLVM Implementation

<!-- Decision record header. Set Status to where the decision stands, and fill in
     the decision date once your team decides.
     The document stays where it is; this header is what makes it a record. -->

| Field | Value |
| --- | --- |
| Author | Jonas Carew, Christine Lin |
| Date | 2026-10-25 |
| Status | Proposed |
| Decision Date | Undecided |
| Deciders | Undecided |
| Superseded By | N/A |

## Problem and Context

Virtines, the technology we are helping to develop further, are managed at runtime through the hypervisor known as Wasp. Wasp currently has several ways for developers to use virtines, but our project focuses primarily on the LLVM extension. Wasp currently has an LLVM extension that allows developers to use a keyword to make a function into a virtine, and it is this compiler extension that we will be targeting for our later developments.

This compiler extension is not currently on the newest version of LLVM and so it may not work well with development environments that rely on newer versions of LLVM. Leaving this unchanged may be fine for some development environments, but is not good for the long term health of the project. The feature additions we plan to make rely directly on this implementation, and so this decision must be made before any other work is done. Because we aim to add new features to the Wasp hypervisor, doing nothing is not a feasible option for the long term, as it would lead to Wasp becoming unavailable to many developers as they move to newer versions of LLVM.

## Options

### Option A: [Update LLVM]

Our first option is updating the compiler extension to the newest version of LLVM. This would take some effort, but provide the team with a higher degree of familarity with the system. LLVM is also widely recognized as one of the most prominent IRs, and so this would keep virtines highly accessible to developers.

### Option B: [Migrate to MLIR]

We can migrate the Wasp hypervisor compiler extension to MLIR, which is widely considered to be the successor to LLVM IR (e.g., as seen in the section "Why MLIR?" of [1]). This would provide the team with a very high familiarity with the internals of Wasp, as they will have re-developed everything, but it would be correspondingly difficult. This may be the better choice for future support though, as developers continue to migrate tools away from LLVM and towards MLIR.

### Option C: Do Nothing

If we do not update the compiler extension, Wasp, and by extension virtines, may not behave well with newer development environments that use newer versions of LLVM (or ones that have migrated from LLVM to MLIR). Migrating to MLIR and updating to newer versions of LLVM will also become increasingly difficult as time goes on and versions differ more and more.

## Analysis

Migrating to MLIR definitively has the highest up-front complexity, but may reduce workload in the long run. On the other hand, updating LLVM may be much simpler for now, but the migration to MLIR may still need to happen further along, meaning our earlier work was wasted. Neither of these options provide distinctive performance benefits, which are usually much more dependent on other pieces of the environment. On the other hand, MLIR often does provide more flexibility, as is its purpose serving as a 'successor' to LLVM.

## Recommendation and Verification Plan

We propose updating to a newer version of LLVM, as it would give the team familiarity with the internals of the Wasp hypervisor, but would not create too much additional development time. Because there are future intentions for updates to the compiler extension that we aim to complete by June 2027, the additional development time that switching to MLIR would incur seems too high for our current scope.

To verify that we have successfully made the switch to a newer version of LLVM, we will use the existing tests (see section "Running Virtine Tests" in [2]) for Wasp to confirm that Wasp retains all of its existing functionality. The number of tests passed gives us a metric showing how faithful this move has been to the original functionality of Wasp.

## Constraints

There are no further constraints applicable to this decision, as Wasp already uses LLVM and MLIR is free and open-source software (through the Apache 2.0 License).

## Delegation and Validation

AI was not used in the process of writing or making this decision. This entire process was validated exclusively by humans.

## Decision

This is the currently proposed decision.

## References

\[1]: [https://www.stephendiehl.com/posts/mlir_introduction/](https://www.stephendiehl.com/posts/mlir_introduction/)

\[2]: [https://github.com/pithlessly/wasp/blob/main/README.md](https://github.com/pithlessly/wasp/blob/main/README.md)

## Revsision Log

| Source                         | Feedback                                                             | Decision | Where or Why                                                                                                                      |
|--------------------------------|----------------------------------------------------------------------|----------|-----------------------------------------------------------------------------------------------------------------------------------|
| Samuel Vernick (Reviewer 1)    | Include a more precise verification plan with metrics.               | Changed  | Recommendation and Verification Plan: a description of the exact methods and metrics used for verification is now included.       |
| Swathi Pappoppula (Reviewer 2) | Include compatibility and regression tests in the verification plan. | Changed  | Recommendation and Verification Plan: the existing compatibility and regression tests have been described and linked in the plan. |
| Kirsten Winters (Instructor)   | Incorporate citations into the document.                             | Changed  | Added citations throughout document when they were relevant to claims made.                                                       |

