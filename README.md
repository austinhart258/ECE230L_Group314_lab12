# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name

Dylan Goodell
Austin Hart

## Summary

We built the same 5 state machine two ways, one hot and binary, then ran both on the board. One hot uses 5 flip flops and binary uses 3. We learned that the same machine can be built either way and that one hot is easier to write while binary uses fewer flip flops.

## Lab Questions

### Compare and contrast One Hot and Binary encodings

One hot uses one flip flop per state and has simple logic. Binary uses fewer flip flops but the logic is harder because every bit depends on all the others.

### Which method did your team find easier, and why?

One hot, because we could write the equations straight from the state table without KMaps.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

FPGAs have plenty of flip flops, so one hot is usually fine and faster. Binary is better when there are a lot of states or not many flip flops available.

