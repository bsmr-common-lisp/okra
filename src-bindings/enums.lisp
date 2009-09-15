;;;; enums.lisp
;;;;
;;;; This file has been generated by the Okra Bindings Generator.
;;;; You should not edit this file unless you know what you're doing.
;;;; Any changes you've made directly to this file will not be retained
;;;; when a new instance of this file is generated.
;;;;
;;;; author: Erik Winkels (aerique@xs4all.nl)
;;;;
;;;; See the LICENSE file in the Okra root directory for more info.
;;;;
;;;; This file was generated on: 2009-09-15 10:46:19.

(in-package :okra-bindings)


;;; Enums

(defcenum vertex-data-bind-choice
    (:bind-original 0)
    (:bind-software-skeletal 1)
    (:bind-software-morph 2)
    (:bind-hardware-morph 3))

(defcenum light-types
    (:lt-point 0)
    (:lt-directional 1)
    (:lt-spotlight 2))

(defcenum transform-space
    (:ts-local 0)
    (:ts-parent 1)
    (:ts-world 2))

(defcenum operation-type
    (:ot-point-list 1)
    (:ot-line-list 2)
    (:ot-line-strip 3)
    (:ot-triangle-list 4)
    (:ot-triangle-strip 5)
    (:ot-triangle-fan 6))

(defcenum stat-flags
    (:sf-none 0)
    (:sf-fps 1)
    (:sf-avg-fps 2)
    (:sf-best-fps 4)
    (:sf-worst-fps 8)
    (:sf-triangle-count 16)
    (:sf-all 65535))

(defcenum frame-buffer
    (:fb-front 0)
    (:fb-back 1)
    (:fb-auto 2))

(defcenum illumination-render-stage
    (:irs-none 0)
    (:irs-render-to-texture 1)
    (:irs-render-receiver-pass 2))

(defcenum special-case-render-queue-mode
    (:scrqm-include 0)
    (:scrqm-exclude 1))

(defcenum prefab-type
    (:pt-plane 0)
    (:pt-cube 1)
    (:pt-sphere 2))

(defcenum vertex-animation-type
    (:vat-none 0)
    (:vat-morph 1)
    (:vat-pose 2))

(defcenum billboard-origin
    (:bbo-top-left 0)
    (:bbo-top-center 1)
    (:bbo-top-right 2)
    (:bbo-center-left 3)
    (:bbo-center 4)
    (:bbo-center-right 5)
    (:bbo-bottom-left 6)
    (:bbo-bottom-center 7)
    (:bbo-bottom-right 8))

(defcenum billboard-rotation-type
    (:bbr-vertex 0)
    (:bbr-texcoord 1))

(defcenum billboard-type
    (:bbt-point 0)
    (:bbt-oriented-common 1)
    (:bbt-oriented-self 2)
    (:bbt-perpendicular-common 3)
    (:bbt-perpendicular-self 4))

(defcenum layer-blend-type
    (:lbt-colour 0)
    (:lbt-alpha 1))

(defcenum layer-blend-operation
    (:lbo-replace 0)
    (:lbo-add 1)
    (:lbo-modulate 2)
    (:lbo-alpha-blend 3))

(defcenum layer-blend-operation-ex
    (:lbx-source1 0)
    (:lbx-source2 1)
    (:lbx-modulate 2)
    (:lbx-modulate-x2 3)
    (:lbx-modulate-x4 4)
    (:lbx-add 5)
    (:lbx-add-signed 6)
    (:lbx-add-smooth 7)
    (:lbx-subtract 8)
    (:lbx-blend-diffuse-alpha 9)
    (:lbx-blend-texture-alpha 10)
    (:lbx-blend-current-alpha 11)
    (:lbx-blend-manual 12)
    (:lbx-dotproduct 13)
    (:lbx-blend-diffuse-colour 14))

(defcenum layer-blend-source
    (:lbs-current 0)
    (:lbs-texture 1)
    (:lbs-diffuse 2)
    (:lbs-specular 3)
    (:lbs-manual 4))

(defcenum scene-blend-type
    (:sbt-transparent-alpha 0)
    (:sbt-transparent-colour 1)
    (:sbt-add 2)
    (:sbt-modulate 3)
    (:sbt-replace 4))

