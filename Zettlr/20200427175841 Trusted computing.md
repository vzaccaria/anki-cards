# Trusted computing base

Minimal set of hardware and software that must be trusted to ensure that the whole system at a certain point in time meets some security constraints.

Validates integrity and ensure confidentiality through:

- remote attestation: the TCB has randomly generated, immutable asymmetric keys not accessible even to the OS that are used to sign the hash of the code to be executed. The certificate (attestation) can be sent remotely to witness code integrity.
- secure boot: provides attestation for the UEFI firmware

## Hardware 
Fixed hardware parts that are used to sign/verify etc.
- Apple T2
- Google Titan

## Software
The TCB attestates [[20200424180706]] Secure enclaves supported by hardware mechanisms such as: 

- Trustzone
- SGX

Before running, these enclaves must receive remote attestation from the TCB.
Must interact with the untrusted OS; e.g., they must behave correctly 

  
