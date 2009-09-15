;;;; scene-node.lisp
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
;;;; This file was generated on: 2009-09-15 10:46:20.

(in-package :okra-bindings)


;;; Class

(defclass scene-node (node)
  ())


;;; Foreign Functions & Methods

;; name: "attachObject"
;; type: "void"
;; args: (("MovableObject*" . "obj"))
;;
(defcfun "ogre_scene_node_attach_object"
    :void
  (ogre-scene-node :pointer)
  (obj :pointer))

(defmethod attach-object ((this scene-node) obj)
  (ogre-scene-node-attach-object (pointer-to this) obj))


;; name: "numAttachedObjects"
;; type: "unsigned short"
;; args: "void"
;;
(defcfun "ogre_scene_node_num_attached_objects"
    :unsigned-short
  (ogre-scene-node :pointer))

(defmethod num-attached-objects ((this scene-node))
  (ogre-scene-node-num-attached-objects (pointer-to this)))


;; name: "detachAllObjects"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_scene_node_detach_all_objects"
    :void
  (ogre-scene-node :pointer))

(defmethod detach-all-objects ((this scene-node))
  (ogre-scene-node-detach-all-objects (pointer-to this)))


;; name: "isInSceneGraph"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_scene_node_is_in_scene_graph"
    :boolean
  (ogre-scene-node :pointer))

(defmethod is-in-scene-graph ((this scene-node))
  (ogre-scene-node-is-in-scene-graph (pointer-to this)))


;; name: "getAttachedObjectIterator"
;; type: "ObjectIterator"
;; args: "void"
;;
(defcfun "ogre_scene_node_get_attached_object_iterator"
    :pointer
  (ogre-scene-node :pointer))

(defmethod get-attached-object-iterator ((this scene-node))
  (ogre-scene-node-get-attached-object-iterator (pointer-to this)))


;; name: "getCreator"
;; type: "SceneManager*"
;; args: "void"
;;
(defcfun "ogre_scene_node_get_creator"
    :pointer
  (ogre-scene-node :pointer))

(defmethod get-creator ((this scene-node))
  (ogre-scene-node-get-creator (pointer-to this)))


;; name: "removeAndDestroyAllChildren"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_scene_node_remove_and_destroy_all_children"
    :void
  (ogre-scene-node :pointer))

(defmethod remove-and-destroy-all-children ((this scene-node))
  (ogre-scene-node-remove-and-destroy-all-children (pointer-to this)))


;; name: "showBoundingBox"
;; type: "void"
;; args: (("bool" . "bShow"))
;;
(defcfun "ogre_scene_node_show_bounding_box"
    :void
  (ogre-scene-node :pointer)
  (bshow :boolean))

(defmethod show-bounding-box ((this scene-node) bshow)
  (ogre-scene-node-show-bounding-box (pointer-to this) bshow))


;; name: "getShowBoundingBox"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_scene_node_get_show_bounding_box"
    :boolean
  (ogre-scene-node :pointer))

(defmethod get-show-bounding-box ((this scene-node))
  (ogre-scene-node-get-show-bounding-box (pointer-to this)))


;; name: "findLights"
;; type: "void"
;; args: (("LightList&" . "destList") ("Real" . "radius"))
;;
(defcfun "ogre_scene_node_find_lights"
    :void
  (ogre-scene-node :pointer)
  (dest-list :pointer)
  (radius okra-real))

(defmethod find-lights ((this scene-node) dest-list radius)
  (ogre-scene-node-find-lights (pointer-to this) dest-list radius))


;; name: "setFixedYawAxis"
;; type: "void"
;; args: (("bool" . "useFixed") ("const Vector3&" . "fixedAxis"))
;;
(defcfun "ogre_scene_node_set_fixed_yaw_axis"
    :void
  (ogre-scene-node :pointer)
  (use-fixed :boolean)
  (fixed-axis okra-array3))

(defmethod set-fixed-yaw-axis ((this scene-node) use-fixed fixed-axis)
  (ogre-scene-node-set-fixed-yaw-axis (pointer-to this) use-fixed fixed-axis))


