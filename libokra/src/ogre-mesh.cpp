// ogre-mesh.cpp
//
// This file has been generated by the Okra Bindings Generator.
// You should not edit this file unless you know what you're doing.
// Any changes you've made directly to this file will not be retained
// when a new instance of this file is generated.
//
// author: Erik Winkels (aerique@xs4all.nl)
//
// See the LICENSE file in the Okra root directory for more info.
//
// This file was generated on: 2009-10-28 16:35:08.

#include "handwritten/okra.h"


// Prototypes

extern "C"
{
    SubMesh* ogre_mesh_create_sub_mesh_void (Mesh*);
    SubMesh* ogre_mesh_create_sub_mesh_string (Mesh*, const char*);
    void ogre_mesh_name_sub_mesh (Mesh*, const char*, unsigned short);
    unsigned short ogre_mesh_get_num_sub_meshes (Mesh*);
    SubMesh* ogre_mesh_get_sub_mesh_unsignedshort (Mesh*, unsigned short);
    SubMesh* ogre_mesh_get_sub_mesh_string (Mesh*, const char*);
    Mesh::SubMeshIterator ogre_mesh_get_sub_mesh_iterator (Mesh*);
    Mesh* ogre_mesh_clone_string_string (Mesh*, const char*, const char*);
    const AxisAlignedBox& ogre_mesh_get_bounds (Mesh*);
    Real ogre_mesh_get_bounding_sphere_radius (Mesh*);
    void ogre_mesh_set_skeleton_name (Mesh*, const char*);
    bool ogre_mesh_has_skeleton (Mesh*);
    bool ogre_mesh_has_vertex_animation (Mesh*);
    const SkeletonPtr& ogre_mesh_get_skeleton (Mesh*);
    const char* ogre_mesh_get_skeleton_name (Mesh*);
    void ogre_mesh_add_bone_assignment (Mesh*, const VertexBoneAssignment&);
    void ogre_mesh_clear_bone_assignments (Mesh*);
    Mesh::BoneAssignmentIterator ogre_mesh_get_bone_assignment_iterator (Mesh*);
    const SubMesh::VertexBoneAssignmentList& ogre_mesh_get_bone_assignments (Mesh*);
    void ogre_mesh_generate_lod_levels (Mesh*, const Material::LodDistanceList&, ProgressiveMesh::VertexReductionQuota, Real);
    unsigned short ogre_mesh_get_num_lod_levels (Mesh*);
    const MeshLodUsage& ogre_mesh_get_lod_level (Mesh*, unsigned short);
    void ogre_mesh_create_manual_lod_level (Mesh*, Real, const char*);
    void ogre_mesh_update_manual_lod_level (Mesh*, unsigned short, const char*);
    unsigned short ogre_mesh_get_lod_index (Mesh*, Real);
    unsigned short ogre_mesh_get_lod_index_squared_depth (Mesh*, Real);
    bool ogre_mesh_is_lod_manual (Mesh*);
    void ogre_mesh_remove_lod_levels (Mesh*);
    void ogre_mesh_set_vertex_buffer_policy (Mesh*, HardwareBuffer::Usage, bool);
    void ogre_mesh_set_index_buffer_policy (Mesh*, HardwareBuffer::Usage, bool);
    HardwareBuffer::Usage ogre_mesh_get_vertex_buffer_usage (Mesh*);
    HardwareBuffer::Usage ogre_mesh_get_index_buffer_usage (Mesh*);
    bool ogre_mesh_is_vertex_buffer_shadowed (Mesh*);
    bool ogre_mesh_is_index_buffer_shadowed (Mesh*);
    void ogre_mesh_build_tangent_vectors (Mesh*, VertexElementSemantic, unsigned short, unsigned short, bool, bool, bool);
    bool ogre_mesh_suggest_tangent_vector_build_params (Mesh*, VertexElementSemantic, unsigned short&, unsigned short&);
    void ogre_mesh_build_edge_list (Mesh*);
    void ogre_mesh_free_edge_list (Mesh*);
    void ogre_mesh_prepare_for_shadow_volume (Mesh*);
    const EdgeData* ogre_mesh_get_edge_list_unsignedint (Mesh*, unsigned int);
    bool ogre_mesh_is_prepared_for_shadow_volumes (Mesh*);
    bool ogre_mesh_is_edge_list_built (Mesh*);
    const Mesh::SubMeshNameMap& ogre_mesh_get_sub_mesh_name_map (Mesh*);
    void ogre_mesh_set_auto_build_edge_lists (Mesh*, bool);
    bool ogre_mesh_get_auto_build_edge_lists (Mesh*);
    VertexAnimationType ogre_mesh_get_shared_vertex_data_animation_type (Mesh*);
    Animation* ogre_mesh_create_animation (Mesh*, const char*, Real);
    Animation* ogre_mesh_get_animation_string (Mesh*, const char*);
    bool ogre_mesh_has_animation (Mesh*, const char*);
    void ogre_mesh_remove_animation (Mesh*, const char*);
    unsigned short ogre_mesh_get_num_animations (Mesh*);
    Animation* ogre_mesh_get_animation_unsignedshort (Mesh*, unsigned short);
    void ogre_mesh_remove_all_animations (Mesh*);
    VertexData* ogre_mesh_get_vertex_data_by_track_handle (Mesh*, unsigned short);
    void ogre_mesh_update_material_for_all_sub_meshes (Mesh*);
    Pose* ogre_mesh_create_pose (Mesh*, unsigned short, const char*);
    size_t ogre_mesh_get_pose_count (Mesh*);
    Pose* ogre_mesh_get_pose_ushort (Mesh*, unsigned short);
    Pose* ogre_mesh_get_pose_string (Mesh*, const char*);
    void ogre_mesh_remove_pose_ushort (Mesh*, unsigned short);
    void ogre_mesh_remove_pose_string (Mesh*, const char*);
    void ogre_mesh_remove_all_poses (Mesh*);
    Mesh::PoseIterator ogre_mesh_get_pose_iterator (Mesh*);
    const PoseList& ogre_mesh_get_pose_list (Mesh*);
}


