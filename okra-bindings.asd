;;;; okra-bindings.asd
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
;;;; This file was generated on: 2009-10-28 16:11:12.

(in-package :cl-user)

(defpackage :okra-system
  (:use :cl :asdf))

(in-package :okra-system)

(asdf:defsystem :okra-bindings
  :version "1.6.4.2"
  :components
  ((:module src-bindings
    :components
    ((:file "package")
     (:module ogre-lib :depends-on ("package")
      :components ((:file "ogre-lib")))
     (:file "enums" :depends-on ("package" ogre-lib))
     (:file "generics" :depends-on ("package" ogre-lib))
     (:file "typedefs" :depends-on ("package" ogre-lib))
     (:file "animation-state" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "camera" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "entity" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "frustum" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "light" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "manual-object" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "mesh" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "movable-object" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "node" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "overlay" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "overlay-element" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "overlay-manager" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "ray-scene-query" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "render-target" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "render-window" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "resource-group-manager" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "root" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "scene-manager" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "scene-node" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "sub-entity" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "timer" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:file "viewport" :depends-on ("package" ogre-lib "generics" "enums" "typedefs"))
     (:module handwritten :depends-on ("package" ogre-lib)
      :components ((:file "misc") (:file "moc"))))))
  :depends-on (:cffi :okra-common))
