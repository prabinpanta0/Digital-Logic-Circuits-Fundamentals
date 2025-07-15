# Digital Logic Circuits - Lua Implementation

A learning project implementing digital logic circuits in Lua, including basic gates, adders, and arithmetic operations.

## Project Structure

```
Lua_Practice-DSA/
├── init.lua                      # Main entry point - imports everything
├── basic_gates/                  # Basic logic gates
│   ├── gates_2inputs.lua         # AND, OR, NOT, XOR (2 inputs)
│   └── gates_3inputs.lua         # 3-input versions
├── adders/                       # Adder circuits
│   ├── half_adder.lua           # Half adder
│   └── full_adder.lua           # Full adder
├── arithmetic/                   # Arithmetic operations
│   ├── multi-bit_adder.lua      # Multi-bit addition
│   ├── multi-bit_multiplier.lua # Multi-bit multiplication
│   └── multi-bit_sub.lua        # Multi-bit subtraction
├── utils/                        # Utility functions
│   └── display_utils.lua        # Binary display and conversion
└── examples/                     # Example usage
    ├── test_gates.lua           # Test basic gates
    ├── test_adders.lua          # Test adders
    ├── test_multiplication.lua  # Test multiplication
    └── calculator_demo.lua      # Simple calculator demo
```

## Quick Start

### Method 1: Using init.lua (Recommended)
```lua
local dl = require("init")  -- Import everything

-- Use basic gates
local result = dl.AND(true, false)  -- false

-- Use adders
local sum = dl.multi_bit_adder.multi_bit_adder({1,0,1}, {1,1,0})

-- Use utilities
print(dl.utils.binary_to_string({1,0,1,0}))  -- "0101"
```

### Method 2: Direct imports
```lua
local gates = require("basic_gates.gates_2inputs")
local adder = require("adders.full_adder")
local multiplier = require("arithmetic.multi-bit_multiplier")
```

## Running Examples

```bash
# Test basic gates
lua examples/test_gates.lua

# Test adders
lua examples/test_adders.lua

# Test multiplication
lua examples/test_multiplication.lua

# Run calculator demo
lua examples/calculator_demo.lua
```

## Binary Number Format

- **LSB (Least Significant Bit) first**: `{1,0,1,0}` represents `0101` in binary
- **Display format**: MSB first, so `{1,0,1,0}` displays as `"0101"`
- **Decimal conversion**: `{1,0,1,0}` = 1×2⁰ + 0×2¹ + 1×2² + 0×2³ = 5

## Available Functions

### Basic Gates (2-input)
- `AND(a, b)` - Logical AND
- `OR(a, b)` - Logical OR  
- `NOT(a)` - Logical NOT
- `XOR(a, b)` - Logical XOR

### Adders
- `half_adder(a, b)` - Returns sum, carry
- `full_adder(a, b, cin)` - Returns sum, carry
- `multi_bit_adder(a, b)` - Multi-bit addition

### Arithmetic
- `multi_bit_multi(a, b)` - Multi-bit multiplication
- `multi_bit_sub(a, b)` - Multi-bit subtraction

### Utilities
- `binary_to_string(array)` - Convert to display string
- `binary_to_decimal(array)` - Convert to decimal
- `decimal_to_binary(num, bits)` - Convert decimal to binary
- `print_binary_operation(a, b, result, op)` - Pretty print operation

## What I've Accomplished

### ✅ Completed Components

- [x] **Basic Logic Gates (2-input)** - `basic_gates/gates_2inputs.lua`
  - [x] AND gate implementation
  - [x] OR gate implementation  
  - [x] NOT gate implementation
  - [x] XOR gate implementation
  - [x] Modular design with return table for reusability

- [x] **Extended Logic Gates (3-input)** - `basic_gates/gates_3inputs.lua`
  - [x] 3-input AND gate
  - [x] 3-input OR gate
  - [x] 3-input XOR gate
  - [x] Complete truth table testing

- [x] **Half Adder Circuit** - `adders/half_adder.lua`
  - [x] Sum and carry output generation
  - [x] Integration with 2-input gates module
  - [x] Truth table validation

- [x] **Full Adder Circuit** - `adders/full_adder.lua`
  - [x] 3-input addition with carry-in
  - [x] Sum and carry-out generation
  - [x] Complete truth table testing

- [x] **Multi-bit Addition** - `arithmetic/multi-bit_adder.lua`
  - [x] Variable-length binary number addition
  - [x] Proper carry propagation
  - [x] Overflow handling

- [x] **Multi-bit Multiplication** - `arithmetic/multi-bit_multiplier.lua`
  - [x] Binary multiplication using shift-and-add algorithm
  - [x] Integration with multi-bit adder
  - [x] LSB-first bit representation

- [x] **Multi-bit Subtraction** - `arithmetic/multi-bit_sub.lua`
  - [x] Two's complement subtraction
  - [x] Proper borrow handling
  - [x] Integration with existing components

- [x] **Project Organization** - `init.lua`, `utils/`, `examples/`
  - [x] Centralized import system
  - [x] Utility functions for binary operations
  - [x] Example files and demos
  - [x] Clean modular architecture

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

## Learning Notes

This project is organized for learning digital logic concepts:

1. **Basic Gates**: Start with simple AND, OR, NOT, XOR operations
2. **Adders**: Build up from half-adder to full-adder to multi-bit
3. **Arithmetic**: Implement multiplication and subtraction using adders
4. **Utilities**: Helper functions for working with binary representations

Each module includes test functions to demonstrate functionality and verify correctness.
