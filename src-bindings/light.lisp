;;;; light.lisp
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
;;;; This file was generated on: 2009-08-07 15:52:09.

(in-package :okra-bindings)


;;; Class

(defclass light (movable-object)
  ())


;;; Foreign Functions & Methods

;; name: "setType"
;; type: "void"
;; args: (("LightTypes" . "type"))
;;
(defcfun "ogre_light_set_type"
    :void
  (ogre-light :pointer)
  (type light-types))

(defmethod set-type ((this light) type)
  (ogre-light-set-type (pointer-to this) type))


;; name: "getType"
;; type: "LightTypes"
;; args: "void"
;;
(defcfun "ogre_light_get_type"
    light-types
  (ogre-light :pointer))

(defmethod get-type ((this light))
  (ogre-light-get-type (pointer-to this)))


;; name: "getDiffuseColour"
;; type: "const ColourValue&"
;; args: "void"
;;
(defcfun "ogre_light_get_diffuse_colour"
    :void
  (ogre-light :pointer)
  (array4 :pointer))

(defmethod get-diffuse-colour ((this light))
  (with-foreign-object (array 'okra-real 4)
    (ogre-light-get-diffuse-colour (pointer-to this) array)
    (vector (mem-aref array 'okra-real 0) (mem-aref array 'okra-real 1)
            (mem-aref array 'okra-real 2) (mem-aref array 'okra-real 3))))


;; name: "getSpecularColour"
;; type: "const ColourValue&"
;; args: "void"
;;
(defcfun "ogre_light_get_specular_colour"
    :void
  (ogre-light :pointer)
  (array4 :pointer))

(defmethod get-specular-colour ((this light))
  (with-foreign-object (array 'okra-real 4)
    (ogre-light-get-specular-colour (pointer-to this) array)
    (vector (mem-aref array 'okra-real 0) (mem-aref array 'okra-real 1)
            (mem-aref array 'okra-real 2) (mem-aref array 'okra-real 3))))


;; name: "setAttenuation"
;; type: "void"
;; args: (("Real" . "range") ("Real" . "constant") ("Real" . "linear") ("Real" . "quadratic"))
;;
(defcfun "ogre_light_set_attenuation"
    :void
  (ogre-light :pointer)
  (range okra-real)
  (constant okra-real)
  (linear okra-real)
  (quadratic okra-real))

(defmethod set-attenuation ((this light) range constant linear quadratic)
  (ogre-light-set-attenuation (pointer-to this) range constant linear quadratic))


;; name: "getAttenuationRange"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_light_get_attenuation_range"
    okra-real
  (ogre-light :pointer))

(defmethod get-attenuation-range ((this light))
  (ogre-light-get-attenuation-range (pointer-to this)))


;; name: "getAttenuationConstant"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_light_get_attenuation_constant"
    okra-real
  (ogre-light :pointer))

(defmethod get-attenuation-constant ((this light))
  (ogre-light-get-attenuation-constant (pointer-to this)))


;; name: "getAttenuationLinear"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_light_get_attenuation_linear"
    okra-real
  (ogre-light :pointer))

(defmethod get-attenuation-linear ((this light))
  (ogre-light-get-attenuation-linear (pointer-to this)))


;; name: "getAttenuationQuadric"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_light_get_attenuation_quadric"
    okra-real
  (ogre-light :pointer))

(defmethod get-attenuation-quadric ((this light))
  (ogre-light-get-attenuation-quadric (pointer-to this)))


;; name: "getPosition"
;; type: "const Vector3&"
;; args: "void"
;;
(defcfun "ogre_light_get_position"
    :void
  (ogre-light :pointer)
  (array3 :pointer))

