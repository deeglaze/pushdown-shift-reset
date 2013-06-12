# Concrete semantics for summarization applied to shift/reset

The semantics is shaped in such a way to make widening easier (and indeed, widening is included).
This follows the semantics written in http://arxiv.org/abs/1305.3163 but includes niceties such as
n-ary functions, numbers, let expressions and if expressions.

To switch between the infinite (concrete) allocation strategy along with its concrete δ-axioms, move
the #;#; above either metafunction definition of δ-axioms (concrete is default).

An example program along with how to run it in the normal / widened semantics is at the end of model.rkt