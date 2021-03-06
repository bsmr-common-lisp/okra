;;;; mesh.lisp
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
;;;; This file was generated on: 2009-10-29 10:28:01.

(in-package :okra-bindings)


;;; Class

(defclass mesh (ogre-object)
  ())


;;; Foreign Functions & Methods

;; name: "nameSubMesh"
;; type: "void"
;; args: (("const String&" . "name") ("ushort" . "index"))
;;
(defcfun "ogre_mesh_name_sub_mesh"
    :void
  (ogre-mesh :pointer)
  (name :string)
  (index :ushort))

(defmethod name-sub-mesh ((this mesh) name index)
  (ogre-mesh-name-sub-mesh (pointer-to this) name index))


;; name: "getNumSubMeshes"
;; type: "unsigned short"
;; args: "void"
;;
(defcfun "ogre_mesh_get_num_sub_meshes"
    :unsigned-short
  (ogre-mesh :pointer))

(defmethod get-num-sub-meshes ((this mesh))
  (ogre-mesh-get-num-sub-meshes (pointer-to this)))


;; name: "getSubMeshIterator"
;; type: "SubMeshIterator"
;; args: "void"
;;
(defcfun "ogre_mesh_get_sub_mesh_iterator"
    :pointer
  (ogre-mesh :pointer))

(defmethod get-sub-mesh-iterator ((this mesh))
  (ogre-mesh-get-sub-mesh-iterator (pointer-to this)))


;; name: "getBounds"
;; type: "const AxisAlignedBox&"
;; args: "void"
;;
(defcfun "ogre_mesh_get_bounds"
    :void
  (ogre-mesh :pointer)
  (array6 :pointer))

(defmethod get-bounds ((this mesh))
  (with-foreign-object (array 'okra-real 6)
    (ogre-mesh-get-bounds (pointer-to this) array)
    (vector (mem-aref array 'okra-real 0) (mem-aref array 'okra-real 1)
            (mem-aref array 'okra-real 2) (mem-aref array 'okra-real 3)
            (mem-aref array 'okra-real 4) (mem-aref array 'okra-real 5))))


;; name: "getBoundingSphereRadius"
;; type: "Real"
;; args: "void"
;;
(defcfun "ogre_mesh_get_bounding_sphere_radius"
    okra-real
  (ogre-mesh :pointer))

(defmethod get-bounding-sphere-radius ((this mesh))
  (ogre-mesh-get-bounding-sphere-radius (pointer-to this)))


;; name: "setSkeletonName"
;; type: "void"
;; args: (("const String&" . "skelName"))
;;
(defcfun "ogre_mesh_set_skeleton_name"
    :void
  (ogre-mesh :pointer)
  (skel-name :string))

(defmethod set-skeleton-name ((this mesh) skel-name)
  (ogre-mesh-set-skeleton-name (pointer-to this) skel-name))


;; name: "hasSkeleton"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_mesh_has_skeleton"
    :boolean
  (ogre-mesh :pointer))

(defmethod has-skeleton ((this mesh))
  (ogre-mesh-has-skeleton (pointer-to this)))


;; name: "hasVertexAnimation"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_mesh_has_vertex_animation"
    :boolean
  (ogre-mesh :pointer))

(defmethod has-vertex-animation ((this mesh))
  (ogre-mesh-has-vertex-animation (pointer-to this)))


;; name: "getSkeleton"
;; type: "const SkeletonPtr&"
;; args: "void"
;;
(defcfun "ogre_mesh_get_skeleton"
    :pointer
  (ogre-mesh :pointer))

(defmethod get-skeleton ((this mesh))
  (ogre-mesh-get-skeleton (pointer-to this)))


;; name: "getSkeletonName"
;; type: "const String&"
;; args: "void"
;;
(defcfun "ogre_mesh_get_skeleton_name"
    :string
  (ogre-mesh :pointer))

(defmethod get-skeleton-name ((this mesh))
  (ogre-mesh-get-skeleton-name (pointer-to this)))


;; name: "addBoneAssignment"
;; type: "void"
;; args: (("const VertexBoneAssignment&" . "vertBoneAssign"))
;;
(defcfun "ogre_mesh_add_bone_assignment"
    :void
  (ogre-mesh :pointer)
  (vert-bone-assign :pointer))