;; name: "getAutoTrackTarget"
;; type: "SceneNode*"
;; args: "void"
;;
(defcfun "ogre_scene_node_get_auto_track_target"
    :pointer
  (ogre-scene-node :pointer))

(defmethod get-auto-track-target ((this scene-node))
  (ogre-scene-node-get-auto-track-target (pointer-to this)))


;; name: "getAutoTrackOffset"
;; type: "const Vector3&"
;; args: "void"
;;
(defcfun "ogre_scene_node_get_auto_track_offset"
    :void
  (ogre-scene-node :pointer)
  (array3 :pointer))

(defmethod get-auto-track-offset ((this scene-node))
  (with-foreign-object (array 'okra-real 3)
    (ogre-scene-node-get-auto-track-offset (pointer-to this) array)
    (vector (mem-aref array 'okra-real 0) (mem-aref array 'okra-real 1)
            (mem-aref array 'okra-real 2))))


;; name: "getAutoTrackLocalDirection"
;; type: "const Vector3&"
;; args: "void"
;;
(defcfun "ogre_scene_node_get_auto_track_local_direction"
    :void
  (ogre-scene-node :pointer)
  (array3 :pointer))

(defmethod get-auto-track-local-direction ((this scene-node))
  (with-foreign-object (array 'okra-real 3)
    (ogre-scene-node-get-auto-track-local-direction (pointer-to this) array)
    (vector (mem-aref array 'okra-real 0) (mem-aref array 'okra-real 1)
            (mem-aref array 'okra-real 2))))


;; name: "getParentSceneNode"
;; type: "SceneNode*"
;; args: "void"
;;
(defcfun "ogre_scene_node_get_parent_scene_node"
    :pointer
  (ogre-scene-node :pointer))

(defmethod get-parent-scene-node ((this scene-node))
  (ogre-scene-node-get-parent-scene-node (pointer-to this)))


;; name: "flipVisibility"
;; type: "void"
;; args: (("bool" . "cascade"))
;;
(defcfun "ogre_scene_node_flip_visibility"
    :void
  (ogre-scene-node :pointer)
  (cascade :boolean))

(defmethod flip-visibility ((this scene-node) cascade)
  (ogre-scene-node-flip-visibility (pointer-to this) cascade))


;;; Overloaded Foreign Functions

;; name: "getAttachedObject"
;; type: "MovableObject*"
;; args: (("unsigned short" . "index"))
;;
(defcfun "ogre_scene_node_get_attached_object_unsignedshort"
    :pointer
  (ogre-scene-node :pointer)
  (index :unsigned-short))


;; name: "getAttachedObject"
;; type: "MovableObject*"
;; args: (("const String&" . "name"))
;;
(defcfun "ogre_scene_node_get_attached_object_string"
    :pointer
  (ogre-scene-node :pointer)
  (name :string))


;; name: "detachObject"
;; type: "MovableObject*"
;; args: (("unsigned short" . "index"))
;;
(defcfun "ogre_scene_node_detach_object_unsignedshort"
    :pointer
  (ogre-scene-node :pointer)
  (index :unsigned-short))


;; name: "detachObject"
;; type: "void"
;; args: (("MovableObject*" . "obj"))
;;
(defcfun "ogre_scene_node_detach_object_movableobject"
    :void
  (ogre-scene-node :pointer)
  (obj :pointer))


;; name: "detachObject"
;; type: "MovableObject*"
;; args: (("const String&" . "name"))
;;
(defcfun "ogre_scene_node_detach_object_string"
    :pointer
  (ogre-scene-node :pointer)
  (name :string))


;; name: "removeAndDestroyChild"
;; type: "void"
;; args: (("const String&" . "name"))
;;
(defcfun "ogre_scene_node_remove_and_destroy_child_string"
    :void
  (ogre-scene-node :pointer)
  (name :string))


;; name: "removeAndDestroyChild"
;; type: "void"
;; args: (("unsigned short" . "index"))
;;
(defcfun "ogre_scene_node_remove_and_destroy_child_unsignedshort"
    :void
  (ogre-scene-node :pointer)
  (index :unsigned-short))


;; name: "createChildSceneNode"
;; type: "SceneNode*"
;; args: (("const Vector3&" . "translate") ("const Quaternion&" . "rotate"))
;;
(defcfun "ogre_scene_node_create_child_scene_node_vector3_quaternion"
    :pointer
  (ogre-scene-node :pointer)
  (translate okra-array3)
  (rotate okra-array4))


;; name: "createChildSceneNode"
;; type: "SceneNode*"
;; args: (("const String&" . "name") ("const Vector3&" . "translate") ("const Quaternion&" . "rotate"))
;;
(defcfun "ogre_scene_node_create_child_scene_node_string_vector3_quaternion"
    :pointer
  (ogre-scene-node :pointer)
  (name :string)
  (translate okra-array3)
  (rotate okra-array4))


;; name: "yaw"
;; type: "void"
;; args: (("const Radian&" . "angle") ("TransformSpace" . "relativeTo"))
;;
(defcfun "ogre_scene_node_yaw_radian_transformspace"
    :void
  (ogre-scene-node :pointer)
  (angle okra-real)
  (relative-to transform-space))


;; name: "setDirection"
;; type: "void"
;; args: (("Real" . "x") ("Real" . "y") ("Real" . "z") ("TransformSpace" . "relativeTo") ("const Vector3&" . "localDirectionVector"))
;;
(defcfun "ogre_scene_node_set_direction_real_real_real_transformspace_vector3"
    :void
  (ogre-scene-node :pointer)
  (x okra-real)
  (y okra-real)
  (z okra-real)
  (relative-to transform-space)
  (local-direction-vector okra-array3))


;; name: "setDirection"
;; type: "void"
;; args: (("const Vector3&" . "vec") ("TransformSpace" . "relativeTo") ("const Vector3&" . "localDirectionVector"))
;;
(defcfun "ogre_scene_node_set_direction_vector3_transformspace_vector3"
    :void
  (ogre-scene-node :pointer)
  (vec okra-array3)
  (relative-to transform-space)
  (local-direction-vector okra-array3))


;; name: "lookAt"
;; type: "void"
;; args: (("const Vector3&" . "targetPoint") ("TransformSpace" . "relativeTo") ("const Vector3&" . "localDirectionVector"))
;;
(defcfun "ogre_scene_node_look_at_vector3_transformspace_vector3"
    :void
  (ogre-scene-node :pointer)
  (target-point okra-array3)
  (relative-to transform-space)
  (local-direction-vector okra-array3))


;; name: "setAutoTracking"
;; type: "void"
;; args: (("bool" . "enabled") ("SceneNode*" . "target") ("const Vector3&" . "localDirectionVector") ("const Vector3&" . "offset"))
;;
(defcfun "ogre_scene_node_set_auto_tracking_bool_scenenode_vector3_vector3"
    :void
  (ogre-scene-node :pointer)
  (enabled :boolean)
  (target :pointer)
  (local-direction-vector okra-array3)
  (offset okra-array3))


;; name: "setVisible"
;; type: "void"
;; args: (("bool" . "visible") ("bool" . "cascade"))
;;
(defcfun "ogre_scene_node_set_visible_bool_bool"
    :void
  (ogre-scene-node :pointer)
  (visible :boolean)
  (cascade :boolean))


;; name: "setDebugDisplayEnabled"
;; type: "void"
;; args: (("bool" . "enabled") ("bool" . "cascade"))
;;
(defcfun "ogre_scene_node_set_debug_display_enabled_bool_bool"
    :void
  (ogre-scene-node :pointer)
  (enabled :boolean)
  (cascade :boolean))


;;; Methods for Overloaded Foreign Functions

(defmethod set-direction ((this scene-node) &optional (arg0 nil) (arg1 nil) (arg2 nil) (arg3 nil) (arg4 nil))
  (cond
    ((and (typep arg0 'real) (typep arg1 'real) (typep arg2 'real) (typep arg3 'keyword) (typep arg4 '(simple-vector 3)))
     (ogre-scene-node-set-direction-real-real-real-transformspace-vector3 (pointer-to this) arg0 arg1 arg2 arg3 arg4))
    ((and (typep arg0 '(simple-vector 3)) (typep arg1 'keyword) (typep arg2 '(simple-vector 3)))
     (ogre-scene-node-set-direction-vector3-transformspace-vector3 (pointer-to this) arg0 arg1 arg2))
    (t (error "Overloaded method not defined for this class."))))


(defmethod look-at ((this scene-node) &optional (arg0 nil) (arg1 nil) (arg2 nil))
  (cond
    ((and (typep arg0 '(simple-vector 3)) (typep arg1 'keyword) (typep arg2 '(simple-vector 3)))
     (ogre-scene-node-look-at-vector3-transformspace-vector3 (pointer-to this) arg0 arg1 arg2))
    (t (error "Overloaded method not defined for this class."))))


(defmethod yaw ((this scene-node) &optional (arg0 nil) (arg1 nil))
  (cond
    ((and (typep arg0 'real) (typep arg1 'keyword))
     (ogre-scene-node-yaw-radian-transformspace (pointer-to this) arg0 arg1))
    (t (error "Overloaded method not defined for this class."))))


(defmethod set-auto-tracking ((this scene-node) &optional (arg0 nil) (arg1 nil) (arg2 nil) (arg3 nil))
  (cond
    ((and (typep arg0 'boolean) (typep arg1 'cffi:foreign-pointer) (typep arg2 '(simple-vector 3)) (typep arg3 '(simple-vector 3)))
     (ogre-scene-node-set-auto-tracking-bool-scenenode-vector3-vector3 (pointer-to this) arg0 arg1 arg2 arg3))
    (t (error "Overloaded method not defined for this class."))))


(defmethod set-visible ((this scene-node) &optional (arg0 nil) (arg1 nil))
  (cond
    ((and (typep arg0 'boolean) (typep arg1 'boolean))
     (ogre-scene-node-set-visible-bool-bool (pointer-to this) arg0 arg1))
    (t (error "Overloaded method not defined for this class."))))


(defmethod set-debug-display-enabled ((this scene-node) &optional (arg0 nil) (arg1 nil))
  (cond
    ((and (typep arg0 'boolean) (typep arg1 'boolean))
     (ogre-scene-node-set-debug-display-enabled-bool-bool (pointer-to this) arg0 arg1))
    (t (error "Overloaded method not defined for this class."))))


(defmethod get-attached-object ((this scene-node) &optional (arg0 nil))
  (cond
    ((and (typep arg0 'string))
     (ogre-scene-node-get-attached-object-string (pointer-to this) arg0))
    ((and (typep arg0 'integer))
     (ogre-scene-node-get-attached-object-unsignedshort (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod detach-object ((this scene-node) &optional (arg0 nil))
  (cond
    ((and (typep arg0 'string))
     (ogre-scene-node-detach-object-string (pointer-to this) arg0))
    ((and (typep arg0 'cffi:foreign-pointer))
     (ogre-scene-node-detach-object-movableobject (pointer-to this) arg0))
    ((and (typep arg0 'integer))
     (ogre-scene-node-detach-object-unsignedshort (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod remove-and-destroy-child ((this scene-node) &optional (arg0 nil))
  (cond
    ((and (typep arg0 'integer))
     (ogre-scene-node-remove-and-destroy-child-unsignedshort (pointer-to this) arg0))
    ((and (typep arg0 'string))
     (ogre-scene-node-remove-and-destroy-child-string (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod create-child-scene-node ((this scene-node) &optional (arg0 nil) (arg1 nil) (arg2 nil))
  (cond
    ((and (typep arg0 'string) (typep arg1 '(simple-vector 3)) (typep arg2 '(simple-vector 4)))
     (ogre-scene-node-create-child-scene-node-string-vector3-quaternion (pointer-to this) arg0 arg1 arg2))
    ((and (typep arg0 '(simple-vector 3)) (typep arg1 '(simple-vector 4)))
     (ogre-scene-node-create-child-scene-node-vector3-quaternion (pointer-to this) arg0 arg1))
    (t (error "Overloaded method not defined for this class."))))