(defcenum scene-blend-factor
    (:sbf-one 0)
    (:sbf-zero 1)
    (:sbf-dest-colour 2)
    (:sbf-source-colour 3)
    (:sbf-one-minus-dest-colour 4)
    (:sbf-one-minus-source-colour 5)
    (:sbf-dest-alpha 6)
    (:sbf-source-alpha 7)
    (:sbf-one-minus-dest-alpha 8)
    (:sbf-one-minus-source-alpha 9))

(defcenum compare-function
    (:cmpf-always-fail 0)
    (:cmpf-always-pass 1)
    (:cmpf-less 2)
    (:cmpf-less-equal 3)
    (:cmpf-equal 4)
    (:cmpf-not-equal 5)
    (:cmpf-greater-equal 6)
    (:cmpf-greater 7))

(defcenum texture-filter-options
    (:tfo-none 0)
    (:tfo-bilinear 1)
    (:tfo-trilinear 2)
    (:tfo-anisotropic 3))

(defcenum filter-type
    (:ft-min 0)
    (:ft-mag 1)
    (:ft-mip 2))

(defcenum filter-options
    (:fo-none 0)
    (:fo-point 1)
    (:fo-linear 2)
    (:fo-anisotropic 3))

(defcenum shade-options
    (:so-flat 0)
    (:so-gouraud 1)
    (:so-phong 2))

(defcenum fog-mode
    (:fog-none 0)
    (:fog-exp 1)
    (:fog-exp2 2)
    (:fog-linear 3))

(defcenum culling-mode
    (:cull-none 1)
    (:cull-clockwise 2)
    (:cull-anticlockwise 3))

(defcenum manual-culling-mode
    (:manual-cull-none 1)
    (:manual-cull-back 2)
    (:manual-cull-front 3))

(defcenum waveform-type
    (:wft-sine 0)
    (:wft-triangle 1)
    (:wft-square 2)
    (:wft-sawtooth 3)
    (:wft-inverse-sawtooth 4)
    (:wft-pwm 5))

(defcenum polygon-mode
    (:pm-points 1)
    (:pm-wireframe 2)
    (:pm-solid 3))

(defcenum shadow-technique
    (:shadowtype-none 0)
    (:shadowdetailtype-additive 1)
    (:shadowdetailtype-modulative 2)
    (:shadowdetailtype-integrated 4)
    (:shadowdetailtype-stencil 16)
    (:shadowdetailtype-texture 32)
    (:shadowtype-stencil-modulative 18)
    (:shadowtype-stencil-additive 17)
    (:shadowtype-texture-modulative 34)
    (:shadowtype-texture-additive 33)
    (:shadowtype-texture-additive-integrated 37)
    (:shadowtype-texture-modulative-integrated 38))

(defcenum track-vertex-colour-enum
    (:tvc-none 0)
    (:tvc-ambient 1)
    (:tvc-diffuse 2)
    (:tvc-specular 4)
    (:tvc-emissive 8))

(defcenum sort-mode
    (:sm-direction 0)
    (:sm-distance 1))

(defcenum frame-buffer-type
    (:fbt-colour 1)
    (:fbt-depth 2)
    (:fbt-stencil 4))

(defcenum clip-result
    (:clipped-none 0)
    (:clipped-some 1)
    (:clipped-all 2))

(defcenum etexture-play-mode
    (:textureeffectpause 0)
    (:textureeffectplay-asap 1)
    (:textureeffectplay-looping 2))

(defcenum font-type
    (:ft-truetype 1)
    (:ft-image 2))

(defcenum projection-type
    (:pt-orthographic 0)
    (:pt-perspective 1))

(defcenum frustum-plane
    (:frustum-plane-near 0)
    (:frustum-plane-far 1)
    (:frustum-plane-left 2)
    (:frustum-plane-right 3)
    (:frustum-plane-top 4)
    (:frustum-plane-bottom 5))

(defcenum gpu-program-type
    (:gpt-vertex-program 0)
    (:gpt-fragment-program 1)
    (:gpt-geometry-program 2))