(defmethod add-bone-assignment ((this mesh) vert-bone-assign)
  (ogre-mesh-add-bone-assignment (pointer-to this) vert-bone-assign))


;; name: "clearBoneAssignments"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_mesh_clear_bone_assignments"
    :void
  (ogre-mesh :pointer))

(defmethod clear-bone-assignments ((this mesh))
  (ogre-mesh-clear-bone-assignments (pointer-to this)))


;; name: "getBoneAssignmentIterator"
;; type: "BoneAssignmentIterator"
;; args: "void"
;;
(defcfun "ogre_mesh_get_bone_assignment_iterator"
    :pointer
  (ogre-mesh :pointer))

(defmethod get-bone-assignment-iterator ((this mesh))
  (ogre-mesh-get-bone-assignment-iterator (pointer-to this)))


;; name: "getBoneAssignments"
;; type: "const VertexBoneAssignmentList&"
;; args: "void"
;;
(defcfun "ogre_mesh_get_bone_assignments"
    :pointer
  (ogre-mesh :pointer))

(defmethod get-bone-assignments ((this mesh))
  (ogre-mesh-get-bone-assignments (pointer-to this)))


;; name: "generateLodLevels"
;; type: "void"
;; args: (("const LodDistanceList&" . "lodDistances") ("ProgressiveMesh::VertexReductionQuota" . "reductionMethod") ("Real" . "reductionValue"))
;;
(defcfun "ogre_mesh_generate_lod_levels"
    :void
  (ogre-mesh :pointer)
  (lod-distances :pointer)
  (reduction-method :unsigned-int)
  (reduction-value okra-real))

(defmethod generate-lod-levels ((this mesh) lod-distances reduction-method reduction-value)
  (ogre-mesh-generate-lod-levels (pointer-to this) lod-distances reduction-method reduction-value))


;; name: "getNumLodLevels"
;; type: "ushort"
;; args: "void"
;;
(defcfun "ogre_mesh_get_num_lod_levels"
    :ushort
  (ogre-mesh :pointer))

(defmethod get-num-lod-levels ((this mesh))
  (ogre-mesh-get-num-lod-levels (pointer-to this)))


;; name: "getLodLevel"
;; type: "const MeshLodUsage&"
;; args: (("ushort" . "index"))
;;
(defcfun "ogre_mesh_get_lod_level"
    :pointer
  (ogre-mesh :pointer)
  (index :ushort))

(defmethod get-lod-level ((this mesh) index)
  (ogre-mesh-get-lod-level (pointer-to this) index))


;; name: "createManualLodLevel"
;; type: "void"
;; args: (("Real" . "fromDepth") ("const String&" . "meshName"))
;;
(defcfun "ogre_mesh_create_manual_lod_level"
    :void
  (ogre-mesh :pointer)
  (from-depth okra-real)
  (mesh-name :string))

(defmethod create-manual-lod-level ((this mesh) from-depth mesh-name)
  (ogre-mesh-create-manual-lod-level (pointer-to this) from-depth mesh-name))


;; name: "updateManualLodLevel"
;; type: "void"
;; args: (("ushort" . "index") ("const String&" . "meshName"))
;;
(defcfun "ogre_mesh_update_manual_lod_level"
    :void
  (ogre-mesh :pointer)
  (index :ushort)
  (mesh-name :string))

(defmethod update-manual-lod-level ((this mesh) index mesh-name)
  (ogre-mesh-update-manual-lod-level (pointer-to this) index mesh-name))


;; name: "getLodIndex"
;; type: "ushort"
;; args: (("Real" . "depth"))
;;
(defcfun "ogre_mesh_get_lod_index"
    :ushort
  (ogre-mesh :pointer)
  (depth okra-real))

(defmethod get-lod-index ((this mesh) depth)
  (ogre-mesh-get-lod-index (pointer-to this) depth))


;; name: "getLodIndexSquaredDepth"
;; type: "ushort"
;; args: (("Real" . "squaredDepth"))
;;
(defcfun "ogre_mesh_get_lod_index_squared_depth"
    :ushort
  (ogre-mesh :pointer)
  (squared-depth okra-real))

