this is the standard library for slam, also the first package

# Library Reqs

## Fixed

- A class can only, and should, return NULL on failure.
- Detect Segfaults before they happen, and return NULL.
- Classes can use upto 32b of vars before you have to use the heap.
- No Printing out of print procs.
- Never quit!
- Include everything needed in the .slh, include the .slh in the .slm.

## Subject to change

- Dont include extra libs, including a slm without calls!!!
