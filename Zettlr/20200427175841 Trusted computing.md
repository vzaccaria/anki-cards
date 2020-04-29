# Trusted computing base

Hardware and software that must be trusted to ensure that the whole system at a certain point in time meets some security constraints.

Provides valiate integrity and ensure confidentiality through:

- attestation: the TCB has randomly generated, immutable asymmetric keys not accessible even to the OS that are used to sign the hash of the code to be executed. The certificate (attestation) can be sent remotely.
- secure boot

## Hardware 
Fixed parts that are used to sign/verify etc.
- Apple T2
- Google Titan

## Software
- Trustzone-enabled
- SGX-enabled
Must interact with the OS; e.g., they must behave correctly 

  