(defmethod get-lod-index-squared-depth ((this mesh) squared-depth)
  (ogre-mesh-get-lod-index-squared-depth (pointer-to this) squared-depth))


;; name: "isLodManual"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_mesh_is_lod_manual"
    :boolean
  (ogre-mesh :pointer))

(defmethod is-lod-manual ((this mesh))
  (ogre-mesh-is-lod-manual (pointer-to this)))


;; name: "removeLodLevels"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_mesh_remove_lod_levels"
    :void
  (ogre-mesh :pointer))

(defmethod remove-lod-levels ((this mesh))
  (ogre-mesh-remove-lod-levels (pointer-to this)))


;; name: "setVertexBufferPolicy"
;; type: "void"
;; args: (("HardwareBuffer::Usage" . "usage") ("bool" . "shadowBuffer"))
;;
(defcfun "ogre_mesh_set_vertex_buffer_policy"
    :void
  (ogre-mesh :pointer)
  (usage :unsigned-int)
  (shadow-buffer :boolean))

(defmethod set-vertex-buffer-policy ((this mesh) usage shadow-buffer)
  (ogre-mesh-set-vertex-buffer-policy (pointer-to this) usage shadow-buffer))


;; name: "setIndexBufferPolicy"
;; type: "void"
;; args: (("HardwareBuffer::Usage" . "usage") ("bool" . "shadowBuffer"))
;;
(defcfun "ogre_mesh_set_index_buffer_policy"
    :void
  (ogre-mesh :pointer)
  (usage :unsigned-int)
  (shadow-buffer :boolean))

(defmethod set-index-buffer-policy ((this mesh) usage shadow-buffer)
  (ogre-mesh-set-index-buffer-policy (pointer-to this) usage shadow-buffer))


;; name: "getVertexBufferUsage"
;; type: "HardwareBuffer::Usage"
;; args: "void"
;;
(defcfun "ogre_mesh_get_vertex_buffer_usage"
    :unsigned-int
  (ogre-mesh :pointer))

(defmethod get-vertex-buffer-usage ((this mesh))
  (ogre-mesh-get-vertex-buffer-usage (pointer-to this)))


;; name: "getIndexBufferUsage"
;; type: "HardwareBuffer::Usage"
;; args: "void"
;;
(defcfun "ogre_mesh_get_index_buffer_usage"
    :unsigned-int
  (ogre-mesh :pointer))

(defmethod get-index-buffer-usage ((this mesh))
  (ogre-mesh-get-index-buffer-usage (pointer-to this)))


;; name: "isVertexBufferShadowed"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_mesh_is_vertex_buffer_shadowed"
    :boolean
  (ogre-mesh :pointer))

(defmethod is-vertex-buffer-shadowed ((this mesh))
  (ogre-mesh-is-vertex-buffer-shadowed (pointer-to this)))


;; name: "isIndexBufferShadowed"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_mesh_is_index_buffer_shadowed"
    :boolean
  (ogre-mesh :pointer))

(defmethod is-index-buffer-shadowed ((this mesh))
  (ogre-mesh-is-index-buffer-shadowed (pointer-to this)))


;; name: "buildTangentVectors"
;; type: "void"
;; args: (("VertexElementSemantic" . "targetSemantic") ("unsigned short" . "sourceTexCoordSet") ("unsigned short" . "index") ("bool" . "splitMirrored") ("bool" . "splitRotated") ("bool" . "storeParityInW"))
;;
(defcfun "ogre_mesh_build_tangent_vectors"
    :void
  (ogre-mesh :pointer)
  (target-semantic vertex-element-semantic)
  (source-tex-coord-set :unsigned-short)
  (index :unsigned-short)
  (split-mirrored :boolean)
  (split-rotated :boolean)
  (store-parity-in-w :boolean))

(defmethod build-tangent-vectors ((this mesh) target-semantic source-tex-coord-set index split-mirrored split-rotated store-parity-in-w)
  (ogre-mesh-build-tangent-vectors (pointer-to this) target-semantic source-tex-coord-set index split-mirrored split-rotated store-parity-in-w))


