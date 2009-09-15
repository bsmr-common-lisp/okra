// ogre-camera.cpp
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
// This file was generated on: 2009-09-15 10:46:19.

#include "handwritten/okra.h"


// Prototypes

extern "C"
{
    SceneManager* ogre_camera_get_scene_manager_void (Camera*);
    const char* ogre_camera_get_name (Camera*);
    void ogre_camera_set_polygon_mode (Camera*, PolygonMode);
    PolygonMode ogre_camera_get_polygon_mode (Camera*);
    void ogre_camera_set_position_real_real_real (Camera*, Real, Real, Real);
    void ogre_camera_set_position_vector3 (Camera*, const okraArray3);
    void ogre_camera_get_position (Camera*, okraArray3);
    void ogre_camera_move (Camera*, const okraArray3);
    void ogre_camera_move_relative (Camera*, const okraArray3);
    void ogre_camera_set_direction_real_real_real (Camera*, Real, Real, Real);
    void ogre_camera_set_direction_vector3 (Camera*, const okraArray3);
    void ogre_camera_get_direction (Camera*, okraArray3);
    void ogre_camera_get_up (Camera*, okraArray3);
    void ogre_camera_get_right (Camera*, okraArray3);
    void ogre_camera_look_at_vector3 (Camera*, const okraArray3);
    void ogre_camera_look_at_real_real_real (Camera*, Real, Real, Real);
    void ogre_camera_roll_radian (Camera*, Real);
    void ogre_camera_yaw_radian (Camera*, Real);
    void ogre_camera_pitch_radian (Camera*, Real);
    void ogre_camera_rotate_vector3_radian (Camera*, const okraArray3, Real);
    void ogre_camera_rotate_quaternion (Camera*, const okraArray4);
    void ogre_camera_set_fixed_yaw_axis (Camera*, bool, const okraArray3);
    void ogre_camera_get_orientation (Camera*, okraArray4);
    void ogre_camera_set_orientation_quaternion (Camera*, const okraArray4);
    void ogre_camera_get_derived_orientation (Camera*, okraArray4);
    void ogre_camera_get_derived_position_void (Camera*, okraArray3);
    void ogre_camera_get_derived_direction (Camera*, okraArray3);
    void ogre_camera_get_derived_up (Camera*, okraArray3);
    void ogre_camera_get_derived_right (Camera*, okraArray3);
    void ogre_camera_get_real_orientation (Camera*, okraArray4);
    void ogre_camera_get_real_position (Camera*, okraArray3);
    void ogre_camera_get_real_direction (Camera*, okraArray3);
    void ogre_camera_get_real_up (Camera*, okraArray3);
    void ogre_camera_get_real_right (Camera*, okraArray3);
    const char* ogre_camera_get_movable_type (Camera*);
    void ogre_camera_set_auto_tracking_bool_scenenode_vector3 (Camera*, bool, SceneNode*, const okraArray3);
    void ogre_camera_set_lod_bias (Camera*, Real);
    Real ogre_camera_get_lod_bias (Camera*);
    void ogre_camera_set_lod_camera (Camera*, const Camera*);
    const Camera* ogre_camera_get_lod_camera (Camera*);
    Ray ogre_camera_get_camera_to_viewport_ray_real_real (Camera*, Real, Real);
    void ogre_camera_get_camera_to_viewport_ray_real_real_ray (Camera*, Real, Real, Ray*);
    PlaneBoundedVolume ogre_camera_get_camera_to_viewport_box_volume_real_real_real_real_bool (Camera*, Real, Real, Real, Real, bool);
    void ogre_camera_get_camera_to_viewport_box_volume_real_real_real_real_planeboundedvolume_bool (Camera*, Real, Real, Real, Real, PlaneBoundedVolume*, bool);
    void ogre_camera_set_window (Camera*, Real, Real, Real, Real);
    void ogre_camera_reset_window (Camera*);
    bool ogre_camera_is_window_set (Camera*);
    Real ogre_camera_get_bounding_radius (Camera*);
    SceneNode* ogre_camera_get_auto_track_target (Camera*);
    void ogre_camera_get_auto_track_offset (Camera*, okraArray3);
    Viewport* ogre_camera_get_viewport_void (Camera*);
    void ogre_camera_set_auto_aspect_ratio (Camera*, bool);
    bool ogre_camera_get_auto_aspect_ratio (Camera*);
    void ogre_camera_set_culling_frustum (Camera*, Frustum*);
    Frustum* ogre_camera_get_culling_frustum (Camera*);
    bool ogre_camera_is_visible_axisalignedbox_frustumplane (Camera*, const okraArray6, FrustumPlane*);
    bool ogre_camera_is_visible_sphere_frustumplane (Camera*, const okraArray4, FrustumPlane*);
    bool ogre_camera_is_visible_vector3_frustumplane (Camera*, const okraArray3, FrustumPlane*);
    const Vector3* ogre_camera_get_world_space_corners (Camera*);
    const Plane& ogre_camera_get_frustum_plane (Camera*, unsigned short);
    Real ogre_camera_get_near_clip_distance (Camera*);
    Real ogre_camera_get_far_clip_distance (Camera*);
    void ogre_camera_get_view_matrix_void (Camera*, okraArray16);
    void ogre_camera_get_view_matrix_bool (Camera*, okraArray16, bool);
    void ogre_camera_set_use_rendering_distance (Camera*, bool);
    bool ogre_camera_get_use_rendering_distance (Camera*);
    void ogre_camera_synchronise_base_settings_with (Camera*, const Camera*);
    void ogre_camera_get_position_for_view_update (Camera*, okraArray3);
    void ogre_camera_get_orientation_for_view_update (Camera*, okraArray4);
}