(defmethod get-position ((this light))
  (with-foreign-object (array 'okra-real 3)
    (ogre-light-get-position (pointer-to this) array)
    (vector (mem-aref array 'okra-real 0) (mem-aref array 'okra-real 1)
            (mem-aref array 'okra-real 2))))


;; name: "getDirection"
;; type: "const Vector3&"
;; args: "void"
;;
(defcfun "ogre_light_get_direction"
    :void
  (ogre-light :pointer)
  (array3 :pointer))

(defmethod get-direction ((this light))
  (with-foreign-object (array 'okra-real 3)
    (ogre-light-get-direction (pointer-to this) array)
    (vector (mem-aref array 'okra-real 0) (mem-aref array 'okra-real 1)
            (mem-aref array 'okra-real 2))))


;; name: "setSpotlightRange"
;; type: "void"
;; args: (("const Radian&" . "innerAngle") ("const Radian&" . "outerAngle") ("Real" . "falloff"))
;;
(defcfun "ogre_light_set_spotlight_range"
    :void
  (ogre-light :pointer)
  (inner-angle okra-real)
  (outer-angle okra-real)
  (falloff okra-real))

(defmethod set-spotlight-range ((this light) inner-angle outer-angle falloff)
  (ogre-light-set-spotlight-range (pointer-to this) inner-angle outer-angle falloff))


;; name: "getSpotlightInnerAngle"
;; type: "const Radian&"
;; args: "void"
;;
(defcfun "ogre_light_get_spotlight_inner_angle"
    okra-real
  (ogre-light :pointer))

(defmethod get-spotlight-inner-angle ((this light))
  (ogre-light-get-spotlight-inner-angle (pointer-to this)))


;; name: "getSpotlightOuterAngle"
;; type: "const Radian&"
;; args: "void"
;;
(defcfun "ogre_light_get_spotlight_outer_angle"
    okra-real
  (ogre-light :pointer))

(defmethod get-spotlight-outer-angle ((this light))
  (ogre-light-get-spotlight-outer-angle (pointer-to this)))


;; name: "getSpotlightFalloff"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_light_get_spotlight_falloff"
    okra-real
  (ogre-light :pointer))

(defmethod get-spotlight-falloff ((this light))
  (ogre-light-get-spotlight-falloff (pointer-to this)))


;; name: "setSpotlightInnerAngle"
;; type: "void"
;; args: (("const Radian&" . "val"))
;;
(defcfun "ogre_light_set_spotlight_inner_angle"
    :void
  (ogre-light :pointer)
  (val okra-real))

(defmethod set-spotlight-inner-angle ((this light) val)
  (ogre-light-set-spotlight-inner-angle (pointer-to this) val))


;; name: "setSpotlightOuterAngle"
;; type: "void"
;; args: (("const Radian&" . "val"))
;;
(defcfun "ogre_light_set_spotlight_outer_angle"
    :void
  (ogre-light :pointer)
  (val okra-real))

(defmethod set-spotlight-outer-angle ((this light) val)
  (ogre-light-set-spotlight-outer-angle (pointer-to this) val))


;; name: "setSpotlightFalloff"
;; type: "void"
;; args: (("Real" . "val"))
;;
(defcfun "ogre_light_set_spotlight_falloff"
    :void
  (ogre-light :pointer)
  (val okra-real))

(defmethod set-spotlight-falloff ((this light) val)
  (ogre-light-set-spotlight-falloff (pointer-to this) val))


;; name: "setPowerScale"
;; type: "void"
;; args: (("Real" . "power"))
;;
(defcfun "ogre_light_set_power_scale"
    :void
  (ogre-light :pointer)
  (power okra-real))

(defmethod set-power-scale ((this light) power)
  (ogre-light-set-power-scale (pointer-to this) power))


;; name: "getPowerScale"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_light_get_power_scale"
    okra-real
  (ogre-light :pointer))

(defmethod get-power-scale ((this light))
  (ogre-light-get-power-scale (pointer-to this)))


;; name: "getBoundingBox"
;; type: "const AxisAlignedBox&"
;; args: "void"
;;
(defcfun "ogre_light_get_bounding_box"
    :void
  (ogre-light :pointer)
  (array6 :pointer))

(defmethod get-bounding-box ((this light))
  (with-foreign-object (array 'okra-real 6)
    (ogre-light-get-bounding-box (pointer-to this) array)
    (vector (mem-aref array 'okra-real 0) (mem-aref array 'okra-real 1)
            (mem-aref array 'okra-real 2) (mem-aref array 'okra-real 3)
            (mem-aref array 'okra-real 4) (mem-aref array 'okra-real 5))))


;; name: "getMovableType"
;; type: "const String&"
;; args: "void"
;;
(defcfun "ogre_light_get_movable_type"
    :string
  (ogre-light :pointer))

(defmethod get-movable-type ((this light))
  (ogre-light-get-movable-type (pointer-to this)))


;; name: "getDerivedDirection"
;; type: "const Vector3&"
;; args: "void"
;;
(defcfun "ogre_light_get_derived_direction"
    :void
  (ogre-light :pointer)
  (array3 :pointer))

(defmethod get-derived-direction ((this light))
  (with-foreign-object (array 'okra-real 3)
    (ogre-light-get-derived-direction (pointer-to this) array)
    (vector (mem-aref array 'okra-real 0) (mem-aref array 'okra-real 1)
            (mem-aref array 'okra-real 2))))


;; name: "getBoundingRadius"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_light_get_bounding_radius"
    okra-real
  (ogre-light :pointer))

(defmethod get-bounding-radius ((this light))
  (ogre-light-get-bounding-radius (pointer-to this)))


;; name: "getAs4DVector"
;; type: "Vector4"
;; args: (("bool" . "cameraRelativeIfSet"))
;;
(defcfun "ogre_light_get_as4_dvector"
    :void
  (ogre-light :pointer)
  (array4 :pointer)
  (camera-relative-if-set :boolean))

(defmethod get-as4-dvector ((this light) camera-relative-if-set)
  (with-foreign-object (array 'okra-real 4)
    (ogre-light-get-as4-dvector (pointer-to this) array camera-relative-if-set)
    (vector (mem-aref array 'okra-real 0) (mem-aref array 'okra-real 1)
            (mem-aref array 'okra-real 2) (mem-aref array 'okra-real 3))))


;; name: "getTypeFlags"
;; type: "uint32"
;; args: "void"
;;
(defcfun "ogre_light_get_type_flags"
    :uint32
  (ogre-light :pointer))

(defmethod get-type-flags ((this light))
  (ogre-light-get-type-flags (pointer-to this)))


;; name: "createAnimableValue"
;; type: "AnimableValuePtr"
;; args: (("const String&" . "valueName"))
;;
(defcfun "ogre_light_create_animable_value"
    :pointer
  (ogre-light :pointer)
  (value-name :string))

(defmethod create-animable-value ((this light) value-name)
  (ogre-light-create-animable-value (pointer-to this) value-name))


;; name: "setCustomShadowCameraSetup"
;; type: "void"
;; args: (("const ShadowCameraSetupPtr&" . "customShadowSetup"))
;;
(defcfun "ogre_light_set_custom_shadow_camera_setup"
    :void
  (ogre-light :pointer)
  (custom-shadow-setup :pointer))

(defmethod set-custom-shadow-camera-setup ((this light) custom-shadow-setup)
  (ogre-light-set-custom-shadow-camera-setup (pointer-to this) custom-shadow-setup))


;; name: "resetCustomShadowCameraSetup"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_light_reset_custom_shadow_camera_setup"
    :void
  (ogre-light :pointer))

(defmethod reset-custom-shadow-camera-setup ((this light))
  (ogre-light-reset-custom-shadow-camera-setup (pointer-to this)))


;; name: "getCustomShadowCameraSetup"
;; type: "const ShadowCameraSetupPtr&"
;; args: "void"
;;
(defcfun "ogre_light_get_custom_shadow_camera_setup"
    :pointer
  (ogre-light :pointer))

(defmethod get-custom-shadow-camera-setup ((this light))
  (ogre-light-get-custom-shadow-camera-setup (pointer-to this)))


;; name: "visitRenderables"
;; type: "void"
;; args: (("Renderable::Visitor*" . "visitor") ("bool" . "debugRenderables"))
;;
(defcfun "ogre_light_visit_renderables"
    :void
  (ogre-light :pointer)
  (visitor :pointer)
  (debug-renderables :boolean))

(defmethod visit-renderables ((this light) visitor debug-renderables)
  (ogre-light-visit-renderables (pointer-to this) visitor debug-renderables))


;; name: "setShadowFarDistance"
;; type: "void"
;; args: (("Real" . "distance"))
;;
(defcfun "ogre_light_set_shadow_far_distance"
    :void
  (ogre-light :pointer)
  (distance okra-real))

(defmethod set-shadow-far-distance ((this light) distance)
  (ogre-light-set-shadow-far-distance (pointer-to this) distance))


;; name: "resetShadowFarDistance"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_light_reset_shadow_far_distance"
    :void
  (ogre-light :pointer))

(defmethod reset-shadow-far-distance ((this light))
  (ogre-light-reset-shadow-far-distance (pointer-to this)))


;; name: "getShadowFarDistance"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_light_get_shadow_far_distance"
    okra-real
  (ogre-light :pointer))

(defmethod get-shadow-far-distance ((this light))
  (ogre-light-get-shadow-far-distance (pointer-to this)))


;; name: "getShadowFarDistanceSquared"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_light_get_shadow_far_distance_squared"
    okra-real
  (ogre-light :pointer))

(defmethod get-shadow-far-distance-squared ((this light))
  (ogre-light-get-shadow-far-distance-squared (pointer-to this)))


;;; Overloaded Foreign Functions

;; name: "setDiffuseColour"
;; type: "void"
;; args: (("Real" . "red") ("Real" . "green") ("Real" . "blue"))
;;
(defcfun "ogre_light_set_diffuse_colour_real_real_real"
    :void
  (ogre-light :pointer)
  (red okra-real)
  (green okra-real)
  (blue okra-real))


;; name: "setDiffuseColour"
;; type: "void"
;; args: (("const ColourValue&" . "colour"))
;;
(defcfun "ogre_light_set_diffuse_colour_colourvalue"
    :void
  (ogre-light :pointer)
  (colour okra-array4))


;; name: "setSpecularColour"
;; type: "void"
;; args: (("Real" . "red") ("Real" . "green") ("Real" . "blue"))
;;
(defcfun "ogre_light_set_specular_colour_real_real_real"
    :void
  (ogre-light :pointer)
  (red okra-real)
  (green okra-real)
  (blue okra-real))


;; name: "setSpecularColour"
;; type: "void"
;; args: (("const ColourValue&" . "colour"))
;;
(defcfun "ogre_light_set_specular_colour_colourvalue"
    :void
  (ogre-light :pointer)
  (colour okra-array4))


;; name: "setPosition"
;; type: "void"
;; args: (("Real" . "x") ("Real" . "y") ("Real" . "z"))
;;
(defcfun "ogre_light_set_position_real_real_real"
    :void
  (ogre-light :pointer)
  (x okra-real)
  (y okra-real)
  (z okra-real))


;; name: "setPosition"
;; type: "void"
;; args: (("const Vector3&" . "vec"))
;;
(defcfun "ogre_light_set_position_vector3"
    :void
  (ogre-light :pointer)
  (vec okra-array3))


;; name: "setDirection"
;; type: "void"
;; args: (("Real" . "x") ("Real" . "y") ("Real" . "z"))
;;
(defcfun "ogre_light_set_direction_real_real_real"
    :void
  (ogre-light :pointer)
  (x okra-real)
  (y okra-real)
  (z okra-real))


;; name: "setDirection"
;; type: "void"
;; args: (("const Vector3&" . "vec"))
;;
(defcfun "ogre_light_set_direction_vector3"
    :void
  (ogre-light :pointer)
  (vec okra-array3))


;; name: "getDerivedPosition"
;; type: "const Vector3&"
;; args: (("bool" . "cameraRelativeIfSet"))
;;
(defcfun "ogre_light_get_derived_position_bool"
    :void
  (ogre-light :pointer)
  (array3 :pointer)
  (camera-relative-if-set :boolean))


;; name: "setVisible"
;; type: "void"
;; args: (("bool" . "visible"))
;;
(defcfun "ogre_light_set_visible_bool"
    :void
  (ogre-light :pointer)
  (visible :boolean))


;;; Methods for Overloaded Foreign Functions

(defmethod set-position ((this light) &optional (arg0 nil) (arg1 nil) (arg2 nil))
  (cond
    ((and (typep arg0 'real) (typep arg1 'real) (typep arg2 'real))
     (ogre-light-set-position-real-real-real (pointer-to this) arg0 arg1 arg2))
    ((and (typep arg0 '(simple-vector 3)))
     (ogre-light-set-position-vector3 (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod set-direction ((this light) &optional (arg0 nil) (arg1 nil) (arg2 nil) (arg3 nil) (arg4 nil))
  (declare (ignore arg3 arg4))
  (cond
    ((and (typep arg0 'real) (typep arg1 'real) (typep arg2 'real))
     (ogre-light-set-direction-real-real-real (pointer-to this) arg0 arg1 arg2))
    ((and (typep arg0 '(simple-vector 3)))
     (ogre-light-set-direction-vector3 (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod get-derived-position ((this light) &optional (arg0 nil))
  (cond
    ((and (typep arg0 'boolean))
  (with-foreign-object (array 'okra-real 3)
       (ogre-light-get-derived-position-bool (pointer-to this) array arg0)
    (vector (mem-aref array 'okra-real 0) (mem-aref array 'okra-real 1)
            (mem-aref array 'okra-real 2))))
    (t (error "Overloaded method not defined for this class."))))


(defmethod set-diffuse-colour ((this light) &optional (arg0 nil) (arg1 nil) (arg2 nil))
  (cond
    ((and (typep arg0 'real) (typep arg1 'real) (typep arg2 'real))
     (ogre-light-set-diffuse-colour-real-real-real (pointer-to this) arg0 arg1 arg2))
    ((and (typep arg0 '(simple-vector 4)))
     (ogre-light-set-diffuse-colour-colourvalue (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod set-specular-colour ((this light) &optional (arg0 nil) (arg1 nil) (arg2 nil))
  (cond
    ((and (typep arg0 'real) (typep arg1 'real) (typep arg2 'real))
     (ogre-light-set-specular-colour-real-real-real (pointer-to this) arg0 arg1 arg2))
    ((and (typep arg0 '(simple-vector 4)))
     (ogre-light-set-specular-colour-colourvalue (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod set-visible ((this light) &optional (arg0 nil) (arg1 nil))
  (declare (ignore arg1))
  (cond
    ((and (typep arg0 'boolean))
     (ogre-light-set-visible-bool (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