;; name: "suggestTangentVectorBuildParams"
;; type: "bool"
;; args: (("VertexElementSemantic" . "targetSemantic") ("unsigned short&" . "outSourceCoordSet") ("unsigned short&" . "outIndex"))
;;
(defcfun "ogre_mesh_suggest_tangent_vector_build_params"
    :boolean
  (ogre-mesh :pointer)
  (target-semantic vertex-element-semantic)
  (out-source-coord-set :pointer)
  (out-index :pointer))

(defmethod suggest-tangent-vector-build-params ((this mesh) target-semantic out-source-coord-set out-index)
  (ogre-mesh-suggest-tangent-vector-build-params (pointer-to this) target-semantic out-source-coord-set out-index))


;; name: "buildEdgeList"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_mesh_build_edge_list"
    :void
  (ogre-mesh :pointer))

(defmethod build-edge-list ((this mesh))
  (ogre-mesh-build-edge-list (pointer-to this)))


;; name: "freeEdgeList"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_mesh_free_edge_list"
    :void
  (ogre-mesh :pointer))

(defmethod free-edge-list ((this mesh))
  (ogre-mesh-free-edge-list (pointer-to this)))


;; name: "prepareForShadowVolume"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_mesh_prepare_for_shadow_volume"
    :void
  (ogre-mesh :pointer))

(defmethod prepare-for-shadow-volume ((this mesh))
  (ogre-mesh-prepare-for-shadow-volume (pointer-to this)))


;; name: "isPreparedForShadowVolumes"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_mesh_is_prepared_for_shadow_volumes"
    :boolean
  (ogre-mesh :pointer))

(defmethod is-prepared-for-shadow-volumes ((this mesh))
  (ogre-mesh-is-prepared-for-shadow-volumes (pointer-to this)))


;; name: "isEdgeListBuilt"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_mesh_is_edge_list_built"
    :boolean
  (ogre-mesh :pointer))

(defmethod is-edge-list-built ((this mesh))
  (ogre-mesh-is-edge-list-built (pointer-to this)))


;; name: "getSubMeshNameMap"
;; type: "const SubMeshNameMap&"
;; args: "void"
;;
(defcfun "ogre_mesh_get_sub_mesh_name_map"
    :pointer
  (ogre-mesh :pointer))

(defmethod get-sub-mesh-name-map ((this mesh))
  (ogre-mesh-get-sub-mesh-name-map (pointer-to this)))


;; name: "setAutoBuildEdgeLists"
;; type: "void"
;; args: (("bool" . "autobuild"))
;;
(defcfun "ogre_mesh_set_auto_build_edge_lists"
    :void
  (ogre-mesh :pointer)
  (autobuild :boolean))

(defmethod set-auto-build-edge-lists ((this mesh) autobuild)
  (ogre-mesh-set-auto-build-edge-lists (pointer-to this) autobuild))


;; name: "getAutoBuildEdgeLists"
;; type: "bool"
;; args: "void"
;;
(defcfun "ogre_mesh_get_auto_build_edge_lists"
    :boolean
  (ogre-mesh :pointer))

(defmethod get-auto-build-edge-lists ((this mesh))
  (ogre-mesh-get-auto-build-edge-lists (pointer-to this)))


;; name: "getSharedVertexDataAnimationType"
;; type: "VertexAnimationType"
;; args: "void"
;;
(defcfun "ogre_mesh_get_shared_vertex_data_animation_type"
    vertex-animation-type
  (ogre-mesh :pointer))

(defmethod get-shared-vertex-data-animation-type ((this mesh))
  (ogre-mesh-get-shared-vertex-data-animation-type (pointer-to this)))


;; name: "createAnimation"
;; type: "Animation*"
;; args: (("const String&" . "name") ("Real" . "length"))
;;
(defcfun "ogre_mesh_create_animation"
    :pointer
  (ogre-mesh :pointer)
  (name :string)
  (length okra-real))

(defmethod create-animation ((this mesh) name length)
  (ogre-mesh-create-animation (pointer-to this) name length))


;; name: "hasAnimation"
;; type: "bool"
;; args: (("const String&" . "name"))
;;
(defcfun "ogre_mesh_has_animation"
    :boolean
  (ogre-mesh :pointer)
  (name :string))

(defmethod has-animation ((this mesh) name)
  (ogre-mesh-has-animation (pointer-to this) name))