(defcenum gpu-constant-type
    (:gct-float1 1)
    (:gct-float2 2)
    (:gct-float3 3)
    (:gct-float4 4)
    (:gct-sampler1d 5)
    (:gct-sampler2d 6)
    (:gct-sampler3d 7)
    (:gct-samplercube 8)
    (:gct-sampler1dshadow 9)
    (:gct-sampler2dshadow 10)
    (:gct-matrix-2x2 11)
    (:gct-matrix-2x3 12)
    (:gct-matrix-2x4 13)
    (:gct-matrix-3x2 14)
    (:gct-matrix-3x3 15)
    (:gct-matrix-3x4 16)
    (:gct-matrix-4x2 17)
    (:gct-matrix-4x3 18)
    (:gct-matrix-4x4 19)
    (:gct-int1 20)
    (:gct-int2 21)
    (:gct-int3 22)
    (:gct-int4 23)
    (:gct-unknown 99))

(defcenum vertex-element-semantic
    (:ves-position 1)
    (:ves-blend-weights 2)
    (:ves-blend-indices 3)
    (:ves-normal 4)
    (:ves-diffuse 5)
    (:ves-specular 6)
    (:ves-texture-coordinates 7)
    (:ves-binormal 8)
    (:ves-tangent 9))

(defcenum vertex-element-type
    (:vet-float1 0)
    (:vet-float2 1)
    (:vet-float3 2)
    (:vet-float4 3)
    (:vet-colour 4)
    (:vet-short1 5)
    (:vet-short2 6)
    (:vet-short3 7)
    (:vet-short4 8)
    (:vet-ubyte4 9)
    (:vet-colour-argb 10)
    (:vet-colour-abgr 11))

(defcenum image-flags
    (:if-compressed 1)
    (:if-cubemap 2)
    (:if-3d-texture 4))

(defcenum logging-level
    (:ll-low 1)
    (:ll-normal 2)
    (:ll-boreme 3))

(defcenum log-message-level
    (:lml-trivial 1)
    (:lml-normal 2)
    (:lml-critical 3))

(defcenum material-script-section
    (:mss-none 0)
    (:mss-material 1)
    (:mss-technique 2)
    (:mss-pass 3)
    (:mss-textureunit 4)
    (:mss-program-ref 5)
    (:mss-program 6)
    (:mss-default-parameters 7)
    (:mss-texturesource 8))

(defcenum memory-category
    (:memcategory-general 0)
    (:memcategory-geometry 1)
    (:memcategory-animation 2)
    (:memcategory-scene-control 3)
    (:memcategory-scene-objects 4)
    (:memcategory-resource 5)
    (:memcategory-scripting 6)
    (:memcategory-rendersys 7)
    (:memcategory-count 8))

(defcenum mesh-chunk-id
    (:mheader 4096)
    (:mmesh 12288)
    (:msubmesh 16384)
    (:msubmesh-operation 16400)
    (:msubmesh-bone-assignment 16640)
    (:msubmesh-texture-alias 16896)
    (:mgeometry 20480)
    (:mgeometry-vertex-declaration 20736)
    (:mgeometry-vertex-element 20752)
    (:mgeometry-vertex-buffer 20992)
    (:mgeometry-vertex-buffer-data 21008)
    (:mmesh-skeleton-link 24576)
    (:mmesh-bone-assignment 28672)
    (:mmesh-lod 32768)
    (:mmesh-lod-usage 33024)
    (:mmesh-lod-manual 33040)
    (:mmesh-lod-generated 33056)
    (:mmesh-bounds 36864)
    (:msubmesh-name-table 40960)
    (:msubmesh-name-table-element 41216)
    (:medge-lists 45056)
    (:medge-list-lod 45312)
    (:medge-group 45328)
    (:mposes 49152)
    (:mpose 49408)
    (:mpose-vertex 49425)
    (:manimations 53248)
    (:manimation 53504)
    (:manimation-track 53520)
    (:manimation-morph-keyframe 53521)
    (:manimation-pose-keyframe 53522)
    (:manimation-pose-ref 53523)
    (:mtable-extremes 57344)
    (:mgeometry-normals 20736)
    (:mgeometry-colours 20992)
    (:mgeometry-texcoords 21248))

(defcenum gui-metrics-mode
    (:gmm-relative 0)
    (:gmm-pixels 1)
    (:gmm-relative-aspect-adjusted 2))

(defcenum gui-horizontal-alignment
    (:gha-left 0)
    (:gha-center 1)
    (:gha-right 2))

(defcenum gui-vertical-alignment
    (:gva-top 0)
    (:gva-center 1)
    (:gva-bottom 2))

