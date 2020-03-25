# Garbling functor

* This: [[20200322151039]] Garbling functor
* Tags: #definitions #mpc
* References: 
    * [[20200322200109]] Garbling functor classification
    * [[20200322162202]] Garbled gate
* External references: 
    *  [(local) p. 4 of Bellare et al. - 2012 - Foundations of Garbled Circuits.pdf](http://127.0.0.1:3000/zotero/L1VzZXJzL3phY2NhcmlhL2RldmVsb3BtZW50L2dpdGh1Yi9vcmctd3JpdGluZy96b3Rlcm9kYi9zdG9yYWdlL0ZBVzRWWUZYL0JlbGxhcmUgZXQgYWwuIC0gMjAxMiAtIEZvdW5kYXRpb25zIG9mIEdhcmJsZWQgQ2lyY3VpdHMucGRm.pdf#page=4) 

Given any gate $f$ between wires $\gamma_1, \gamma_2$ (inputs) and wire $\gamma_z$ (output), a garbling functor $(G, \eta, \delta)$ is a (probabilistic) endo-functor which is naturally isomorphic to the identity through $\eta$ and $\delta$: 


<iframe src="https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZABgBpiBdUkANwEMAbAVxiRAA0ACAXgAoAdfgFs6OABYAjCcGIBfTgGpOgkeKnAAjLICUAPWCCD-AOZ0hIgPobSyk2csAmQbNkhZpdJlz5CKB+SpaRhY2AWFRSWkAIV0Aaws5RVtVSOAY+K09IyNTczorG0Fcx2dXd09sPAIiMg1A+mZWRBAATR4wlPVEpRUI9Uz9QyL7fIAvUrcPEAxKnyJ-OuoGkOaOvui4hPke8LUNjJ1B-hyRi3H+FzdAmChjeCJQADMAJwghJDIQHAgkfyDGtiPEDUBh0CQwBgABS8VV8IAYMEeOEmT1e70Qn2+SGs-xWIEEMBw+XYwPhYIh0Nm1WaCKRKJALze2OoWMQAGYlsEmvj+GgxFgeJwAOJAkHkqEwuY0xHI8oMtHMr4-DGcgHNQSwBhEiwksXgiVUuHPLDGMTI6jgsBQJAAWjZcimjPRf1ZHNx3IJ2papNB+sp3mp8Jl9KdSDdrL+yw9-E1Xp94v9sLYtPNIEt1vZcgosiAA" width="560"height="415" allowfullscreen="allowfullscreen"></iframe>

Note $0 \simeq \mathbb{B_0^0}, 1 \simeq \mathbb{B_1^0}$, while $\{\gamma_1, \gamma_2, \gamma_z\}$ are singleton sets of wire objects (belonging to $\Gamma$). 
The encoding maps $\eta, \delta$ must be natural transformations between the identity functor $I$ and $G$; these are not known to the execution entity that computes $\phi$.