;; name: "removeAnimation"
;; type: "void"
;; args: (("const String&" . "name"))
;;
(defcfun "ogre_mesh_remove_animation"
    :void
  (ogre-mesh :pointer)
  (name :string))

(defmethod remove-animation ((this mesh) name)
  (ogre-mesh-remove-animation (pointer-to this) name))


;; name: "getNumAnimations"
;; type: "unsigned short"
;; args: "void"
;;
(defcfun "ogre_mesh_get_num_animations"
    :unsigned-short
  (ogre-mesh :pointer))

(defmethod get-num-animations ((this mesh))
  (ogre-mesh-get-num-animations (pointer-to this)))


;; name: "removeAllAnimations"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_mesh_remove_all_animations"
    :void
  (ogre-mesh :pointer))

(defmethod remove-all-animations ((this mesh))
  (ogre-mesh-remove-all-animations (pointer-to this)))


;; name: "getVertexDataByTrackHandle"
;; type: "VertexData*"
;; args: (("unsigned short" . "handle"))
;;
(defcfun "ogre_mesh_get_vertex_data_by_track_handle"
    :pointer
  (ogre-mesh :pointer)
  (handle :unsigned-short))

(defmethod get-vertex-data-by-track-handle ((this mesh) handle)
  (ogre-mesh-get-vertex-data-by-track-handle (pointer-to this) handle))


;; name: "updateMaterialForAllSubMeshes"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_mesh_update_material_for_all_sub_meshes"
    :void
  (ogre-mesh :pointer))

(defmethod update-material-for-all-sub-meshes ((this mesh))
  (ogre-mesh-update-material-for-all-sub-meshes (pointer-to this)))


;; name: "createPose"
;; type: "Pose*"
;; args: (("ushort" . "target") ("const String&" . "name"))
;;
(defcfun "ogre_mesh_create_pose"
    :pointer
  (ogre-mesh :pointer)
  (target :ushort)
  (name :string))

(defmethod create-pose ((this mesh) target name)
  (ogre-mesh-create-pose (pointer-to this) target name))


;; name: "getPoseCount"
;; type: "size_t"
;; args: "void"
;;
(defcfun "ogre_mesh_get_pose_count"
    :unsigned-int
  (ogre-mesh :pointer))

(defmethod get-pose-count ((this mesh))
  (ogre-mesh-get-pose-count (pointer-to this)))


;; name: "removeAllPoses"
;; type: "void"
;; args: "void"
;;
(defcfun "ogre_mesh_remove_all_poses"
    :void
  (ogre-mesh :pointer))

(defmethod remove-all-poses ((this mesh))
  (ogre-mesh-remove-all-poses (pointer-to this)))


;; name: "getPoseIterator"
;; type: "PoseIterator"
;; args: "void"
;;
(defcfun "ogre_mesh_get_pose_iterator"
    :pointer
  (ogre-mesh :pointer))

(defmethod get-pose-iterator ((this mesh))
  (ogre-mesh-get-pose-iterator (pointer-to this)))


;; name: "getPoseList"
;; type: "const PoseList&"
;; args: "void"
;;
(defcfun "ogre_mesh_get_pose_list"
    :pointer
  (ogre-mesh :pointer))

(defmethod get-pose-list ((this mesh))
  (ogre-mesh-get-pose-list (pointer-to this)))


;;; Overloaded Foreign Functions

;; name: "createSubMesh"
;; type: "SubMesh*"
;; args: "void"
;;
(defcfun "ogre_mesh_create_sub_mesh_void"
    :pointer
  (ogre-mesh :pointer))


;; name: "createSubMesh"
;; type: "SubMesh*"
;; args: (("const String&" . "name"))
;;
(defcfun "ogre_mesh_create_sub_mesh_string"
    :pointer
  (ogre-mesh :pointer)
  (name :string))


;; name: "getSubMesh"
;; type: "SubMesh*"
;; args: (("unsigned short" . "index"))
;;
(defcfun "ogre_mesh_get_sub_mesh_unsignedshort"
    :pointer
  (ogre-mesh :pointer)
  (index :unsigned-short))