(defcenum illumination-stage
    (:is-ambient 0)
    (:is-per-light 1)
    (:is-decal 2)
    (:is-unknown 3))

(defcenum pixel-format
    (:pf-unknown 0)
    (:pf-l8 1)
    (:pf-byte-l 1)
    (:pf-l16 2)
    (:pf-short-l 2)
    (:pf-a8 3)
    (:pf-byte-a 3)
    (:pf-a4l4 4)
    (:pf-byte-la 5)
    (:pf-r5g6b5 6)
    (:pf-b5g6r5 7)
    (:pf-r3g3b2 31)
    (:pf-a4r4g4b4 8)
    (:pf-a1r5g5b5 9)
    (:pf-r8g8b8 10)
    (:pf-b8g8r8 11)
    (:pf-a8r8g8b8 12)
    (:pf-a8b8g8r8 13)
    (:pf-b8g8r8a8 14)
    (:pf-r8g8b8a8 28)
    (:pf-x8r8g8b8 26)
    (:pf-x8b8g8r8 27)
    (:pf-byte-rgb 10)
    (:pf-byte-bgr 11)
    (:pf-byte-bgra 14)
    (:pf-byte-rgba 28)
    (:pf-a2r10g10b10 15)
    (:pf-a2b10g10r10 16)
    (:pf-dxt1 17)
    (:pf-dxt2 18)
    (:pf-dxt3 19)
    (:pf-dxt4 20)
    (:pf-dxt5 21)
    (:pf-float16-r 32)
    (:pf-float16-rgb 22)
    (:pf-float16-rgba 23)
    (:pf-float32-r 33)
    (:pf-float32-rgb 24)
    (:pf-float32-rgba 25)
    (:pf-float16-gr 35)
    (:pf-float32-gr 36)
    (:pf-depth 29)
    (:pf-short-rgba 30)
    (:pf-short-gr 34)
    (:pf-short-rgb 37)
    (:pf-count 38))

(defcenum pixel-format-flags
    (:pff-hasalpha 1)
    (:pff-compressed 2)
    (:pff-float 4)
    (:pff-depth 8)
    (:pff-nativeendian 16)
    (:pff-luminance 32))

(defcenum pixel-component-type
    (:pct-byte 0)
    (:pct-short 1)
    (:pct-float16 2)
    (:pct-float32 3)
    (:pct-count 4))

(defcenum render-queue-group-id
    (:render-queue-background 0)
    (:render-queue-skies-early 5)
    (:render-queue-1 10)
    (:render-queue-2 20)
    (:render-queue-world-geometry-1 25)
    (:render-queue-3 30)
    (:render-queue-4 40)
    (:render-queue-main 50)
    (:render-queue-6 60)
    (:render-queue-7 70)
    (:render-queue-world-geometry-2 75)
    (:render-queue-8 80)
    (:render-queue-9 90)
    (:render-queue-skies-late 95)
    (:render-queue-overlay 100)
    (:render-queue-max 105))

(defcenum tex-coord-calc-method
    (:texcalc-none 0)
    (:texcalc-environment-map 1)
    (:texcalc-environment-map-planar 2)
    (:texcalc-environment-map-reflection 3)
    (:texcalc-environment-map-normal 4)
    (:texcalc-projective-texture 5))

(defcenum stencil-operation
    (:sop-keep 0)
    (:sop-zero 1)
    (:sop-replace 2)
    (:sop-increment 3)
    (:sop-decrement 4)
    (:sop-increment-wrap 5)
    (:sop-decrement-wrap 6)
    (:sop-invert 7))

(defcenum capabilities-category
    (:caps-category-common 0)
    (:caps-category-common-2 1)
    (:caps-category-d3d9 2)
    (:caps-category-gl 3)
    (:caps-category-count 4))

