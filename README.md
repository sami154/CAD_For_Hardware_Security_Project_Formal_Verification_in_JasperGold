
**Overview:**

	Formal verification of AES Module is performed using JasperGold. 16 properties are that are checked in an AES module and in an AES module with bugs. The objective is to find the bugs formally.

**Files:**

	1. verify_q1.tcl: A TCL script to verify the properties in the bug free AES module.
	2. verify_q2.tcl: A TCL script to verify the properties in the buggy AES module.
	3. properties folder contains the "bindings.sva" and "prop_aes.sva files". bindings.sva is the binding file and the "prop_aes.sva" is the file contains all properties.



**Steps:**

	1. Run both TCL scripts to run the jaspergold to check the properties.

