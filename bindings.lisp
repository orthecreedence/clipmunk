;;; This file was automatically generated by SWIG (http://www.swig.org).
;;; Version 1.3.40
;;;
;;; Do not make changes to this file unless you know what you are doing--modify
;;; the SWIG interface file instead.

(in-package :cl-chipmunk.bindings)



(cffi:defcfun ("cpMessage" #.(chipmunk-lispify "cpMessage" 'function)) :void
  (message :string)
  (condition :string)
  (file :string)
  (line :int)
  (isError :int))

(cl:defconstant #.(chipmunk-lispify "CP_BUFFER_BYTES" 'constant) (cl:* 32 1024))

(cffi:defcvar ("cpVersionString" #.(chipmunk-lispify "cpVersionString" 'variable))
 :string)

(cffi:defcfun ("cpInitChipmunk" #.(chipmunk-lispify "cpInitChipmunk" 'function)) :void)

(cffi:defcfun ("cpMomentForCircle" #.(chipmunk-lispify "cpMomentForCircle" 'function)) :double
  (m :double)
  (r1 :double)
  (r2 :double)
  (offset :pointer))

(cffi:defcfun ("cpMomentForSegment" #.(chipmunk-lispify "cpMomentForSegment" 'function)) :double
  (m :double)
  (a :pointer)
  (b :pointer))

(cffi:defcfun ("cpMomentForPoly" #.(chipmunk-lispify "cpMomentForPoly" 'function)) :double
  (m :double)
  (numVerts :int)
  (verts :pointer)
  (offset :pointer))

(cffi:defcfun ("cpMomentForBox" #.(chipmunk-lispify "cpMomentForBox" 'function)) :double
  (m :double)
  (width :double)
  (height :double))

(cl:defconstant #.(chipmunk-lispify "CP_USE_DOUBLES" 'constant) 1)

(cffi:defcstruct #.(chipmunk-lispify "cpVect" 'classname)
	(#.(chipmunk-lispify "x" 'slotname) :double)
	(#.(chipmunk-lispify "y" 'slotname) :double))

(cl:defconstant #.(chipmunk-lispify "cpTrue" 'constant) 1)

(cl:defconstant #.(chipmunk-lispify "cpFalse" 'constant) 0)

(cffi:defcfun ("cpvlength" #.(chipmunk-lispify "cpvlength" 'function)) :double
  (v-x :double) (v-y :double))

(cffi:defcfun ("cpvtoangle" #.(chipmunk-lispify "cpvtoangle" 'function)) :double
  (v-x :double) (v-y :double))

(cffi:defcfun ("cpvstr" #.(chipmunk-lispify "cpvstr" 'function)) :string
  (v-x :double) (v-y :double))

(cffi:defcstruct #.(chipmunk-lispify "cpBB" 'classname)
	(#.(chipmunk-lispify "l" 'slotname) :double)
	(#.(chipmunk-lispify "b" 'slotname) :double)
	(#.(chipmunk-lispify "r" 'slotname) :double)
	(#.(chipmunk-lispify "t" 'slotname) :double))

(cffi:defcstruct #.(chipmunk-lispify "cpArray" 'classname)
	(#.(chipmunk-lispify "num" 'slotname) :int)
	(#.(chipmunk-lispify "max" 'slotname) :int)
	(#.(chipmunk-lispify "arr" 'slotname) :pointer))

(cffi:defcfun ("cpArrayAlloc" #.(chipmunk-lispify "cpArrayAlloc" 'function)) :pointer)

(cffi:defcfun ("cpArrayInit" #.(chipmunk-lispify "cpArrayInit" 'function)) :pointer
  (arr :pointer)
  (size :int))

(cffi:defcfun ("cpArrayNew" #.(chipmunk-lispify "cpArrayNew" 'function)) :pointer
  (size :int))

(cffi:defcfun ("cpArrayDestroy" #.(chipmunk-lispify "cpArrayDestroy" 'function)) :void
  (arr :pointer))

(cffi:defcfun ("cpArrayFree" #.(chipmunk-lispify "cpArrayFree" 'function)) :void
  (arr :pointer))

(cffi:defcfun ("cpArrayClear" #.(chipmunk-lispify "cpArrayClear" 'function)) :void
  (arr :pointer))

(cffi:defcfun ("cpArrayPush" #.(chipmunk-lispify "cpArrayPush" 'function)) :void
  (arr :pointer)
  (object :pointer))

(cffi:defcfun ("cpArrayPop" #.(chipmunk-lispify "cpArrayPop" 'function)) :pointer
  (arr :pointer))

(cffi:defcfun ("cpArrayDeleteIndex" #.(chipmunk-lispify "cpArrayDeleteIndex" 'function)) :void
  (arr :pointer)
  (idx :int))

(cffi:defcfun ("cpArrayDeleteObj" #.(chipmunk-lispify "cpArrayDeleteObj" 'function)) :void
  (arr :pointer)
  (obj :pointer))

(cffi:defcfun ("cpArrayAppend" #.(chipmunk-lispify "cpArrayAppend" 'function)) :void
  (arr :pointer)
  (other :pointer))

(cffi:defcfun ("cpArrayEach" #.(chipmunk-lispify "cpArrayEach" 'function)) :void
  (arr :pointer)
  (iterFunc :pointer)
  (data :pointer))

(cffi:defcfun ("cpArrayContains" #.(chipmunk-lispify "cpArrayContains" 'function)) :int
  (arr :pointer)
  (ptr :pointer))

(cffi:defcstruct #.(chipmunk-lispify "cpHashSetBin" 'classname)
	(#.(chipmunk-lispify "elt" 'slotname) :pointer)
	(#.(chipmunk-lispify "hash" 'slotname) :unsigned-int)
	(#.(chipmunk-lispify "next" 'slotname) :pointer))

(cffi:defcstruct #.(chipmunk-lispify "cpHashSet" 'classname)
	(#.(chipmunk-lispify "entries" 'slotname) :int)
	(#.(chipmunk-lispify "size" 'slotname) :int)
	(#.(chipmunk-lispify "eql" 'slotname) :pointer)
	(#.(chipmunk-lispify "trans" 'slotname) :pointer)
	(#.(chipmunk-lispify "default_value" 'slotname) :pointer)
	(#.(chipmunk-lispify "table" 'slotname) :pointer)
	(#.(chipmunk-lispify "pooledBins" 'slotname) :pointer)
	(#.(chipmunk-lispify "allocatedBuffers" 'slotname) :pointer))

(cffi:defcfun ("cpHashSetDestroy" #.(chipmunk-lispify "cpHashSetDestroy" 'function)) :void
  (set :pointer))

(cffi:defcfun ("cpHashSetFree" #.(chipmunk-lispify "cpHashSetFree" 'function)) :void
  (set :pointer))

(cffi:defcfun ("cpHashSetAlloc" #.(chipmunk-lispify "cpHashSetAlloc" 'function)) :pointer)

(cffi:defcfun ("cpHashSetInit" #.(chipmunk-lispify "cpHashSetInit" 'function)) :pointer
  (set :pointer)
  (size :int)
  (eqlFunc :pointer)
  (trans :pointer))

(cffi:defcfun ("cpHashSetNew" #.(chipmunk-lispify "cpHashSetNew" 'function)) :pointer
  (size :int)
  (eqlFunc :pointer)
  (trans :pointer))

(cffi:defcfun ("cpHashSetInsert" #.(chipmunk-lispify "cpHashSetInsert" 'function)) :pointer
  (set :pointer)
  (hash :unsigned-int)
  (ptr :pointer)
  (data :pointer))

(cffi:defcfun ("cpHashSetRemove" #.(chipmunk-lispify "cpHashSetRemove" 'function)) :pointer
  (set :pointer)
  (hash :unsigned-int)
  (ptr :pointer))

(cffi:defcfun ("cpHashSetFind" #.(chipmunk-lispify "cpHashSetFind" 'function)) :pointer
  (set :pointer)
  (hash :unsigned-int)
  (ptr :pointer))

(cffi:defcfun ("cpHashSetEach" #.(chipmunk-lispify "cpHashSetEach" 'function)) :void
  (set :pointer)
  (func :pointer)
  (data :pointer))

(cffi:defcfun ("cpHashSetFilter" #.(chipmunk-lispify "cpHashSetFilter" 'function)) :void
  (set :pointer)
  (func :pointer)
  (data :pointer))

(cffi:defcstruct #.(chipmunk-lispify "cpHandle" 'classname)
	(#.(chipmunk-lispify "obj" 'slotname) :pointer)
	(#.(chipmunk-lispify "retain" 'slotname) :int)
	(#.(chipmunk-lispify "stamp" 'slotname) :unsigned-int))

(cffi:defcstruct #.(chipmunk-lispify "cpSpaceHashBin" 'classname)
	(#.(chipmunk-lispify "handle" 'slotname) :pointer)
	(#.(chipmunk-lispify "next" 'slotname) :pointer))

(cffi:defcstruct #.(chipmunk-lispify "cpSpaceHash" 'classname)
	(#.(chipmunk-lispify "numcells" 'slotname) :int)
	(#.(chipmunk-lispify "celldim" 'slotname) :double)
	(#.(chipmunk-lispify "bbfunc" 'slotname) :pointer)
	(#.(chipmunk-lispify "handleSet" 'slotname) :pointer)
	(#.(chipmunk-lispify "pooledHandles" 'slotname) :pointer)
	(#.(chipmunk-lispify "table" 'slotname) :pointer)
	(#.(chipmunk-lispify "pooledBins" 'slotname) :pointer)
	(#.(chipmunk-lispify "allocatedBuffers" 'slotname) :pointer)
	(#.(chipmunk-lispify "stamp" 'slotname) :unsigned-int))

(cffi:defcfun ("cpSpaceHashAlloc" #.(chipmunk-lispify "cpSpaceHashAlloc" 'function)) :pointer)

(cffi:defcfun ("cpSpaceHashInit" #.(chipmunk-lispify "cpSpaceHashInit" 'function)) :pointer
  (hash :pointer)
  (celldim :double)
  (cells :int)
  (bbfunc :pointer))

(cffi:defcfun ("cpSpaceHashNew" #.(chipmunk-lispify "cpSpaceHashNew" 'function)) :pointer
  (celldim :double)
  (cells :int)
  (bbfunc :pointer))

(cffi:defcfun ("cpSpaceHashDestroy" #.(chipmunk-lispify "cpSpaceHashDestroy" 'function)) :void
  (hash :pointer))

(cffi:defcfun ("cpSpaceHashFree" #.(chipmunk-lispify "cpSpaceHashFree" 'function)) :void
  (hash :pointer))

(cffi:defcfun ("cpSpaceHashResize" #.(chipmunk-lispify "cpSpaceHashResize" 'function)) :void
  (hash :pointer)
  (celldim :double)
  (numcells :int))

(cffi:defcfun ("cpSpaceHashInsert" #.(chipmunk-lispify "cpSpaceHashInsert" 'function)) :void
  (hash :pointer)
  (obj :pointer)
  (id :unsigned-int)
  (_deprecated_ignored #.(chipmunk-lispify "cpBB" 'classname)))

(cffi:defcfun ("cpSpaceHashRemove" #.(chipmunk-lispify "cpSpaceHashRemove" 'function)) :void
  (hash :pointer)
  (obj :pointer)
  (id :unsigned-int))

(cffi:defcfun ("cpSpaceHashEach" #.(chipmunk-lispify "cpSpaceHashEach" 'function)) :void
  (hash :pointer)
  (func :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpaceHashRehash" #.(chipmunk-lispify "cpSpaceHashRehash" 'function)) :void
  (hash :pointer))

(cffi:defcfun ("cpSpaceHashRehashObject" #.(chipmunk-lispify "cpSpaceHashRehashObject" 'function)) :void
  (hash :pointer)
  (obj :pointer)
  (id :unsigned-int))

(cffi:defcfun ("cpSpaceHashPointQuery" #.(chipmunk-lispify "cpSpaceHashPointQuery" 'function)) :void
  (hash :pointer)
  (point-x :double) (point-y :double)
  (func :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpaceHashQuery" #.(chipmunk-lispify "cpSpaceHashQuery" 'function)) :void
  (hash :pointer)
  (obj :pointer)
  (bb #.(chipmunk-lispify "cpBB" 'classname))
  (func :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpaceHashQueryInsert" #.(chipmunk-lispify "cpSpaceHashQueryInsert" 'function)) :void
  (hash :pointer)
  (obj :pointer)
  (bb #.(chipmunk-lispify "cpBB" 'classname))
  (func :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpaceHashQueryRehash" #.(chipmunk-lispify "cpSpaceHashQueryRehash" 'function)) :void
  (hash :pointer)
  (func :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpaceHashSegmentQuery" #.(chipmunk-lispify "cpSpaceHashSegmentQuery" 'function)) :void
  (hash :pointer)
  (obj :pointer)
  (a-x :double) (a-y :double)
  (b-x :double) (b-y :double)
  (t_exit :double)
  (func :pointer)
  (data :pointer))

(cffi:defcvar ("cpBodyUpdateVelocityDefault" #.(chipmunk-lispify "cpBodyUpdateVelocityDefault" 'variable))
 :pointer)

(cffi:defcvar ("cpBodyUpdatePositionDefault" #.(chipmunk-lispify "cpBodyUpdatePositionDefault" 'variable))
 :pointer)

(cffi:defcstruct #.(chipmunk-lispify "cpComponentNode" 'classname)
	(#.(chipmunk-lispify "parent" 'slotname) :pointer)
	(#.(chipmunk-lispify "next" 'slotname) :pointer)
	(#.(chipmunk-lispify "rank" 'slotname) :int)
	(#.(chipmunk-lispify "idleTime" 'slotname) :double))

(cffi:defcstruct #.(chipmunk-lispify "cpBody" 'classname)
	(#.(chipmunk-lispify "velocity_func" 'slotname) :pointer)
	(#.(chipmunk-lispify "position_func" 'slotname) :pointer)
	(#.(chipmunk-lispify "m" 'slotname) :double)
	(#.(chipmunk-lispify "m_inv" 'slotname) :double)
	(#.(chipmunk-lispify "i" 'slotname) :double)
	(#.(chipmunk-lispify "i_inv" 'slotname) :double)
	(p-x :double) (p-y :double)
	(v-x :double) (v-y :double)
	(f-x :double) (f-y :double)
	(#.(chipmunk-lispify "a" 'slotname) :double)
	(#.(chipmunk-lispify "w" 'slotname) :double)
	(#.(chipmunk-lispify "t" 'slotname) :double)
	(rot-x :double) (rot-y :double)
	(#.(chipmunk-lispify "data" 'slotname) :pointer)
	(#.(chipmunk-lispify "v_limit" 'slotname) :double)
	(#.(chipmunk-lispify "w_limit" 'slotname) :double)
	(v_bias-x :double) (v_bias-y :double)
	(#.(chipmunk-lispify "w_bias" 'slotname) :double)
	(#.(chipmunk-lispify "space" 'slotname) :pointer)
	(#.(chipmunk-lispify "shapesList" 'slotname) :pointer)
	(#.(chipmunk-lispify "node" 'slotname) #.(chipmunk-lispify "cpComponentNode" 'classname)))

(cffi:defcfun ("cpBodyAlloc" #.(chipmunk-lispify "cpBodyAlloc" 'function)) :pointer)

(cffi:defcfun ("cpBodyInit" #.(chipmunk-lispify "cpBodyInit" 'function)) :pointer
  (body :pointer)
  (m :double)
  (i :double))

(cffi:defcfun ("cpBodyNew" #.(chipmunk-lispify "cpBodyNew" 'function)) :pointer
  (m :double)
  (i :double))

(cffi:defcfun ("cpBodyDestroy" #.(chipmunk-lispify "cpBodyDestroy" 'function)) :void
  (body :pointer))

(cffi:defcfun ("cpBodyFree" #.(chipmunk-lispify "cpBodyFree" 'function)) :void
  (body :pointer))

(cffi:defcfun ("cpBodyActivate" #.(chipmunk-lispify "cpBodyActivate" 'function)) :void
  (body :pointer))

(cffi:defcfun ("cpBodySleep" #.(chipmunk-lispify "cpBodySleep" 'function)) :void
  (body :pointer))

(cffi:defcfun ("cpBodyIsStatic" #.(chipmunk-lispify "cpBodyIsStatic" 'function)) :int
  (body :pointer))

(cffi:defcfun ("cpBodyGetMass" #.(chipmunk-lispify "cpBodyGetMass" 'function)) :double
  (body :pointer))

(cffi:defcfun ("cpBodySetMass" #.(chipmunk-lispify "cpBodySetMass" 'function)) :void
  (body :pointer)
  (m :double))

(cffi:defcfun ("cpBodyGetMoment" #.(chipmunk-lispify "cpBodyGetMoment" 'function)) :double
  (body :pointer))

(cffi:defcfun ("cpBodySetMoment" #.(chipmunk-lispify "cpBodySetMoment" 'function)) :void
  (body :pointer)
  (i :double))

(cffi:defcfun ("cpBodySetPos" #.(chipmunk-lispify "cpBodySetPos" 'function)) :void
  (body :pointer)
  (value-x :double) (value-y :double))

(cffi:defcfun ("cpBodySetVel" #.(chipmunk-lispify "cpBodySetVel" 'function)) :void
  (body :pointer)
  (value-x :double) (value-y :double))

(cffi:defcfun ("cpBodySetForce" #.(chipmunk-lispify "cpBodySetForce" 'function)) :void
  (body :pointer)
  (value-x :double) (value-y :double))

(cffi:defcfun ("cpBodyGetAngle" #.(chipmunk-lispify "cpBodyGetAngle" 'function)) :double
  (body :pointer))

(cffi:defcfun ("cpBodySetAngle" #.(chipmunk-lispify "cpBodySetAngle" 'function)) :void
  (body :pointer)
  (a :double))

(cffi:defcfun ("cpBodyGetAngVel" #.(chipmunk-lispify "cpBodyGetAngVel" 'function)) :double
  (body :pointer))

(cffi:defcfun ("cpBodySetAngVel" #.(chipmunk-lispify "cpBodySetAngVel" 'function)) :void
  (body :pointer)
  (value :double))

(cffi:defcfun ("cpBodyGetTorque" #.(chipmunk-lispify "cpBodyGetTorque" 'function)) :double
  (body :pointer))

(cffi:defcfun ("cpBodySetTorque" #.(chipmunk-lispify "cpBodySetTorque" 'function)) :void
  (body :pointer)
  (value :double))

(cffi:defcfun ("cpBodyGetVelLimit" #.(chipmunk-lispify "cpBodyGetVelLimit" 'function)) :double
  (body :pointer))

(cffi:defcfun ("cpBodySetVelLimit" #.(chipmunk-lispify "cpBodySetVelLimit" 'function)) :void
  (body :pointer)
  (value :double))

(cffi:defcfun ("cpBodyGetAngVelLimit" #.(chipmunk-lispify "cpBodyGetAngVelLimit" 'function)) :double
  (body :pointer))

(cffi:defcfun ("cpBodySetAngVelLimit" #.(chipmunk-lispify "cpBodySetAngVelLimit" 'function)) :void
  (body :pointer)
  (value :double))

(cffi:defcfun ("cpBodySlew" #.(chipmunk-lispify "cpBodySlew" 'function)) :void
  (body :pointer)
  (pos-x :double) (pos-y :double)
  (dt :double))

(cffi:defcfun ("cpBodyUpdateVelocity" #.(chipmunk-lispify "cpBodyUpdateVelocity" 'function)) :void
  (body :pointer)
  (gravity-x :double) (gravity-y :double)
  (damping :double)
  (dt :double))

(cffi:defcfun ("cpBodyUpdatePosition" #.(chipmunk-lispify "cpBodyUpdatePosition" 'function)) :void
  (body :pointer)
  (dt :double))

(cffi:defcfun ("cpBodyResetForces" #.(chipmunk-lispify "cpBodyResetForces" 'function)) :void
  (body :pointer))

(cffi:defcfun ("cpBodyApplyForce" #.(chipmunk-lispify "cpBodyApplyForce" 'function)) :void
  (body :pointer)
  (f-x :double) (f-y :double)
  (r-x :double) (r-y :double))

(cffi:defcfun ("cpApplyDampedSpring" #.(chipmunk-lispify "cpApplyDampedSpring" 'function)) :void
  (a :pointer)
  (b :pointer)
  (anchr1-x :double) (anchr1-y :double)
  (anchr2-x :double) (anchr2-y :double)
  (rlen :double)
  (k :double)
  (dmp :double)
  (dt :double))

(cffi:defcstruct #.(chipmunk-lispify "cpSegmentQueryInfo" 'classname)
	(#.(chipmunk-lispify "shape" 'slotname) :pointer)
	(#.(chipmunk-lispify "t" 'slotname) :double)
	(n-x :double) (n-y :double))

(cffi:defcenum #.(chipmunk-lispify "cpShapeType" 'enumname)
	#.(chipmunk-lispify "CP_CIRCLE_SHAPE" 'enumvalue :keyword)
	#.(chipmunk-lispify "CP_SEGMENT_SHAPE" 'enumvalue :keyword)
	#.(chipmunk-lispify "CP_POLY_SHAPE" 'enumvalue :keyword)
	#.(chipmunk-lispify "CP_NUM_SHAPES" 'enumvalue :keyword))

(cffi:defcstruct #.(chipmunk-lispify "cpShapeClass" 'classname)
	(#.(chipmunk-lispify "type" 'slotname) #.(chipmunk-lispify "cpShapeType" 'enumname))
	(#.(chipmunk-lispify "cacheData" 'slotname) :pointer)
	(#.(chipmunk-lispify "destroy" 'slotname) :pointer)
	(#.(chipmunk-lispify "pointQuery" 'slotname) :pointer)
	(#.(chipmunk-lispify "segmentQuery" 'slotname) :pointer))

(cffi:defcstruct #.(chipmunk-lispify "cpShape" 'classname)
	(#.(chipmunk-lispify "klass" 'slotname) :pointer)
	(#.(chipmunk-lispify "body" 'slotname) :pointer)
	(#.(chipmunk-lispify "bb" 'slotname) #.(chipmunk-lispify "cpBB" 'classname))
	(#.(chipmunk-lispify "sensor" 'slotname) :int)
	(#.(chipmunk-lispify "e" 'slotname) :double)
	(#.(chipmunk-lispify "u" 'slotname) :double)
	(surface_v-x :double) (surface_v-y :double)
	(#.(chipmunk-lispify "data" 'slotname) :pointer)
	(#.(chipmunk-lispify "collision_type" 'slotname) :unsigned-int)
	(#.(chipmunk-lispify "group" 'slotname) :unsigned-int)
	(#.(chipmunk-lispify "layers" 'slotname) :unsigned-int)
	(#.(chipmunk-lispify "next" 'slotname) :pointer)
	(#.(chipmunk-lispify "hashid" 'slotname) :unsigned-int))

(cffi:defcfun ("cpShapeInit" #.(chipmunk-lispify "cpShapeInit" 'function)) :pointer
  (shape :pointer)
  (klass :pointer)
  (body :pointer))

(cffi:defcfun ("cpShapeDestroy" #.(chipmunk-lispify "cpShapeDestroy" 'function)) :void
  (shape :pointer))

(cffi:defcfun ("cpShapeFree" #.(chipmunk-lispify "cpShapeFree" 'function)) :void
  (shape :pointer))

(cffi:defcfun ("cpShapeCacheBB" #.(chipmunk-lispify "cpShapeCacheBB" 'function)) #.(chipmunk-lispify "cpBB" 'classname)
  (shape :pointer))

(cffi:defcfun ("cpShapePointQuery" #.(chipmunk-lispify "cpShapePointQuery" 'function)) :int
  (shape :pointer)
  (p-x :double) (p-y :double))

(cffi:defcstruct #.(chipmunk-lispify "cpCircleShape" 'classname)
	(#.(chipmunk-lispify "shape" 'slotname) #.(chipmunk-lispify "cpShape" 'classname))
	(c-x :double) (c-y :double)
	(#.(chipmunk-lispify "r" 'slotname) :double)
	(tc-x :double) (tc-y :double))

(cffi:defcfun ("cpCircleShapeAlloc" #.(chipmunk-lispify "cpCircleShapeAlloc" 'function)) :pointer)

(cffi:defcfun ("cpCircleShapeInit" #.(chipmunk-lispify "cpCircleShapeInit" 'function)) :pointer
  (circle :pointer)
  (body :pointer)
  (radius :double)
  (offset-x :double) (offset-y :double))

(cffi:defcfun ("cpCircleShapeNew" #.(chipmunk-lispify "cpCircleShapeNew" 'function)) :pointer
  (body :pointer)
  (radius :double)
  (offset-x :double) (offset-y :double))

(cffi:defcfun ("cpCircleShapeGetRadius" #.(chipmunk-lispify "cpCircleShapeGetRadius" 'function)) :double
  (shape :pointer))

(cffi:defcstruct #.(chipmunk-lispify "cpSegmentShape" 'classname)
	(#.(chipmunk-lispify "shape" 'slotname) #.(chipmunk-lispify "cpShape" 'classname))
	(a-x :double) (a-y :double)
	(b-x :double) (b-y :double)
	(n-x :double) (n-y :double)
	(#.(chipmunk-lispify "r" 'slotname) :double)
	(ta-x :double) (ta-y :double)
	(tb-x :double) (tb-y :double)
	(tn-x :double) (tn-y :double))

(cffi:defcfun ("cpSegmentShapeAlloc" #.(chipmunk-lispify "cpSegmentShapeAlloc" 'function)) :pointer)

(cffi:defcfun ("cpSegmentShapeInit" #.(chipmunk-lispify "cpSegmentShapeInit" 'function)) :pointer
  (seg :pointer)
  (body :pointer)
  (a-x :double) (a-y :double)
  (b-x :double) (b-y :double)
  (radius :double))

(cffi:defcfun ("cpSegmentShapeNew" #.(chipmunk-lispify "cpSegmentShapeNew" 'function)) :pointer
  (body :pointer)
  (a-x :double) (a-y :double)
  (b-x :double) (b-y :double)
  (radius :double))

(cffi:defcfun ("cpSegmentShapeGetRadius" #.(chipmunk-lispify "cpSegmentShapeGetRadius" 'function)) :double
  (shape :pointer))

(cffi:defcfun ("cpResetShapeIdCounter" #.(chipmunk-lispify "cpResetShapeIdCounter" 'function)) :void)

(cffi:defcfun ("cpSegmentQueryInfoPrint" #.(chipmunk-lispify "cpSegmentQueryInfoPrint" 'function)) :void
  (info :pointer))

(cffi:defcfun ("cpShapeSegmentQuery" #.(chipmunk-lispify "cpShapeSegmentQuery" 'function)) :int
  (shape :pointer)
  (a-x :double) (a-y :double)
  (b-x :double) (b-y :double)
  (info :pointer))

(cffi:defcstruct #.(chipmunk-lispify "cpPolyShapeAxis" 'classname)
	(n-x :double) (n-y :double)
	(#.(chipmunk-lispify "d" 'slotname) :double))

(cffi:defcstruct #.(chipmunk-lispify "cpPolyShape" 'classname)
	(#.(chipmunk-lispify "shape" 'slotname) #.(chipmunk-lispify "cpShape" 'classname))
	(#.(chipmunk-lispify "numVerts" 'slotname) :int)
	(#.(chipmunk-lispify "verts" 'slotname) :pointer)
	(#.(chipmunk-lispify "axes" 'slotname) :pointer)
	(#.(chipmunk-lispify "tVerts" 'slotname) :pointer)
	(#.(chipmunk-lispify "tAxes" 'slotname) :pointer))

(cffi:defcfun ("cpPolyShapeAlloc" #.(chipmunk-lispify "cpPolyShapeAlloc" 'function)) :pointer)

(cffi:defcfun ("cpPolyShapeInit" #.(chipmunk-lispify "cpPolyShapeInit" 'function)) :pointer
  (poly :pointer)
  (body :pointer)
  (numVerts :int)
  (verts :pointer)
  (offset-x :double) (offset-y :double))

(cffi:defcfun ("cpPolyShapeNew" #.(chipmunk-lispify "cpPolyShapeNew" 'function)) :pointer
  (body :pointer)
  (numVerts :int)
  (verts :pointer)
  (offset-x :double) (offset-y :double))

(cffi:defcfun ("cpBoxShapeInit" #.(chipmunk-lispify "cpBoxShapeInit" 'function)) :pointer
  (poly :pointer)
  (body :pointer)
  (width :double)
  (height :double))

(cffi:defcfun ("cpBoxShapeNew" #.(chipmunk-lispify "cpBoxShapeNew" 'function)) :pointer
  (body :pointer)
  (width :double)
  (height :double))

(cffi:defcfun ("cpPolyValidate" #.(chipmunk-lispify "cpPolyValidate" 'function)) :int
  (verts :pointer)
  (numVerts :int))

(cffi:defcfun ("cpPolyShapeGetNumVerts" #.(chipmunk-lispify "cpPolyShapeGetNumVerts" 'function)) :int
  (shape :pointer))

(cffi:defcvar ("cp_bias_coef" #.(chipmunk-lispify "cp_bias_coef" 'variable))
 :double)

(cffi:defcvar ("cp_collision_slop" #.(chipmunk-lispify "cp_collision_slop" 'variable))
 :double)

(cffi:defcstruct #.(chipmunk-lispify "cpContact" 'classname)
	(p-x :double) (p-y :double)
	(n-x :double) (n-y :double)
	(#.(chipmunk-lispify "dist" 'slotname) :double)
	(r1-x :double) (r1-y :double)
	(r2-x :double) (r2-y :double)
	(#.(chipmunk-lispify "nMass" 'slotname) :double)
	(#.(chipmunk-lispify "tMass" 'slotname) :double)
	(#.(chipmunk-lispify "bounce" 'slotname) :double)
	(#.(chipmunk-lispify "jnAcc" 'slotname) :double)
	(#.(chipmunk-lispify "jtAcc" 'slotname) :double)
	(#.(chipmunk-lispify "jBias" 'slotname) :double)
	(#.(chipmunk-lispify "bias" 'slotname) :double)
	(#.(chipmunk-lispify "hash" 'slotname) :unsigned-int))

(cffi:defcfun ("cpContactInit" #.(chipmunk-lispify "cpContactInit" 'function)) :pointer
  (con :pointer)
  (p-x :double) (p-y :double)
  (n-x :double) (n-y :double)
  (dist :double)
  (hash :unsigned-int))

(cffi:defcenum #.(chipmunk-lispify "cpArbiterState" 'enumname)
	#.(chipmunk-lispify "cpArbiterStateNormal" 'enumvalue :keyword)
	#.(chipmunk-lispify "cpArbiterStateFirstColl" 'enumvalue :keyword)
	#.(chipmunk-lispify "cpArbiterStateIgnore" 'enumvalue :keyword)
	#.(chipmunk-lispify "cpArbiterStateSleep" 'enumvalue :keyword)
	#.(chipmunk-lispify "cpArbiterStateCached" 'enumvalue :keyword))

(cffi:defcstruct #.(chipmunk-lispify "cpArbiter" 'classname)
	(#.(chipmunk-lispify "numContacts" 'slotname) :int)
	(#.(chipmunk-lispify "contacts" 'slotname) :pointer)
	(#.(chipmunk-lispify "private_a" 'slotname) :pointer)
	(#.(chipmunk-lispify "private_b" 'slotname) :pointer)
	(#.(chipmunk-lispify "e" 'slotname) :double)
	(#.(chipmunk-lispify "u" 'slotname) :double)
	(surface_vr-x :double) (surface_vr-y :double)
	(#.(chipmunk-lispify "stamp" 'slotname) :unsigned-int)
	(#.(chipmunk-lispify "handler" 'slotname) :pointer)
	(#.(chipmunk-lispify "swappedColl" 'slotname) :int)
	(#.(chipmunk-lispify "state" 'slotname) #.(chipmunk-lispify "cpArbiterState" 'enumname)))

(cffi:defcfun ("cpArbiterInit" #.(chipmunk-lispify "cpArbiterInit" 'function)) :pointer
  (arb :pointer)
  (a :pointer)
  (b :pointer))

(cffi:defcfun ("cpArbiterUpdate" #.(chipmunk-lispify "cpArbiterUpdate" 'function)) :void
  (arb :pointer)
  (contacts :pointer)
  (numContacts :int)
  (handler :pointer)
  (a :pointer)
  (b :pointer))

(cffi:defcfun ("cpArbiterPreStep" #.(chipmunk-lispify "cpArbiterPreStep" 'function)) :void
  (arb :pointer)
  (dt_inv :double))

(cffi:defcfun ("cpArbiterApplyCachedImpulse" #.(chipmunk-lispify "cpArbiterApplyCachedImpulse" 'function)) :void
  (arb :pointer))

(cffi:defcfun ("cpArbiterApplyImpulse" #.(chipmunk-lispify "cpArbiterApplyImpulse" 'function)) :void
  (arb :pointer)
  (eCoef :double))

(cffi:defcfun ("cpArbiterIgnore" #.(chipmunk-lispify "cpArbiterIgnore" 'function)) :void
  (arb :pointer))

(cffi:defcfun ("cpCollideShapes" #.(chipmunk-lispify "cpCollideShapes" 'function)) :int
  (a :pointer)
  (b :pointer)
  (arr :pointer))

(cffi:defcvar ("cp_constraint_bias_coef" #.(chipmunk-lispify "cp_constraint_bias_coef" 'variable))
 :double)

(cffi:defcstruct #.(chipmunk-lispify "cpConstraintClass" 'classname)
	(#.(chipmunk-lispify "preStep" 'slotname) :pointer)
	(#.(chipmunk-lispify "applyImpulse" 'slotname) :pointer)
	(#.(chipmunk-lispify "getImpulse" 'slotname) :pointer))

(cffi:defcstruct #.(chipmunk-lispify "cpConstraint" 'classname)
	(#.(chipmunk-lispify "klass" 'slotname) :pointer)
	(#.(chipmunk-lispify "a" 'slotname) :pointer)
	(#.(chipmunk-lispify "b" 'slotname) :pointer)
	(#.(chipmunk-lispify "maxForce" 'slotname) :double)
	(#.(chipmunk-lispify "biasCoef" 'slotname) :double)
	(#.(chipmunk-lispify "maxBias" 'slotname) :double)
	(#.(chipmunk-lispify "data" 'slotname) :pointer))

(cffi:defcfun ("cpConstraintDestroy" #.(chipmunk-lispify "cpConstraintDestroy" 'function)) :void
  (constraint :pointer))

(cffi:defcfun ("cpConstraintFree" #.(chipmunk-lispify "cpConstraintFree" 'function)) :void
  (constraint :pointer))

(cffi:defcfun ("cpConstraintActivateBodies" #.(chipmunk-lispify "cpConstraintActivateBodies" 'function)) :void
  (constraint :pointer))

(cffi:defcfun ("cpConstraintGetImpulse" #.(chipmunk-lispify "cpConstraintGetImpulse" 'function)) :double
  (constraint :pointer))

(cffi:defcvar ("cp_contact_persistence" #.(chipmunk-lispify "cp_contact_persistence" 'variable))
 :unsigned-int)

(cffi:defcstruct #.(chipmunk-lispify "cpCollisionHandler" 'classname)
	(#.(chipmunk-lispify "a" 'slotname) :unsigned-int)
	(#.(chipmunk-lispify "b" 'slotname) :unsigned-int)
	(#.(chipmunk-lispify "begin" 'slotname) :pointer)
	(#.(chipmunk-lispify "preSolve" 'slotname) :pointer)
	(#.(chipmunk-lispify "postSolve" 'slotname) :pointer)
	(#.(chipmunk-lispify "separate" 'slotname) :pointer)
	(#.(chipmunk-lispify "data" 'slotname) :pointer))

(cl:defconstant #.(chipmunk-lispify "CP_MAX_CONTACTS_PER_ARBITER" 'constant) 6)

(cffi:defcstruct #.(chipmunk-lispify "cpContactBufferHeader" 'classname)
	(#.(chipmunk-lispify "stamp" 'slotname) :unsigned-int)
	(#.(chipmunk-lispify "next" 'slotname) :pointer)
	(#.(chipmunk-lispify "numContacts" 'slotname) :unsigned-int))

(cffi:defcstruct #.(chipmunk-lispify "cpSpace" 'classname)
	(#.(chipmunk-lispify "iterations" 'slotname) :int)
	(#.(chipmunk-lispify "elasticIterations" 'slotname) :int)
	(gravity-x :double) (gravity-y :double)
	(#.(chipmunk-lispify "damping" 'slotname) :double)
	(#.(chipmunk-lispify "idleSpeedThreshold" 'slotname) :double)
	(#.(chipmunk-lispify "sleepTimeThreshold" 'slotname) :double)
	(#.(chipmunk-lispify "locked" 'slotname) :int)
	(#.(chipmunk-lispify "stamp" 'slotname) :unsigned-int)
	(#.(chipmunk-lispify "staticShapes" 'slotname) :pointer)
	(#.(chipmunk-lispify "activeShapes" 'slotname) :pointer)
	(#.(chipmunk-lispify "bodies" 'slotname) :pointer)
	(#.(chipmunk-lispify "sleepingComponents" 'slotname) :pointer)
	(#.(chipmunk-lispify "arbiters" 'slotname) :pointer)
	(#.(chipmunk-lispify "pooledArbiters" 'slotname) :pointer)
	(#.(chipmunk-lispify "contactBuffersHead" 'slotname) :pointer)
	(#.(chipmunk-lispify "_contactBuffersTail" 'slotname) :pointer)
	(#.(chipmunk-lispify "allocatedBuffers" 'slotname) :pointer)
	(#.(chipmunk-lispify "contactSet" 'slotname) :pointer)
	(#.(chipmunk-lispify "constraints" 'slotname) :pointer)
	(#.(chipmunk-lispify "collFuncSet" 'slotname) :pointer)
	(#.(chipmunk-lispify "defaultHandler" 'slotname) #.(chipmunk-lispify "cpCollisionHandler" 'classname))
	(#.(chipmunk-lispify "postStepCallbacks" 'slotname) :pointer)
	(#.(chipmunk-lispify "staticBody" 'slotname) #.(chipmunk-lispify "cpBody" 'classname)))

(cffi:defcfun ("cpSpaceAlloc" #.(chipmunk-lispify "cpSpaceAlloc" 'function)) :pointer)

(cffi:defcfun ("cpSpaceInit" #.(chipmunk-lispify "cpSpaceInit" 'function)) :pointer
  (space :pointer))

(cffi:defcfun ("cpSpaceNew" #.(chipmunk-lispify "cpSpaceNew" 'function)) :pointer)

(cffi:defcfun ("cpSpaceDestroy" #.(chipmunk-lispify "cpSpaceDestroy" 'function)) :void
  (space :pointer))

(cffi:defcfun ("cpSpaceFree" #.(chipmunk-lispify "cpSpaceFree" 'function)) :void
  (space :pointer))

(cffi:defcfun ("cpSpaceFreeChildren" #.(chipmunk-lispify "cpSpaceFreeChildren" 'function)) :void
  (space :pointer))

(cffi:defcfun ("cpSpaceSetDefaultCollisionHandler" #.(chipmunk-lispify "cpSpaceSetDefaultCollisionHandler" 'function)) :void
  (space :pointer)
  (begin :pointer)
  (preSolve :pointer)
  (postSolve :pointer)
  (separate :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpaceAddCollisionHandler" #.(chipmunk-lispify "cpSpaceAddCollisionHandler" 'function)) :void
  (space :pointer)
  (a :unsigned-int)
  (b :unsigned-int)
  (begin :pointer)
  (preSolve :pointer)
  (postSolve :pointer)
  (separate :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpaceRemoveCollisionHandler" #.(chipmunk-lispify "cpSpaceRemoveCollisionHandler" 'function)) :void
  (space :pointer)
  (a :unsigned-int)
  (b :unsigned-int))

(cffi:defcfun ("cpSpaceAddShape" #.(chipmunk-lispify "cpSpaceAddShape" 'function)) :pointer
  (space :pointer)
  (shape :pointer))

(cffi:defcfun ("cpSpaceAddStaticShape" #.(chipmunk-lispify "cpSpaceAddStaticShape" 'function)) :pointer
  (space :pointer)
  (shape :pointer))

(cffi:defcfun ("cpSpaceAddBody" #.(chipmunk-lispify "cpSpaceAddBody" 'function)) :pointer
  (space :pointer)
  (body :pointer))

(cffi:defcfun ("cpSpaceAddConstraint" #.(chipmunk-lispify "cpSpaceAddConstraint" 'function)) :pointer
  (space :pointer)
  (constraint :pointer))

(cffi:defcfun ("cpSpaceRemoveShape" #.(chipmunk-lispify "cpSpaceRemoveShape" 'function)) :void
  (space :pointer)
  (shape :pointer))

(cffi:defcfun ("cpSpaceRemoveStaticShape" #.(chipmunk-lispify "cpSpaceRemoveStaticShape" 'function)) :void
  (space :pointer)
  (shape :pointer))

(cffi:defcfun ("cpSpaceRemoveBody" #.(chipmunk-lispify "cpSpaceRemoveBody" 'function)) :void
  (space :pointer)
  (body :pointer))

(cffi:defcfun ("cpSpaceRemoveConstraint" #.(chipmunk-lispify "cpSpaceRemoveConstraint" 'function)) :void
  (space :pointer)
  (constraint :pointer))

(cffi:defcfun ("cpSpaceAddPostStepCallback" #.(chipmunk-lispify "cpSpaceAddPostStepCallback" 'function)) :void
  (space :pointer)
  (func :pointer)
  (obj :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpacePointQuery" #.(chipmunk-lispify "cpSpacePointQuery" 'function)) :void
  (space :pointer)
  (point-x :double) (point-y :double)
  (layers :unsigned-int)
  (group :unsigned-int)
  (func :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpacePointQueryFirst" #.(chipmunk-lispify "cpSpacePointQueryFirst" 'function)) :pointer
  (space :pointer)
  (point-x :double) (point-y :double)
  (layers :unsigned-int)
  (group :unsigned-int))

(cffi:defcfun ("cpSpaceSegmentQuery" #.(chipmunk-lispify "cpSpaceSegmentQuery" 'function)) :void
  (space :pointer)
  (start-x :double) (start-y :double)
  (end-x :double) (end-y :double)
  (layers :unsigned-int)
  (group :unsigned-int)
  (func :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpaceSegmentQueryFirst" #.(chipmunk-lispify "cpSpaceSegmentQueryFirst" 'function)) :pointer
  (space :pointer)
  (start-x :double) (start-y :double)
  (end-x :double) (end-y :double)
  (layers :unsigned-int)
  (group :unsigned-int)
  (out :pointer))

(cffi:defcfun ("cpSpaceBBQuery" #.(chipmunk-lispify "cpSpaceBBQuery" 'function)) :void
  (space :pointer)
  (bb #.(chipmunk-lispify "cpBB" 'classname))
  (layers :unsigned-int)
  (group :unsigned-int)
  (func :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpaceEachBody" #.(chipmunk-lispify "cpSpaceEachBody" 'function)) :void
  (space :pointer)
  (func :pointer)
  (data :pointer))

(cffi:defcfun ("cpSpaceResizeStaticHash" #.(chipmunk-lispify "cpSpaceResizeStaticHash" 'function)) :void
  (space :pointer)
  (dim :double)
  (count :int))

(cffi:defcfun ("cpSpaceResizeActiveHash" #.(chipmunk-lispify "cpSpaceResizeActiveHash" 'function)) :void
  (space :pointer)
  (dim :double)
  (count :int))

(cffi:defcfun ("cpSpaceRehashStatic" #.(chipmunk-lispify "cpSpaceRehashStatic" 'function)) :void
  (space :pointer))

(cffi:defcfun ("cpSpaceRehashShape" #.(chipmunk-lispify "cpSpaceRehashShape" 'function)) :void
  (space :pointer)
  (shape :pointer))

(cffi:defcfun ("cpSpaceStep" #.(chipmunk-lispify "cpSpaceStep" 'function)) :void
  (space :pointer)
  (dt :double))


