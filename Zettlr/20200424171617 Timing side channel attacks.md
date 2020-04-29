# Timing side channel attacks

An attack that might break confidentiality, i.e., that public outputs must not interfere with secrets:

- Memory addresses/indices computed from secrets
- Branch computed on secrets
- Inducing page faults that reveal secrets (for example SGX)

Cache partitioning might be a useful mitigation

Confidentiality is dual to **integrity**, i.e., trusted outputs are purely determined by trusted inputs
 