// Functions

// name: "createSubMesh"
// type: "SubMesh*"
// args: "void"
//
SubMesh* ogre_mesh_create_sub_mesh_void (Mesh* ogre_mesh)
{
    return ogre_mesh->createSubMesh();
}

// name: "createSubMesh"
// type: "SubMesh*"
// args: (("const String&" . "name"))
//
SubMesh* ogre_mesh_create_sub_mesh_string (Mesh* ogre_mesh, const char* name)
{
    return ogre_mesh->createSubMesh(name);
}

// name: "nameSubMesh"
// type: "void"
// args: (("const String&" . "name") ("ushort" . "index"))
//
void ogre_mesh_name_sub_mesh (Mesh* ogre_mesh, const char* name, unsigned short index)
{
    ogre_mesh->nameSubMesh(name, index);
}

// name: "getNumSubMeshes"
// type: "unsigned short"
// args: "void"
//
unsigned short ogre_mesh_get_num_sub_meshes (Mesh* ogre_mesh)
{
    return ogre_mesh->getNumSubMeshes();
}

// name: "getSubMesh"
// type: "SubMesh*"
// args: (("unsigned short" . "index"))
//
SubMesh* ogre_mesh_get_sub_mesh_unsignedshort (Mesh* ogre_mesh, unsigned short index)
{
    return ogre_mesh->getSubMesh(index);
}

// name: "getSubMesh"
// type: "SubMesh*"
// args: (("const String&" . "name"))
//
SubMesh* ogre_mesh_get_sub_mesh_string (Mesh* ogre_mesh, const char* name)
{
    return ogre_mesh->getSubMesh(name);
}

// name: "getSubMeshIterator"
// type: "SubMeshIterator"
// args: "void"
//
Mesh::SubMeshIterator ogre_mesh_get_sub_mesh_iterator (Mesh* ogre_mesh)
{
    return ogre_mesh->getSubMeshIterator();
}