(defcenum capabilities
    (:rsc-automipmap 1)
    (:rsc-blending 2)
    (:rsc-anisotropy 4)
    (:rsc-dot3 8)
    (:rsc-cubemapping 16)
    (:rsc-hwstencil 32)
    (:rsc-vbo 128)
    (:rsc-vertex-program 512)
    (:rsc-fragment-program 1024)
    (:rsc-scissor-test 2048)
    (:rsc-two-sided-stencil 4096)
    (:rsc-stencil-wrap 8192)
    (:rsc-hwocclusion 16384)
    (:rsc-user-clip-planes 32768)
    (:rsc-vertex-format-ubyte4 65536)
    (:rsc-infinite-far-plane 131072)
    (:rsc-hwrender-to-texture 262144)
    (:rsc-texture-float 524288)
    (:rsc-non-power-of-2-textures 1048576)
    (:rsc-texture-3d 2097152)
    (:rsc-point-sprites 4194304)
    (:rsc-point-extended-parameters 8388608)
    (:rsc-vertex-texture-fetch 16777216)
    (:rsc-mipmap-lod-bias 33554432)
    (:rsc-geometry-program 67108864)
    (:rsc-hwrender-to-vertex-buffer 134217728)
    (:rsc-texture-compression 268435457)
    (:rsc-texture-compression-dxt 268435458)
    (:rsc-texture-compression-vtc 268435460)
    (:rsc-fixed-function 268435464)
    (:rsc-mrt-different-bit-depths 268435472)
    (:rsc-alpha-to-coverage 268435488)
    (:rsc-perstageconstant 536870913)
    (:rsc-gl1-5-novbo 805306370)
    (:rsc-fbo 805306372)
    (:rsc-fbo-arb 805306376)
    (:rsc-fbo-ati 805306384)
    (:rsc-pbuffer 805306400)
    (:rsc-gl1-5-nohwocclusion 805306432)
    (:rsc-point-extended-parameters-arb 805306496)
    (:rsc-point-extended-parameters-ext 805306624))

(defcenum gpuvendor
    (:gpu-unknown 0)
    (:gpu-nvidia 1)
    (:gpu-ati 2)
    (:gpu-intel 3)
    (:gpu-s3 4)
    (:gpu-matrox 5)
    (:gpu-3dlabs 6)
    (:gpu-vendor-count 7))

(defcenum scene-type
    (:st-generic 1)
    (:st-exterior-close 2)
    (:st-exterior-far 4)
    (:st-exterior-real-far 8)
    (:st-interior 16))

(defcenum concrete-node-type
    (:cnt-variable 0)
    (:cnt-variable-assign 1)
    (:cnt-word 2)
    (:cnt-import 3)
    (:cnt-quote 4)
    (:cnt-lbrace 5)
    (:cnt-rbrace 6)
    (:cnt-colon 7))

(defcenum abstract-node-type
    (:ant-unknown 0)
    (:ant-atom 1)
    (:ant-object 2)
    (:ant-property 3)
    (:ant-import 4)
    (:ant-variable-set 5)
    (:ant-variable-access 6))

