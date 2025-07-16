-- Main init.lua - Central import point for the entire project
local digital_logic = {}

-- Import all modules
digital_logic.gates_2inputs = require("basic_gates.gates_2inputs")
digital_logic.gates_3inputs = require("basic_gates.gates_3inputs")
digital_logic.half_adder = require("adders.half_adder")
digital_logic.full_adder = require("adders.full_adder")
digital_logic.multi_bit_adder = require("arithmetic.multi-bit_adder")
digital_logic.multi_bit_multiplier = require("arithmetic.multi-bit_multiplier")
digital_logic.multi_bit_sub = require("arithmetic.multi-bit_sub")
digital_logic.utils = require("utils.display_utils")

-- Easy access functions
digital_logic.AND = digital_logic.gates_2inputs.AND
digital_logic.OR = digital_logic.gates_2inputs.OR
digital_logic.NOT = digital_logic.gates_2inputs.NOT
digital_logic.XOR = digital_logic.gates_2inputs.XOR
digital_logic.NOR = digital_logic.gates_2inputs.NOR

return digital_logic