;; name: "getSubMesh"
;; type: "SubMesh*"
;; args: (("const String&" . "name"))
;;
(defcfun "ogre_mesh_get_sub_mesh_string"
    :pointer
  (ogre-mesh :pointer)
  (name :string))


;; name: "clone"
;; type: "MeshPtr"
;; args: (("const String&" . "newName") ("const String&" . "newGroup"))
;;
(defcfun "ogre_mesh_clone_string_string"
    :pointer
  (ogre-mesh :pointer)
  (new-name :string)
  (new-group :string))


;; name: "getEdgeList"
;; type: "const EdgeData*"
;; args: (("unsigned int" . "lodIndex"))
;;
(defcfun "ogre_mesh_get_edge_list_unsignedint"
    :pointer
  (ogre-mesh :pointer)
  (lod-index :unsigned-int))


;; name: "getAnimation"
;; type: "Animation*"
;; args: (("const String&" . "name"))
;;
(defcfun "ogre_mesh_get_animation_string"
    :pointer
  (ogre-mesh :pointer)
  (name :string))


;; name: "getAnimation"
;; type: "Animation*"
;; args: (("unsigned short" . "index"))
;;
(defcfun "ogre_mesh_get_animation_unsignedshort"
    :pointer
  (ogre-mesh :pointer)
  (index :unsigned-short))


;; name: "getPose"
;; type: "Pose*"
;; args: (("ushort" . "index"))
;;
(defcfun "ogre_mesh_get_pose_ushort"
    :pointer
  (ogre-mesh :pointer)
  (index :ushort))


;; name: "getPose"
;; type: "Pose*"
;; args: (("const String&" . "name"))
;;
(defcfun "ogre_mesh_get_pose_string"
    :pointer
  (ogre-mesh :pointer)
  (name :string))


;; name: "removePose"
;; type: "void"
;; args: (("ushort" . "index"))
;;
(defcfun "ogre_mesh_remove_pose_ushort"
    :void
  (ogre-mesh :pointer)
  (index :ushort))


;; name: "removePose"
;; type: "void"
;; args: (("const String&" . "name"))
;;
(defcfun "ogre_mesh_remove_pose_string"
    :void
  (ogre-mesh :pointer)
  (name :string))


;;; Methods for Overloaded Foreign Functions

(defmethod clone ((this mesh) &optional (arg0 nil) (arg1 nil))
  (cond
    ((and (typep arg0 'string) (typep arg1 'string))
     (ogre-mesh-clone-string-string (pointer-to this) arg0 arg1))
    (t (error "Overloaded method not defined for this class."))))


(defmethod get-edge-list ((this mesh) &optional (arg0 nil))
  (cond
    ((and (typep arg0 'integer))
     (ogre-mesh-get-edge-list-unsignedint (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod create-sub-mesh ((this mesh) &optional (arg0 nil))
  (cond
    ((and (typep arg0 'null))
     (ogre-mesh-create-sub-mesh-void (pointer-to this)))
    ((and (typep arg0 'string))
     (ogre-mesh-create-sub-mesh-string (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod get-sub-mesh ((this mesh) &optional (arg0 nil))
  (cond
    ((and (typep arg0 'string))
     (ogre-mesh-get-sub-mesh-string (pointer-to this) arg0))
    ((and (typep arg0 'integer))
     (ogre-mesh-get-sub-mesh-unsignedshort (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod get-animation ((this mesh) &optional (arg0 nil))
  (cond
    ((and (typep arg0 'integer))
     (ogre-mesh-get-animation-unsignedshort (pointer-to this) arg0))
    ((and (typep arg0 'string))
     (ogre-mesh-get-animation-string (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod get-pose ((this mesh) &optional (arg0 nil))
  (cond
    ((and (typep arg0 'string))
     (ogre-mesh-get-pose-string (pointer-to this) arg0))
    ((and (typep arg0 'integer))
     (ogre-mesh-get-pose-ushort (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))


(defmethod remove-pose ((this mesh) &optional (arg0 nil))
  (cond
    ((and (typep arg0 'string))
     (ogre-mesh-remove-pose-string (pointer-to this) arg0))
    ((and (typep arg0 'integer))
     (ogre-mesh-remove-pose-ushort (pointer-to this) arg0))
    (t (error "Overloaded method not defined for this class."))))



