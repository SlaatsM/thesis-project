(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-38640, 92000] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000010111010) (= i1 #b000000000100010000) (= i1 #b000000000111110001) (= i1 #b000000001101101111) (= i1 #b000000001110011000)))

; Formula constraint
(assert (=> (and (and (bvsle (bvadd i1 (bvmul #b111111111111011001 i1)) #b000000000000000110) (bvsle i1 (bvmul #b000000000001100100 i1))) (and (bvslt i1 i1) (= (bvsub (bvmul #b111111111111010110 i1) #b111111111110111001) i1))) (bvslt (bvsub i1 #b111111111111011011) i1)))

(check-sat)