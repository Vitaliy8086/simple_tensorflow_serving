�
�}
.
Identity

input"T
output"T"	
Ttype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:"serve*1.8.02v1.8.0-0-g93bc2e2072�
_
keysPlaceholder*#
_output_shapes
:���������*
shape:���������*
dtype0
N
inference_keysIdentitykeys*
T0*#
_output_shapes
:���������

initNoOp ""�
postprocess_function��
�c         C   sU   i g  d 6} d |  k rQ x5 |  d D]& } d j  | � } | d j | � q$ Wn  | S(   Nt   keyss   Token number: {}(   t   formatt   append(   t   output_dictt   postprocess_output_dictt   itemt   item_string(    (    s   ./export_preprocess_model.pyt   postprocess    s    "�
preprocess_function��
�c         C   s}   d d  l  } i g  d 6} d |  k ry xQ |  d D]B } | j | d t �} t d �  | D� � } | d j | � q0 Wn  | S(   Ni����t   keyst   cut_allc         s   s   |  ] } d  Vq d S(   i   N(    (   t   .0t   i(    (    s   ./export_preprocess_model.pys	   <genexpr>   s    (   t   jiebat   cutt   Truet   sumt   append(   t
   input_dictR   t   preprocess_input_dictt   itemt   seg_listt   token_number(    (    s   ./export_preprocess_model.pyt
   preprocess   s    *
serving_defaultl
!
keys
keys:0���������+
keys#
inference_keys:0���������tensorflow/serving/predict