(defcenum @9
    (:id-material 3)
    (:id-vertex-program 0)
    (:id-geometry-program 1)
    (:id-fragment-program 2)
    (:id-technique 3)
    (:id-pass 4)
    (:id-texture-unit 5)
    (:id-vertex-program-ref 6)
    (:id-geometry-program-ref 7)
    (:id-fragment-program-ref 8)
    (:id-shadow-caster-vertex-program-ref 9)
    (:id-shadow-receiver-vertex-program-ref 10)
    (:id-shadow-receiver-fragment-program-ref 11)
    (:id-shadow-caster-material 12)
    (:id-shadow-receiver-material 13)
    (:id-lod-distances 14)
    (:id-receive-shadows 15)
    (:id-transparency-casts-shadows 16)
    (:id-set-texture-alias 17)
    (:id-source 18)
    (:id-syntax 19)
    (:id-default-params 20)
    (:id-param-indexed 21)
    (:id-param-named 22)
    (:id-param-indexed-auto 23)
    (:id-param-named-auto 24)
    (:id-scheme 25)
    (:id-lod-index 26)
    (:id-gpu-vendor-rule 27)
    (:id-gpu-device-rule 28)
    (:id-include 29)
    (:id-exclude 30)
    (:id-ambient 31)
    (:id-diffuse 32)
    (:id-specular 33)
    (:id-emissive 34)
    (:id-vertexcolour 35)
    (:id-scene-blend 36)
    (:id-colour-blend 37)
    (:id-one 38)
    (:id-zero 39)
    (:id-dest-colour 40)
    (:id-src-colour 41)
    (:id-one-minus-dest-colour 42)
    (:id-one-minus-src-colour 43)
    (:id-dest-alpha 44)
    (:id-src-alpha 45)
    (:id-one-minus-dest-alpha 46)
    (:id-one-minus-src-alpha 47)
    (:id-separate-scene-blend 48)
    (:id-depth-check 49)
    (:id-depth-write 50)
    (:id-depth-func 51)
    (:id-depth-bias 52)
    (:id-iteration-depth-bias 53)
    (:id-always-fail 54)
    (:id-always-pass 55)
    (:id-less-equal 56)
    (:id-less 57)
    (:id-equal 58)
    (:id-not-equal 59)
    (:id-greater-equal 60)
    (:id-greater 61)
    (:id-alpha-rejection 62)
    (:id-alpha-to-coverage 63)
    (:id-light-scissor 64)
    (:id-light-clip-planes 65)
    (:id-transparent-sorting 66)
    (:id-illumination-stage 67)
    (:id-decal 68)
    (:id-cull-hardware 69)
    (:id-clockwise 70)
    (:id-anticlockwise 71)
    (:id-cull-software 72)
    (:id-back 73)
    (:id-front 74)
    (:id-normalise-normals 75)
    (:id-lighting 76)
    (:id-shading 77)
    (:id-flat 78)
    (:id-gouraud 79)
    (:id-phong 80)
    (:id-polygon-mode 81)
    (:id-solid 82)
    (:id-wireframe 83)
    (:id-points 84)
    (:id-polygon-mode-overrideable 85)
    (:id-fog-override 86)
    (:id-none 87)
    (:id-linear 88)
    (:id-exp 89)
    (:id-exp2 90)
    (:id-colour-write 91)
    (:id-max-lights 92)
    (:id-start-light 93)
    (:id-iteration 94)
    (:id-once 95)
    (:id-once-per-light 96)
    (:id-per-light 97)
    (:id-per-n-lights 98)
    (:id-point 99)
    (:id-spot 100)
    (:id-directional 101)
    (:id-point-size 102)
    (:id-point-sprites 103)
    (:id-point-size-attenuation 104)
    (:id-point-size-min 105)
    (:id-point-size-max 106)
    (:id-texture-alias 107)
    (:id-texture 108)
    (:id-1d 109)
    (:id-2d 110)
    (:id-3d 111)
    (:id-cubic 112)
    (:id-unlimited 113)
    (:id-alpha 114)
    (:id-gamma 115)
    (:id-anim-texture 116)
    (:id-cubic-texture 117)
    (:id-separate-uv 118)
    (:id-combined-uvw 119)
    (:id-tex-coord-set 120)
    (:id-tex-address-mode 121)
    (:id-wrap 122)
    (:id-clamp 123)
    (:id-border 124)
    (:id-mirror 125)
    (:id-tex-border-colour 126)
    (:id-filtering 127)
    (:id-bilinear 128)
    (:id-trilinear 129)
    (:id-anisotropic 130)
    (:id-max-anisotropy 131)
    (:id-mipmap-bias 132)
    (:id-colour-op 133)
    (:id-replace 134)
    (:id-add 135)
    (:id-modulate 136)
    (:id-alpha-blend 137)
    (:id-colour-op-ex 138)
    (:id-source1 139)
    (:id-source2 140)
    (:id-modulate-x2 141)
    (:id-modulate-x4 142)
    (:id-add-signed 143)
    (:id-add-smooth 144)
    (:id-subtract 145)
    (:id-blend-diffuse-colour 146)
    (:id-blend-diffuse-alpha 147)
    (:id-blend-texture-alpha 148)
    (:id-blend-current-alpha 149)
    (:id-blend-manual 150)
    (:id-dot-product 151)
    (:id-src-current 152)
    (:id-src-texture 153)
    (:id-src-diffuse 154)
    (:id-src-specular 155)
    (:id-src-manual 156)
    (:id-colour-op-multipass-fallback 157)
    (:id-alpha-op-ex 158)
    (:id-env-map 159)
    (:id-spherical 160)
    (:id-planar 161)
    (:id-cubic-reflection 162)
    (:id-cubic-normal 163)
    (:id-scroll 164)
    (:id-scroll-anim 165)
    (:id-rotate 166)
    (:id-rotate-anim 167)
    (:id-scale 168)
    (:id-wave-xform 169)
    (:id-scroll-x 170)
    (:id-scroll-y 171)
    (:id-scale-x 172)
    (:id-scale-y 173)
    (:id-sine 174)
    (:id-triangle 175)
    (:id-square 176)
    (:id-sawtooth 177)
    (:id-inverse-sawtooth 178)
    (:id-transform 179)
    (:id-binding-type 180)
    (:id-vertex 181)
    (:id-fragment 182)
    (:id-content-type 183)
    (:id-named 184)
    (:id-shadow 185)
    (:id-texture-source 186)
    (:id-particle-system 187)
    (:id-emitter 188)
    (:id-affector 189)
    (:id-compositor 190)
    (:id-target 191)
    (:id-target-output 192)
    (:id-input 193)
    (:id-previous 194)
    (:id-target-width 195)
    (:id-target-height 196)
    (:id-target-width-scaled 197)
    (:id-target-height-scaled 198)
    (:id-only-initial 199)
    (:id-visibility-mask 200)
    (:id-lod-bias 201)
    (:id-material-scheme 202)
    (:id-shadows-enabled 203)
    (:id-clear 204)
    (:id-stencil 205)
    (:id-render-scene 206)
    (:id-render-quad 207)
    (:id-identifier 208)
    (:id-first-render-queue 209)
    (:id-last-render-queue 210)
    (:id-buffers 211)
    (:id-colour 212)
    (:id-depth 213)
    (:id-colour-value 214)
    (:id-depth-value 215)
    (:id-stencil-value 216)
    (:id-check 217)
    (:id-comp-func 218)
    (:id-ref-value 219)
    (:id-mask 220)
    (:id-fail-op 221)
    (:id-keep 222)
    (:id-increment 223)
    (:id-decrement 224)
    (:id-increment-wrap 225)
    (:id-decrement-wrap 226)
    (:id-invert 227)
    (:id-depth-fail-op 228)
    (:id-pass-op 229)
    (:id-two-sided 230)
    (:id-end-builtin-ids 231))

