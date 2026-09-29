// This is a program for IBM 
// The leyernet paths run in the quantic

OPENQASM 2.0;
include "qelib1.inc";

creg[32];
qreg[1];

measure q[1] -> [0];

qreg[32]
float[32];

qreg[16]
float[16];

qreg[8]
float[8];

measure q[32] -> [0];
measure q[8] -> [0];