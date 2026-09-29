// For the computers whith 2 Qubits
OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[10]; 

h q[0]; 

measure q[0] -> c[0];

// For the IBM Heron

qreg q[133];
creg c[256];

h q[0];

measure q[0] -> c[0];