(defcenum @12
    (:tid-lbracket 0)
    (:tid-rbracket 0)
    (:tid-colon 1)
    (:tid-variable 2)
    (:tid-word 3)
    (:tid-quote 4)
    (:tid-newline 5)
    (:tid-unknown 6)
    (:tid-end 7))

(defcenum shadow-renderable-flags
    (:srf-include-light-cap 1)
    (:srf-include-dark-cap 2)
    (:srf-extrude-to-infinity 4))

(defcenum shared-ptr-free-method
    (:spfm-delete 0)
    (:spfm-delete-t 1)
    (:spfm-free 2))

(defcenum skeleton-animation-blend-mode
    (:animblend-average 0)
    (:animblend-cumulative 1))

(defcenum skeleton-chunk-id
    (:skeleton-header 4096)
    (:skeleton-bone 8192)
    (:skeleton-bone-parent 12288)
    (:skeleton-animation 16384)
    (:skeleton-animation-track 16640)
    (:skeleton-animation-track-keyframe 16656)
    (:skeleton-animation-link 20480))

(defcenum face-group-type
    (:fgt-face-list 0)
    (:fgt-patch 1)
    (:fgt-unknown 2))

(defcenum parameter-type
    (:pt-bool 0)
    (:pt-real 1)
    (:pt-int 2)
    (:pt-unsigned-int 3)
    (:pt-short 4)
    (:pt-unsigned-short 5)
    (:pt-long 6)
    (:pt-unsigned-long 7)
    (:pt-string 8)
    (:pt-vector3 9)
    (:pt-matrix3 10)
    (:pt-matrix4 11)
    (:pt-quaternion 12)
    (:pt-colourvalue 13))

(defcenum texture-usage
    (:tu-static 1)
    (:tu-dynamic 2)
    (:tu-write-only 4)
    (:tu-static-write-only 5)
    (:tu-dynamic-write-only 6)
    (:tu-dynamic-write-only-discardable 14)
    (:tu-automipmap 256)
    (:tu-rendertarget 512)
    (:tu-default 3))

(defcenum texture-type
    (:tex-type-1d 1)
    (:tex-type-2d 2)
    (:tex-type-3d 3)
    (:tex-type-cube-map 4))

(defcenum texture-mipmap
    (:mip-unlimited 2147483647)
    (:mip-default -1))

