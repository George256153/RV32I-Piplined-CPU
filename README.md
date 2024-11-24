# RV32I-Piplined-CPU

## Overview

This project focuses on the design and implementation of a custom RISC-V processor equipped with specialized features to enhance computational efficiency and versatility. The architecture is tailored for high-performance computing tasks, incorporating a Floating Point Unit (FPU), an advanced Branch Predictor, and a Fast Multiplier. These specialized components extend the processor’s capabilities beyond standard RISC-V instructions, making it suitable for complex numerical computations and control-intensive applications.

## Key Features

### 1. **Instruction Set Architecture (ISA)**
- The RISC-V instruction set is expanded to support custom operations, leveraging the flexibility of opcode and func3/func7 fields for enhanced functionality.
- Immediate values and register usage are optimized for high-performance specialized tasks.

### 2. **Core Processor Architecture**
- **Pipeline Stages**:
  - **Instruction Fetch (IF)**: Seamlessly retrieves instructions with high-throughput capability.
  - **Instruction Decode (ID)**: Efficiently decodes both standard and custom instructions while sourcing operands.
  - **Execution (EX)**: Supports integer and floating-point operations with minimal latency.
  - **Memory Access (MEM)**: Handles aligned and unaligned memory operations effectively.
  - **Write Back (WB)**: Ensures precise updates to the register file for subsequent operations.

### 3. **Specialized Functions**
 - **Floating Point Unit (FPU)**:
   - IEEE 754 compliant for single-precision floating-point operations.
   - Supports basic arithmetic (add, subtract, multiply, divide) and integer-to-floating-point conversions.
   - Optimized pipeline minimizes latency while maintaining precision.
   - Handles special cases like NaN, infinities, and denormalized numbers with robust exception management.
 
 - **Branch Predictor**:
   - One-level bimodal predictor for efficient control flow.
   - High accuracy by adapting to branching patterns, reducing pipeline stalls.
   - Compact and efficient design balances performance and hardware overhead.

 - **Fast Multiplier**:
   - Booth encoding and partial product reduction for high-speed multiplication.
   - Handles both signed and unsigned operations with low latency.
   - Scalable for extended precision and larger word sizes.

### 4. **Pipeline Hazard Handling**
- Employs advanced forwarding and stall management techniques to resolve data hazards.
- Structural hazards are minimized through efficient resource allocation and clock cycle synchronization.

### 5. **Extensibility**
- Modular design facilitates future extensions to support additional specialized instructions, making the processor adaptable to evolving application demands.

## Objectives

1. **Advanced Processor Architecture Design**:
   - Architect a pipelined RISC-V processor capable of executing both standard and extended instruction sets with enhanced precision and computational efficiency.
   - Integrate specialized hardware modules, including a Floating Point Unit (FPU), branch prediction unit, and fast multiplier, to maximize functionality and overall system performance.

2. **Specialized Module Design**:
   - Develop a robust floating-point unit compliant with the IEEE 754 standard, focusing on precision, rounding, exception handling, and efficient pipeline integration.
   - Design an accurate and efficient branch prediction mechanism to minimize control hazards, leveraging advanced prediction algorithms to improve throughput.
   - Engineer a high-speed fast multiplier optimized for low-latency operation, supporting both signed and unsigned integer multiplications, with scalability for extended precision and larger word sizes.

3. **Comprehensive Simulation and Validation**:
   - Utilize sophisticated simulation frameworks and testbenches to analyze pipeline behavior across diverse computational scenarios, including integer-intensive, floating-point-heavy, and branch-dependent workloads.
   - - Design comprehensive test cases to evaluate functionality and performance of all modules, including corner cases for arithmetic operations, branch prediction accuracy, and fast multiplier handling of edge scenarios.
   - Perform synthesis, post-simulation, and physical layout design to ensure the design meets timing, area, and power constraints.
- Verify layout correctness, including floorplanning, routing, and pin mapping, to optimize for manufacturability.

4. **Benchmarking and Performance Analysis**:
   - Benchmark simulation and synthesis results against theoretical performance models to identify and resolve bottlenecks in design.
   - Ensure alignment of post-layout timing and functionality with design objectives, validating overall system reliability and efficiency under practical constraints.

## Expected Outcomes

The processor is designed to achieve:
- Execute standard and extended RISC-V instructions accurately and efficiently.
- Accurate and efficient execution of floating-point operations, adhering to IEEE 754 standards.
- Achieve high prediction accuracy through advanced branch prediction mechanisms.
- Low-latency and high-speed arithmetic operations with the fast multiplier, suitable for performance-critical applications.
- Maintain stable and reliable operation under diverse computational scenarios, with efficient memory handling and pipeline management.

## Pipeline Architecture Diagram
