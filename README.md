Project Overview
This repository contains Verilog implementations of fundamental combinational logic circuits including Multiplexers, Demultiplexers, Encoders, and Decoders. Each circuit comes with a complete testbench for simulation and verification.

📖 What are Combinational Circuits?
Combinational circuits are digital circuits where the output depends ONLY on the current inputs. They have no memory and no feedback loops.

Key Characteristics:
✅ Output changes immediately when inputs change

✅ No clock required

✅ No storage elements (no flip-flops)

✅ Pure logic functions

📋 Complete Circuit List
Circuit	Type	Inputs	Outputs	Select Lines	Page
MUX	2:1	2 data	1	1	1
MUX	4:1	4 data	1	2	2
DEMUX	1:2	1 data	2	1	3
DEMUX	1:4	1 data	4	2	4
ENCODER	4:2	4	2	-	5
ENCODER	8:3	8	3	-	6
DECODER	2:4	2	4	-	7
DECODER	3:8	3	8	-	8
COMBINED	All	Various	Various	Various	9

🤝 Contributing
Contributions are welcome! Feel free to:

Add more combinational circuits (Adders, Subtractors, Comparators)

Improve existing code

Add more test cases

Fix bugs

Enhance documentation

📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

🌟 Key Features
✅ Well-documented code with comments

✅ Complete testbenches for all modules

✅ Multiple implementation styles for learning

✅ Combined module integrating all circuits

✅ Truth tables for quick reference

✅ Beginner-friendly explanations

📚 Applications in Real World
Circuit	Real-World Application
MUX	Data selection in CPUs, communication systems
DEMUX	Data distribution, memory addressing
Encoder	Keyboard encoding, priority systems
Decoder	7-segment displays, memory selection 
🎓 Learning Outcomes
After studying this repository, you will understand:

✅ Basic concepts of combinational logic design

✅ Multiple Verilog coding styles (dataflow, behavioral)

✅ How to write testbenches for verification

✅ Truth tables and circuit functionality

✅ Real-world applications of each circuit

✅ Simulation and waveform analysis

🛠️ Tools Required
Vivado (Xilinx)

ModelSim (Mentor Graphics)

Icarus Verilog + GTKWave (Open source)

Verilog Simulator of your choice

🙏 Acknowledgments
Digital Logic Design courses

Verilog community

Open source contributors

📧 Contact
For questions or suggestions:

📧 Email: your.email@example.com

🐛 Issues: GitHub Issues page

⭐ Support
If you find this repository helpful, please consider:

Giving it a ⭐ on GitHub

Sharing it with others

Contributing to improve it

Happy Learning & Happy Coding! 🚀🎉