// Functions

// name: "getSceneManager"
// type: "SceneManager*"
// args: "void"
//
SceneManager* ogre_camera_get_scene_manager_void (Camera* ogre_camera)
{
    return ogre_camera->getSceneManager();
}

// name: "getName"
// type: "const String&"
// args: "void"
//
const char* ogre_camera_get_name (Camera* ogre_camera)
{
    return ogre_camera->getName().c_str();
}

// name: "setPolygonMode"
// type: "void"
// args: (("PolygonMode" . "sd"))
//
void ogre_camera_set_polygon_mode (Camera* ogre_camera, PolygonMode sd)
{
    ogre_camera->setPolygonMode(sd);
}

// name: "getPolygonMode"
// type: "PolygonMode"
// args: "void"
//
PolygonMode ogre_camera_get_polygon_mode (Camera* ogre_camera)
{
    return ogre_camera->getPolygonMode();
}

// name: "setPosition"
// type: "void"
// args: (("Real" . "x") ("Real" . "y") ("Real" . "z"))
//
void ogre_camera_set_position_real_real_real (Camera* ogre_camera, Real x, Real y, Real z)
{
    ogre_camera->setPosition(x, y, z);
}

// name: "setPosition"
// type: "void"
// args: (("const Vector3&" . "vec"))
//
void ogre_camera_set_position_vector3 (Camera* ogre_camera, const okraArray3 vec)
{
    Vector3 ogre_vec = Vector3(vec[0], vec[1], vec[2]);
    ogre_camera->setPosition(ogre_vec);
}

