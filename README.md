# Digital Logic Circuits Fundamentals

A comprehensive practice repository for implementing fundamental digital logic circuits and arithmetic operations using Lua programming language.

## Overview

This repository contains implementations of basic digital logic gates, arithmetic circuits, and multi-bit operations. It's designed as a learning resource for understanding how digital circuits work at a fundamental level through software simulation.

## What I've Accomplished

### ✅ Completed Components

- [x] **Basic Logic Gates (2-input)** - `gates_2inputs.lua`
  - [x] AND gate implementation
  - [x] OR gate implementation  
  - [x] NOT gate implementation
  - [x] XOR gate implementation
  - [x] Modular design with return table for reusability

- [x] **Extended Logic Gates (3-input)** - `gates_3inputs.lua`
  - [x] 3-input AND gate
  - [x] 3-input OR gate
  - [x] 3-input XOR gate
  - [x] Complete truth table testing

- [x] **Half Adder Circuit** - `half_adder.lua`
  - [x] Sum and carry output generation
  - [x] Integration with 2-input gates module
  - [x] Truth table validation

- [x] **Full Adder Circuit** - `full_adder.lua`
  - [x] 3-input addition with carry-in
  - [x] Sum and carry-out generation
  - [x] Complete truth table testing

- [x] **Multi-bit Addition** - `multi-bit_adder.lua`
  - [x] Variable-length binary number addition
  - [x] Proper carry propagation
  - [x] Overflow handling

- [x] **Multi-bit Multiplication** - `multi-bit_multiplier.lua`
  - [x] Binary multiplication using shift-and-add algorithm
  - [x] Integration with multi-bit adder
  - [x] LSB-first bit representation

- [x] **Multi-bit Subtraction** - `multi-bit_sub.lua`
  - [x] Two's complement subtraction
  - [x] Proper borrow handling
  - [x] Integration with existing components

## Next Steps for Practice

### 🔄 Intermediate Digital Circuits

- [ ] **Flip-Flops and Latches**
  - [ ] SR Latch
  - [ ] D Flip-Flop
  - [ ] JK Flip-Flop
  - [ ] T Flip-Flop

- [ ] **Counters and Registers**
  - [ ] Binary up/down counter
  - [ ] Shift register
  - [ ] Parallel-in-serial-out register

- [ ] **Multiplexers and Demultiplexers**
  - [ ] 2:1, 4:1, 8:1 multiplexers
  - [ ] 1:2, 1:4, 1:8 demultiplexers
  - [ ] Encoder/Decoder circuits

### 🚀 Advanced Arithmetic Circuits

- [ ] **Enhanced Arithmetic Operations**
  - [ ] Binary division circuit
  - [ ] Floating-point representation
  - [ ] BCD (Binary-Coded Decimal) arithmetic

- [ ] **ALU (Arithmetic Logic Unit)**
  - [ ] Combined arithmetic and logic operations
  - [ ] Control signals implementation
  - [ ] Status flags (zero, carry, overflow)

### 🔧 System-Level Components

- [ ] **Memory Systems**
  - [ ] RAM cell simulation
  - [ ] ROM implementation
  - [ ] Cache memory basics

- [ ] **CPU Components**
  - [ ] Instruction decoder
  - [ ] Program counter
  - [ ] Simple processor simulation

### 📊 Testing and Optimization

- [ ] **Comprehensive Testing Framework**
  - [ ] Automated truth table generation
  - [ ] Performance benchmarking
  - [ ] Edge case validation

- [ ] **Code Quality Improvements**
  - [ ] Error handling and validation
  - [ ] Code documentation and comments
  - [ ] Modular architecture refinement

## Learning Objectives Met

✅ **Fundamental Understanding**
- Boolean algebra implementation
- Truth table verification
- Circuit composition and modularity

✅ **Arithmetic Operations**
- Binary addition with carry propagation
- Multiplication through repeated addition
- Subtraction using two's complement

✅ **Programming Skills**
- Lua language proficiency
- Modular programming design
- Algorithm implementation

## Repository Structure

```
├── gates_2inputs.lua        # Basic 2-input logic gates
├── gates_3inputs.lua        # Extended 3-input logic gates
├── half_adder.lua          # Half adder circuit
├── full_adder.lua          # Full adder circuit
├── multi-bit_adder.lua     # Multi-bit addition
├── multi-bit_multiplier.lua # Multi-bit multiplication
├── multi-bit_sub.lua       # Multi-bit subtraction
└── README.md               # This file
```

## How to Use

Each file can be run independently with `lua filename.lua` or imported as a module for use in other circuits. The basic gates module (`gates_2inputs.lua`) serves as the foundation for all other implementations.

---

*This repository represents a journey through digital logic fundamentals, building from basic gates to complex arithmetic operations. Each implementation reinforces core concepts in computer engineering and digital design.*