// name: "clone"
// type: "MeshPtr"
// args: (("const String&" . "newName") ("const String&" . "newGroup"))
//
Mesh* ogre_mesh_clone_string_string (Mesh* ogre_mesh, const char* newName, const char* newGroup)
{
    MeshPtr mesh_ptr = ogre_mesh->clone(newName, newGroup);
    return mesh_ptr.getPointer();
}

// name: "getBounds"
// type: "const AxisAlignedBox&"
// args: "void"
//
const AxisAlignedBox& ogre_mesh_get_bounds (Mesh* ogre_mesh)
{
    return ogre_mesh->getBounds();
}

// name: "getBoundingSphereRadius"
// type: "Real"
// args: "void"
//
Real ogre_mesh_get_bounding_sphere_radius (Mesh* ogre_mesh)
{
    return ogre_mesh->getBoundingSphereRadius();
}

// name: "setSkeletonName"
// type: "void"
// args: (("const String&" . "skelName"))
//
void ogre_mesh_set_skeleton_name (Mesh* ogre_mesh, const char* skelName)
{
    ogre_mesh->setSkeletonName(skelName);
}

// name: "hasSkeleton"
// type: "bool"
// args: "void"
//
bool ogre_mesh_has_skeleton (Mesh* ogre_mesh)
{
    return ogre_mesh->hasSkeleton();
}

// name: "hasVertexAnimation"
// type: "bool"
// args: "void"
//
bool ogre_mesh_has_vertex_animation (Mesh* ogre_mesh)
{
    return ogre_mesh->hasVertexAnimation();
}

// name: "getSkeleton"
// type: "const SkeletonPtr&"
// args: "void"
//
const SkeletonPtr& ogre_mesh_get_skeleton (Mesh* ogre_mesh)
{
    return ogre_mesh->getSkeleton();
}

// name: "getSkeletonName"
// type: "const String&"
// args: "void"
//
const char* ogre_mesh_get_skeleton_name (Mesh* ogre_mesh)
{
    return ogre_mesh->getSkeletonName().c_str();
}

// name: "addBoneAssignment"
// type: "void"
// args: (("const VertexBoneAssignment&" . "vertBoneAssign"))
//
void ogre_mesh_add_bone_assignment (Mesh* ogre_mesh, const VertexBoneAssignment& vertBoneAssign)
{
    ogre_mesh->addBoneAssignment(vertBoneAssign);
}

// name: "clearBoneAssignments"
// type: "void"
// args: "void"
//
void ogre_mesh_clear_bone_assignments (Mesh* ogre_mesh)
{
    ogre_mesh->clearBoneAssignments();
}

// name: "getBoneAssignmentIterator"
// type: "BoneAssignmentIterator"
// args: "void"
//
Mesh::BoneAssignmentIterator ogre_mesh_get_bone_assignment_iterator (Mesh* ogre_mesh)
{
    return ogre_mesh->getBoneAssignmentIterator();
}

// name: "getBoneAssignments"
// type: "const VertexBoneAssignmentList&"
// args: "void"
//
const SubMesh::VertexBoneAssignmentList& ogre_mesh_get_bone_assignments (Mesh* ogre_mesh)
{
    return ogre_mesh->getBoneAssignments();
}

// name: "generateLodLevels"
// type: "void"
// args: (("const LodDistanceList&" . "lodDistances") ("ProgressiveMesh::VertexReductionQuota" . "reductionMethod") ("Real" . "reductionValue"))
//
void ogre_mesh_generate_lod_levels (Mesh* ogre_mesh, const Material::LodDistanceList& lodDistances, ProgressiveMesh::VertexReductionQuota reductionMethod, Real reductionValue)
{
    ogre_mesh->generateLodLevels(lodDistances, reductionMethod, reductionValue);
}

// name: "getNumLodLevels"
// type: "ushort"
// args: "void"
//
unsigned short ogre_mesh_get_num_lod_levels (Mesh* ogre_mesh)
{
    return ogre_mesh->getNumLodLevels();
}