// name: "getPosition"
// type: "const Vector3&"
// args: "void"
//
void ogre_camera_get_position (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getPosition();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "move"
// type: "void"
// args: (("const Vector3&" . "vec"))
//
void ogre_camera_move (Camera* ogre_camera, const okraArray3 vec)
{
    Vector3 ogre_vec = Vector3(vec[0], vec[1], vec[2]);
    ogre_camera->move(ogre_vec);
}

// name: "moveRelative"
// type: "void"
// args: (("const Vector3&" . "vec"))
//
void ogre_camera_move_relative (Camera* ogre_camera, const okraArray3 vec)
{
    Vector3 ogre_vec = Vector3(vec[0], vec[1], vec[2]);
    ogre_camera->moveRelative(ogre_vec);
}

// name: "setDirection"
// type: "void"
// args: (("Real" . "x") ("Real" . "y") ("Real" . "z"))
//
void ogre_camera_set_direction_real_real_real (Camera* ogre_camera, Real x, Real y, Real z)
{
    ogre_camera->setDirection(x, y, z);
}

// name: "setDirection"
// type: "void"
// args: (("const Vector3&" . "vec"))
//
void ogre_camera_set_direction_vector3 (Camera* ogre_camera, const okraArray3 vec)
{
    Vector3 ogre_vec = Vector3(vec[0], vec[1], vec[2]);
    ogre_camera->setDirection(ogre_vec);
}

// name: "getDirection"
// type: "Vector3"
// args: "void"
//
void ogre_camera_get_direction (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getDirection();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getUp"
// type: "Vector3"
// args: "void"
//
void ogre_camera_get_up (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getUp();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getRight"
// type: "Vector3"
// args: "void"
//
void ogre_camera_get_right (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getRight();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "lookAt"
// type: "void"
// args: (("const Vector3&" . "targetPoint"))
//
void ogre_camera_look_at_vector3 (Camera* ogre_camera, const okraArray3 targetPoint)
{
    Vector3 ogre_targetPoint = Vector3(targetPoint[0], targetPoint[1], targetPoint[2]);
    ogre_camera->lookAt(ogre_targetPoint);
}

// name: "lookAt"
// type: "void"
// args: (("Real" . "x") ("Real" . "y") ("Real" . "z"))
//
void ogre_camera_look_at_real_real_real (Camera* ogre_camera, Real x, Real y, Real z)
{
    ogre_camera->lookAt(x, y, z);
}

// name: "roll"
// type: "void"
// args: (("const Radian&" . "angle"))
//
void ogre_camera_roll_radian (Camera* ogre_camera, Real angle)
{
    Radian ogre_angle = Radian(angle);
    ogre_camera->roll(ogre_angle);
}

// name: "yaw"
// type: "void"
// args: (("const Radian&" . "angle"))
//
void ogre_camera_yaw_radian (Camera* ogre_camera, Real angle)
{
    Radian ogre_angle = Radian(angle);
    ogre_camera->yaw(ogre_angle);
}

// name: "pitch"
// type: "void"
// args: (("const Radian&" . "angle"))
//
void ogre_camera_pitch_radian (Camera* ogre_camera, Real angle)
{
    Radian ogre_angle = Radian(angle);
    ogre_camera->pitch(ogre_angle);
}

// name: "rotate"
// type: "void"
// args: (("const Vector3&" . "axis") ("const Radian&" . "angle"))
//
void ogre_camera_rotate_vector3_radian (Camera* ogre_camera, const okraArray3 axis, Real angle)
{
    Vector3 ogre_axis = Vector3(axis[0], axis[1], axis[2]);Radian ogre_angle = Radian(angle);
    ogre_camera->rotate(ogre_axis, ogre_angle);
}

// name: "rotate"
// type: "void"
// args: (("const Quaternion&" . "q"))
//
void ogre_camera_rotate_quaternion (Camera* ogre_camera, const okraArray4 q)
{
    Quaternion ogre_q = Quaternion(q[0], q[1], q[2], q[3]);
    ogre_camera->rotate(ogre_q);
}

// name: "setFixedYawAxis"
// type: "void"
// args: (("bool" . "useFixed") ("const Vector3&" . "fixedAxis"))
//
void ogre_camera_set_fixed_yaw_axis (Camera* ogre_camera, bool useFixed, const okraArray3 fixedAxis)
{
    Vector3 ogre_fixedAxis = Vector3(fixedAxis[0], fixedAxis[1], fixedAxis[2]);
    ogre_camera->setFixedYawAxis(useFixed, ogre_fixedAxis);
}

// name: "getOrientation"
// type: "const Quaternion&"
// args: "void"
//
void ogre_camera_get_orientation (Camera* ogre_camera, okraArray4 q)
{
    Quaternion ogre_q = ogre_camera->getOrientation();
    q[0] = ogre_q[0];
    q[1] = ogre_q[1];
    q[2] = ogre_q[2];
    q[3] = ogre_q[3];
}

// name: "setOrientation"
// type: "void"
// args: (("const Quaternion&" . "q"))
//
void ogre_camera_set_orientation_quaternion (Camera* ogre_camera, const okraArray4 q)
{
    Quaternion ogre_q = Quaternion(q[0], q[1], q[2], q[3]);
    ogre_camera->setOrientation(ogre_q);
}

// name: "getDerivedOrientation"
// type: "const Quaternion&"
// args: "void"
//
void ogre_camera_get_derived_orientation (Camera* ogre_camera, okraArray4 q)
{
    Quaternion ogre_q = ogre_camera->getDerivedOrientation();
    q[0] = ogre_q[0];
    q[1] = ogre_q[1];
    q[2] = ogre_q[2];
    q[3] = ogre_q[3];
}

// name: "getDerivedPosition"
// type: "const Vector3&"
// args: "void"
//
void ogre_camera_get_derived_position_void (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getDerivedPosition();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getDerivedDirection"
// type: "Vector3"
// args: "void"
//
void ogre_camera_get_derived_direction (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getDerivedDirection();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getDerivedUp"
// type: "Vector3"
// args: "void"
//
void ogre_camera_get_derived_up (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getDerivedUp();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getDerivedRight"
// type: "Vector3"
// args: "void"
//
void ogre_camera_get_derived_right (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getDerivedRight();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getRealOrientation"
// type: "const Quaternion&"
// args: "void"
//
void ogre_camera_get_real_orientation (Camera* ogre_camera, okraArray4 q)
{
    Quaternion ogre_q = ogre_camera->getRealOrientation();
    q[0] = ogre_q[0];
    q[1] = ogre_q[1];
    q[2] = ogre_q[2];
    q[3] = ogre_q[3];
}

// name: "getRealPosition"
// type: "const Vector3&"
// args: "void"
//
void ogre_camera_get_real_position (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getRealPosition();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getRealDirection"
// type: "Vector3"
// args: "void"
//
void ogre_camera_get_real_direction (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getRealDirection();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getRealUp"
// type: "Vector3"
// args: "void"
//
void ogre_camera_get_real_up (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getRealUp();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getRealRight"
// type: "Vector3"
// args: "void"
//
void ogre_camera_get_real_right (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getRealRight();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getMovableType"
// type: "const String&"
// args: "void"
//
const char* ogre_camera_get_movable_type (Camera* ogre_camera)
{
    return ogre_camera->getMovableType().c_str();
}

// name: "setAutoTracking"
// type: "void"
// args: (("bool" . "enabled") ("SceneNode*" . "target") ("const Vector3&" . "offset"))
//
void ogre_camera_set_auto_tracking_bool_scenenode_vector3 (Camera* ogre_camera, bool enabled, SceneNode* target, const okraArray3 offset)
{
    Vector3 ogre_offset = Vector3(offset[0], offset[1], offset[2]);
    ogre_camera->setAutoTracking(enabled, target, ogre_offset);
}

// name: "setLodBias"
// type: "void"
// args: (("Real" . "factor"))
//
void ogre_camera_set_lod_bias (Camera* ogre_camera, Real factor)
{
    ogre_camera->setLodBias(factor);
}

// name: "getLodBias"
// type: "Real"
// args: "void"
//
Real ogre_camera_get_lod_bias (Camera* ogre_camera)
{
    return ogre_camera->getLodBias();
}

// name: "setLodCamera"
// type: "void"
// args: (("const Camera*" . "lodCam"))
//
void ogre_camera_set_lod_camera (Camera* ogre_camera, const Camera* lodCam)
{
    ogre_camera->setLodCamera(lodCam);
}

// name: "getLodCamera"
// type: "const Camera*"
// args: "void"
//
const Camera* ogre_camera_get_lod_camera (Camera* ogre_camera)
{
    return ogre_camera->getLodCamera();
}

// name: "getCameraToViewportRay"
// type: "Ray"
// args: (("Real" . "screenx") ("Real" . "screeny"))
//
Ray ogre_camera_get_camera_to_viewport_ray_real_real (Camera* ogre_camera, Real screenx, Real screeny)
{
    return ogre_camera->getCameraToViewportRay(screenx, screeny);
}

// name: "getCameraToViewportRay"
// type: "void"
// args: (("Real" . "screenx") ("Real" . "screeny") ("Ray*" . "outRay"))
//
void ogre_camera_get_camera_to_viewport_ray_real_real_ray (Camera* ogre_camera, Real screenx, Real screeny, Ray* outRay)
{
    ogre_camera->getCameraToViewportRay(screenx, screeny, outRay);
}

// name: "getCameraToViewportBoxVolume"
// type: "PlaneBoundedVolume"
// args: (("Real" . "screenLeft") ("Real" . "screenTop") ("Real" . "screenRight") ("Real" . "screenBottom") ("bool" . "includeFarPlane"))
//
PlaneBoundedVolume ogre_camera_get_camera_to_viewport_box_volume_real_real_real_real_bool (Camera* ogre_camera, Real screenLeft, Real screenTop, Real screenRight, Real screenBottom, bool includeFarPlane)
{
    return ogre_camera->getCameraToViewportBoxVolume(screenLeft, screenTop, screenRight, screenBottom, includeFarPlane);
}

// name: "getCameraToViewportBoxVolume"
// type: "void"
// args: (("Real" . "screenLeft") ("Real" . "screenTop") ("Real" . "screenRight") ("Real" . "screenBottom") ("PlaneBoundedVolume*" . "outVolume") ("bool" . "includeFarPlane"))
//
void ogre_camera_get_camera_to_viewport_box_volume_real_real_real_real_planeboundedvolume_bool (Camera* ogre_camera, Real screenLeft, Real screenTop, Real screenRight, Real screenBottom, PlaneBoundedVolume* outVolume, bool includeFarPlane)
{
    ogre_camera->getCameraToViewportBoxVolume(screenLeft, screenTop, screenRight, screenBottom, outVolume, includeFarPlane);
}

// name: "setWindow"
// type: "void"
// args: (("Real" . "Left") ("Real" . "Top") ("Real" . "Right") ("Real" . "Bottom"))
//
void ogre_camera_set_window (Camera* ogre_camera, Real Left, Real Top, Real Right, Real Bottom)
{
    ogre_camera->setWindow(Left, Top, Right, Bottom);
}

// name: "resetWindow"
// type: "void"
// args: "void"
//
void ogre_camera_reset_window (Camera* ogre_camera)
{
    ogre_camera->resetWindow();
}

// name: "isWindowSet"
// type: "bool"
// args: "void"
//
bool ogre_camera_is_window_set (Camera* ogre_camera)
{
    return ogre_camera->isWindowSet();
}

// name: "getBoundingRadius"
// type: "Real"
// args: "void"
//
Real ogre_camera_get_bounding_radius (Camera* ogre_camera)
{
    return ogre_camera->getBoundingRadius();
}

// name: "getAutoTrackTarget"
// type: "SceneNode*"
// args: "void"
//
SceneNode* ogre_camera_get_auto_track_target (Camera* ogre_camera)
{
    return ogre_camera->getAutoTrackTarget();
}

// name: "getAutoTrackOffset"
// type: "const Vector3&"
// args: "void"
//
void ogre_camera_get_auto_track_offset (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getAutoTrackOffset();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getViewport"
// type: "Viewport*"
// args: "void"
//
Viewport* ogre_camera_get_viewport_void (Camera* ogre_camera)
{
    return ogre_camera->getViewport();
}

// name: "setAutoAspectRatio"
// type: "void"
// args: (("bool" . "autoratio"))
//
void ogre_camera_set_auto_aspect_ratio (Camera* ogre_camera, bool autoratio)
{
    ogre_camera->setAutoAspectRatio(autoratio);
}

// name: "getAutoAspectRatio"
// type: "bool"
// args: "void"
//
bool ogre_camera_get_auto_aspect_ratio (Camera* ogre_camera)
{
    return ogre_camera->getAutoAspectRatio();
}

// name: "setCullingFrustum"
// type: "void"
// args: (("Frustum*" . "frustum"))
//
void ogre_camera_set_culling_frustum (Camera* ogre_camera, Frustum* frustum)
{
    ogre_camera->setCullingFrustum(frustum);
}

// name: "getCullingFrustum"
// type: "Frustum*"
// args: "void"
//
Frustum* ogre_camera_get_culling_frustum (Camera* ogre_camera)
{
    return ogre_camera->getCullingFrustum();
}

// name: "isVisible"
// type: "bool"
// args: (("const AxisAlignedBox&" . "bound") ("FrustumPlane*" . "culledBy"))
//
bool ogre_camera_is_visible_axisalignedbox_frustumplane (Camera* ogre_camera, const okraArray6 bound, FrustumPlane* culledBy)
{
    AxisAlignedBox ogre_bound = AxisAlignedBox(bound[0], bound[1], bound[2], bound[3], bound[4], bound[5]);
    return ogre_camera->isVisible(ogre_bound, culledBy);
}

// name: "isVisible"
// type: "bool"
// args: (("const Sphere&" . "bound") ("FrustumPlane*" . "culledBy"))
//
bool ogre_camera_is_visible_sphere_frustumplane (Camera* ogre_camera, const okraArray4 bound, FrustumPlane* culledBy)
{
    Sphere ogre_bound = Sphere(Vector3(bound[0], bound[1], bound[2]), bound[3]);
    return ogre_camera->isVisible(ogre_bound, culledBy);
}

// name: "isVisible"
// type: "bool"
// args: (("const Vector3&" . "vert") ("FrustumPlane*" . "culledBy"))
//
bool ogre_camera_is_visible_vector3_frustumplane (Camera* ogre_camera, const okraArray3 vert, FrustumPlane* culledBy)
{
    Vector3 ogre_vert = Vector3(vert[0], vert[1], vert[2]);
    return ogre_camera->isVisible(ogre_vert, culledBy);
}

// name: "getWorldSpaceCorners"
// type: "const Vector3*"
// args: "void"
//
const Vector3* ogre_camera_get_world_space_corners (Camera* ogre_camera)
{
    return ogre_camera->getWorldSpaceCorners();
}

// name: "getFrustumPlane"
// type: "const Plane&"
// args: (("unsigned short" . "plane"))
//
const Plane& ogre_camera_get_frustum_plane (Camera* ogre_camera, unsigned short plane)
{
    return ogre_camera->getFrustumPlane(plane);
}

// name: "getNearClipDistance"
// type: "Real"
// args: "void"
//
Real ogre_camera_get_near_clip_distance (Camera* ogre_camera)
{
    return ogre_camera->getNearClipDistance();
}

// name: "getFarClipDistance"
// type: "Real"
// args: "void"
//
Real ogre_camera_get_far_clip_distance (Camera* ogre_camera)
{
    return ogre_camera->getFarClipDistance();
}

// name: "getViewMatrix"
// type: "const Matrix4&"
// args: "void"
//
void ogre_camera_get_view_matrix_void (Camera* ogre_camera, okraArray16 m4)
{
    Matrix4 ogre_m4 = ogre_camera->getViewMatrix();
    m4[ 0] = *(ogre_m4[ 0]);  m4[ 1] = *(ogre_m4[ 1]);
    m4[ 2] = *(ogre_m4[ 2]);  m4[ 3] = *(ogre_m4[ 3]);
    m4[ 4] = *(ogre_m4[ 4]);  m4[ 5] = *(ogre_m4[ 5]);
    m4[ 6] = *(ogre_m4[ 6]);  m4[ 7] = *(ogre_m4[ 7]);
    m4[ 8] = *(ogre_m4[ 8]);  m4[ 9] = *(ogre_m4[ 9]);
    m4[10] = *(ogre_m4[10]);  m4[11] = *(ogre_m4[11]);
    m4[12] = *(ogre_m4[12]);  m4[13] = *(ogre_m4[13]);
    m4[14] = *(ogre_m4[14]);  m4[15] = *(ogre_m4[15]);
}

// name: "getViewMatrix"
// type: "const Matrix4&"
// args: (("bool" . "ownFrustumOnly"))
//
void ogre_camera_get_view_matrix_bool (Camera* ogre_camera, okraArray16 m4, bool ownFrustumOnly)
{
    Matrix4 ogre_m4 = ogre_camera->getViewMatrix(ownFrustumOnly);
    m4[ 0] = *(ogre_m4[ 0]);  m4[ 1] = *(ogre_m4[ 1]);
    m4[ 2] = *(ogre_m4[ 2]);  m4[ 3] = *(ogre_m4[ 3]);
    m4[ 4] = *(ogre_m4[ 4]);  m4[ 5] = *(ogre_m4[ 5]);
    m4[ 6] = *(ogre_m4[ 6]);  m4[ 7] = *(ogre_m4[ 7]);
    m4[ 8] = *(ogre_m4[ 8]);  m4[ 9] = *(ogre_m4[ 9]);
    m4[10] = *(ogre_m4[10]);  m4[11] = *(ogre_m4[11]);
    m4[12] = *(ogre_m4[12]);  m4[13] = *(ogre_m4[13]);
    m4[14] = *(ogre_m4[14]);  m4[15] = *(ogre_m4[15]);
}

// name: "setUseRenderingDistance"
// type: "void"
// args: (("bool" . "use"))
//
void ogre_camera_set_use_rendering_distance (Camera* ogre_camera, bool use)
{
    ogre_camera->setUseRenderingDistance(use);
}

// name: "getUseRenderingDistance"
// type: "bool"
// args: "void"
//
bool ogre_camera_get_use_rendering_distance (Camera* ogre_camera)
{
    return ogre_camera->getUseRenderingDistance();
}

// name: "synchroniseBaseSettingsWith"
// type: "void"
// args: (("const Camera*" . "cam"))
//
void ogre_camera_synchronise_base_settings_with (Camera* ogre_camera, const Camera* cam)
{
    ogre_camera->synchroniseBaseSettingsWith(cam);
}

// name: "getPositionForViewUpdate"
// type: "const Vector3&"
// args: "void"
//
void ogre_camera_get_position_for_view_update (Camera* ogre_camera, okraArray3 v)
{
    Vector3 ogre_v = ogre_camera->getPositionForViewUpdate();
    v[0] = ogre_v[0];
    v[1] = ogre_v[1];
    v[2] = ogre_v[2];
}

// name: "getOrientationForViewUpdate"
// type: "const Quaternion&"
// args: "void"
//
void ogre_camera_get_orientation_for_view_update (Camera* ogre_camera, okraArray4 q)
{
    Quaternion ogre_q = ogre_camera->getOrientationForViewUpdate();
    q[0] = ogre_q[0];
    q[1] = ogre_q[1];
    q[2] = ogre_q[2];
    q[3] = ogre_q[3];
}


