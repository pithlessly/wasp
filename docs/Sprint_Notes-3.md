
# Sprint Note: Sprint 2, Supporting Separate Compilation with Virtines

**Team:** Supporting Separate Compilation with Virtines | **Sprint dates:** 10-26-2026 to 11-06-2026 | **Date submitted:** 11-07-2026

## 1. Working Software Evidence

Our current work is in the repo [https://github.com/pithlessly/wasp](https://github.com/pithlessly/wasp), but very few commits have been made on the main branch apart from documentation. A large part of our work has been in updating Wasp to LLVM 23, which is not yet functional. We are currently working on the migration to the new LLVM pass manager, as discussed in the attached video.

## 2. What Got Done, and Who

### Done

#### Wasp frontend working in LLVM 14

- Owner: Christine Lin
- Status: Wasp exhibits a working frontend plugin in LLVM 14, but not yet full funcitonality.
- Reviewed and accepted by: Jonas Carew
- Marked: Christine's most consequential entry this sprint

#### Workshop 5: Identify Success Metrics

- Location: Final commit [here](https://github.com/pithlessly/wasp/commit/4319fc8caa95820cd69af9fc1645a1706bdd7d83), but many incremental commits as well.
- Owner: Jonas Carew and Christine Lin
- Reviewed and accepted by: Jonas Carew and Christine Lin
- Review Comments: Make the metrics quantitative rather than qualitative.

#### RFC for LLVM 23 Migration Updated

- Location: Found in docs/rfcs/
- Owner: Jonas Carew
- Review and accepted by: Christine Lin
- Marked: Jonas's most consequential (completed) entry this sprint

### In Progress

#### Wasp Pass Manager Migration to LLVM 23

- Location: working\_to\_LLVM23 branch
- Owner: Jonas Carew
- Status: Working to understand the changes to the LLVM pass manager made in LLVM 21.

## 3. Top Risk and Decisions

- Top risk: Security vulnerabilities may arise while doing the rewrites, nullifying the point of virtines.
- Decision needed: Christine led the decision to move away from working on LLVM 14 in favor of working towards getting Wasp functional in LLVM 23 with the pass manager and opaque pointer functionality.
- Previous note's decision: There was no decision need last sprint.
- Other decisions concluded this sprint, and who chaired each (optional):

## 4. Judgment Layer (human-written, about five lines)

The team has decided to move away from LLVM 14 and fully onto getting Wasp working in LLVM 23. We have encountered two main roadblocks towards this migration so far. The first is the new pass manager introduced in LLVM 21, which requires us to rewrite much of the pass manager code for Wasp. The second is much more troublesome, as LLVM began supporting opaque pointers in LLVM 17, which creates many underlying issues for teh structures of virtines, that the team is still considering on how to resolve.