// name: "getLodLevel"
// type: "const MeshLodUsage&"
// args: (("ushort" . "index"))
//
const MeshLodUsage& ogre_mesh_get_lod_level (Mesh* ogre_mesh, unsigned short index)
{
    return ogre_mesh->getLodLevel(index);
}

// name: "createManualLodLevel"
// type: "void"
// args: (("Real" . "fromDepth") ("const String&" . "meshName"))
//
void ogre_mesh_create_manual_lod_level (Mesh* ogre_mesh, Real fromDepth, const char* meshName)
{
    ogre_mesh->createManualLodLevel(fromDepth, meshName);
}

// name: "updateManualLodLevel"
// type: "void"
// args: (("ushort" . "index") ("const String&" . "meshName"))
//
void ogre_mesh_update_manual_lod_level (Mesh* ogre_mesh, unsigned short index, const char* meshName)
{
    ogre_mesh->updateManualLodLevel(index, meshName);
}

// name: "getLodIndex"
// type: "ushort"
// args: (("Real" . "depth"))
//
unsigned short ogre_mesh_get_lod_index (Mesh* ogre_mesh, Real depth)
{
    return ogre_mesh->getLodIndex(depth);
}

// name: "getLodIndexSquaredDepth"
// type: "ushort"
// args: (("Real" . "squaredDepth"))
//
unsigned short ogre_mesh_get_lod_index_squared_depth (Mesh* ogre_mesh, Real squaredDepth)
{
    return ogre_mesh->getLodIndexSquaredDepth(squaredDepth);
}

// name: "isLodManual"
// type: "bool"
// args: "void"
//
bool ogre_mesh_is_lod_manual (Mesh* ogre_mesh)
{
    return ogre_mesh->isLodManual();
}

// name: "removeLodLevels"
// type: "void"
// args: "void"
//
void ogre_mesh_remove_lod_levels (Mesh* ogre_mesh)
{
    ogre_mesh->removeLodLevels();
}

// name: "setVertexBufferPolicy"
// type: "void"
// args: (("HardwareBuffer::Usage" . "usage") ("bool" . "shadowBuffer"))
//
void ogre_mesh_set_vertex_buffer_policy (Mesh* ogre_mesh, HardwareBuffer::Usage usage, bool shadowBuffer)
{
    ogre_mesh->setVertexBufferPolicy(usage, shadowBuffer);
}

// name: "setIndexBufferPolicy"
// type: "void"
// args: (("HardwareBuffer::Usage" . "usage") ("bool" . "shadowBuffer"))
//
void ogre_mesh_set_index_buffer_policy (Mesh* ogre_mesh, HardwareBuffer::Usage usage, bool shadowBuffer)
{
    ogre_mesh->setIndexBufferPolicy(usage, shadowBuffer);
}

// name: "getVertexBufferUsage"
// type: "HardwareBuffer::Usage"
// args: "void"
//
HardwareBuffer::Usage ogre_mesh_get_vertex_buffer_usage (Mesh* ogre_mesh)
{
    return ogre_mesh->getVertexBufferUsage();
}

// name: "getIndexBufferUsage"
// type: "HardwareBuffer::Usage"
// args: "void"
//
HardwareBuffer::Usage ogre_mesh_get_index_buffer_usage (Mesh* ogre_mesh)
{
    return ogre_mesh->getIndexBufferUsage();
}

// name: "isVertexBufferShadowed"
// type: "bool"
// args: "void"
//
bool ogre_mesh_is_vertex_buffer_shadowed (Mesh* ogre_mesh)
{
    return ogre_mesh->isVertexBufferShadowed();
}

// name: "isIndexBufferShadowed"
// type: "bool"
// args: "void"
//
bool ogre_mesh_is_index_buffer_shadowed (Mesh* ogre_mesh)
{
    return ogre_mesh->isIndexBufferShadowed();
}

// name: "buildTangentVectors"
// type: "void"
// args: (("VertexElementSemantic" . "targetSemantic") ("unsigned short" . "sourceTexCoordSet") ("unsigned short" . "index") ("bool" . "splitMirrored") ("bool" . "splitRotated") ("bool" . "storeParityInW"))
//
void ogre_mesh_build_tangent_vectors (Mesh* ogre_mesh, VertexElementSemantic targetSemantic, unsigned short sourceTexCoordSet, unsigned short index, bool splitMirrored, bool splitRotated, bool storeParityInW)
{
    ogre_mesh->buildTangentVectors(targetSemantic, sourceTexCoordSet, index, splitMirrored, splitRotated, storeParityInW);
}

// name: "suggestTangentVectorBuildParams"
// type: "bool"
// args: (("VertexElementSemantic" . "targetSemantic") ("unsigned short&" . "outSourceCoordSet") ("unsigned short&" . "outIndex"))
//
bool ogre_mesh_suggest_tangent_vector_build_params (Mesh* ogre_mesh, VertexElementSemantic targetSemantic, unsigned short& outSourceCoordSet, unsigned short& outIndex)
{
    return ogre_mesh->suggestTangentVectorBuildParams(targetSemantic, outSourceCoordSet, outIndex);
}

// name: "buildEdgeList"
// type: "void"
// args: "void"
//
void ogre_mesh_build_edge_list (Mesh* ogre_mesh)
{
    ogre_mesh->buildEdgeList();
}

// name: "freeEdgeList"
// type: "void"
// args: "void"
//
void ogre_mesh_free_edge_list (Mesh* ogre_mesh)
{
    ogre_mesh->freeEdgeList();
}

// name: "prepareForShadowVolume"
// type: "void"
// args: "void"
//
void ogre_mesh_prepare_for_shadow_volume (Mesh* ogre_mesh)
{
    ogre_mesh->prepareForShadowVolume();
}

// name: "getEdgeList"
// type: "const EdgeData*"
// args: (("unsigned int" . "lodIndex"))
//
const EdgeData* ogre_mesh_get_edge_list_unsignedint (Mesh* ogre_mesh, unsigned int lodIndex)
{
    return ogre_mesh->getEdgeList(lodIndex);
}

// name: "isPreparedForShadowVolumes"
// type: "bool"
// args: "void"
//
bool ogre_mesh_is_prepared_for_shadow_volumes (Mesh* ogre_mesh)
{
    return ogre_mesh->isPreparedForShadowVolumes();
}

// name: "isEdgeListBuilt"
// type: "bool"
// args: "void"
//
bool ogre_mesh_is_edge_list_built (Mesh* ogre_mesh)
{
    return ogre_mesh->isEdgeListBuilt();
}

// name: "getSubMeshNameMap"
// type: "const SubMeshNameMap&"
// args: "void"
//
const Mesh::SubMeshNameMap& ogre_mesh_get_sub_mesh_name_map (Mesh* ogre_mesh)
{
    return ogre_mesh->getSubMeshNameMap();
}

// name: "setAutoBuildEdgeLists"
// type: "void"
// args: (("bool" . "autobuild"))
//
void ogre_mesh_set_auto_build_edge_lists (Mesh* ogre_mesh, bool autobuild)
{
    ogre_mesh->setAutoBuildEdgeLists(autobuild);
}

// name: "getAutoBuildEdgeLists"
// type: "bool"
// args: "void"
//
bool ogre_mesh_get_auto_build_edge_lists (Mesh* ogre_mesh)
{
    return ogre_mesh->getAutoBuildEdgeLists();
}

// name: "getSharedVertexDataAnimationType"
// type: "VertexAnimationType"
// args: "void"
//
VertexAnimationType ogre_mesh_get_shared_vertex_data_animation_type (Mesh* ogre_mesh)
{
    return ogre_mesh->getSharedVertexDataAnimationType();
}

// name: "createAnimation"
// type: "Animation*"
// args: (("const String&" . "name") ("Real" . "length"))
//
Animation* ogre_mesh_create_animation (Mesh* ogre_mesh, const char* name, Real length)
{
    return ogre_mesh->createAnimation(name, length);
}

// name: "getAnimation"
// type: "Animation*"
// args: (("const String&" . "name"))
//
Animation* ogre_mesh_get_animation_string (Mesh* ogre_mesh, const char* name)
{
    return ogre_mesh->getAnimation(name);
}

// name: "hasAnimation"
// type: "bool"
// args: (("const String&" . "name"))
//
bool ogre_mesh_has_animation (Mesh* ogre_mesh, const char* name)
{
    return ogre_mesh->hasAnimation(name);
}

// name: "removeAnimation"
// type: "void"
// args: (("const String&" . "name"))
//
void ogre_mesh_remove_animation (Mesh* ogre_mesh, const char* name)
{
    ogre_mesh->removeAnimation(name);
}

// name: "getNumAnimations"
// type: "unsigned short"
// args: "void"
//
unsigned short ogre_mesh_get_num_animations (Mesh* ogre_mesh)
{
    return ogre_mesh->getNumAnimations();
}

// name: "getAnimation"
// type: "Animation*"
// args: (("unsigned short" . "index"))
//
Animation* ogre_mesh_get_animation_unsignedshort (Mesh* ogre_mesh, unsigned short index)
{
    return ogre_mesh->getAnimation(index);
}

// name: "removeAllAnimations"
// type: "void"
// args: "void"
//
void ogre_mesh_remove_all_animations (Mesh* ogre_mesh)
{
    ogre_mesh->removeAllAnimations();
}

// name: "getVertexDataByTrackHandle"
// type: "VertexData*"
// args: (("unsigned short" . "handle"))
//
VertexData* ogre_mesh_get_vertex_data_by_track_handle (Mesh* ogre_mesh, unsigned short handle)
{
    return ogre_mesh->getVertexDataByTrackHandle(handle);
}

// name: "updateMaterialForAllSubMeshes"
// type: "void"
// args: "void"
//
void ogre_mesh_update_material_for_all_sub_meshes (Mesh* ogre_mesh)
{
    ogre_mesh->updateMaterialForAllSubMeshes();
}

// name: "createPose"
// type: "Pose*"
// args: (("ushort" . "target") ("const String&" . "name"))
//
Pose* ogre_mesh_create_pose (Mesh* ogre_mesh, unsigned short target, const char* name)
{
    return ogre_mesh->createPose(target, name);
}

// name: "getPoseCount"
// type: "size_t"
// args: "void"
//
size_t ogre_mesh_get_pose_count (Mesh* ogre_mesh)
{
    return ogre_mesh->getPoseCount();
}

// name: "getPose"
// type: "Pose*"
// args: (("ushort" . "index"))
//
Pose* ogre_mesh_get_pose_ushort (Mesh* ogre_mesh, unsigned short index)
{
    return ogre_mesh->getPose(index);
}

// name: "getPose"
// type: "Pose*"
// args: (("const String&" . "name"))
//
Pose* ogre_mesh_get_pose_string (Mesh* ogre_mesh, const char* name)
{
    return ogre_mesh->getPose(name);
}

// name: "removePose"
// type: "void"
// args: (("ushort" . "index"))
//
void ogre_mesh_remove_pose_ushort (Mesh* ogre_mesh, unsigned short index)
{
    ogre_mesh->removePose(index);
}

// name: "removePose"
// type: "void"
// args: (("const String&" . "name"))
//
void ogre_mesh_remove_pose_string (Mesh* ogre_mesh, const char* name)
{
    ogre_mesh->removePose(name);
}

// name: "removeAllPoses"
// type: "void"
// args: "void"
//
void ogre_mesh_remove_all_poses (Mesh* ogre_mesh)
{
    ogre_mesh->removeAllPoses();
}

// name: "getPoseIterator"
// type: "PoseIterator"
// args: "void"
//
Mesh::PoseIterator ogre_mesh_get_pose_iterator (Mesh* ogre_mesh)
{
    return ogre_mesh->getPoseIterator();
}

// name: "getPoseList"
// type: "const PoseList&"
// args: "void"
//
const PoseList& ogre_mesh_get_pose_list (Mesh* ogre_mesh)
{
    return ogre_mesh->getPoseList();
}

