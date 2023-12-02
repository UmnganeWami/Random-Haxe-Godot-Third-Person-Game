/**
	Generated using Godot Bindings Generator for Haxe.
	https://github.com/SomeRanDev/Haxe-GodotBindingsGenerator
**/
package godot;
/**
	This node takes its parent [Path2D], and returns the coordinates of a point within it, given a distance from the first vertex.
	It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be children of this node. The descendant nodes will then move accordingly when setting the [member progress] in this node.
**/
@:generated_godot_api @:bindings_api_type("class") @:is_refcounted(false) @:is_instantiable(true) @:api_type("core") @:is_resource(false) @:is_node(true) extern class PathFollow2D extends godot.Node2D {
#if use_properties
	/**
		The distance along the path, in pixels. Changing this value sets this node's position to a point within the path.
	**/
	@:index(null)
	@:getter("get_progress")
	@:setter("set_progress")
	public var progress(get, set) : Float;
#else

	/**
		The distance along the path, in pixels. Changing this value sets this node's position to a point within the path.
	**/
	@:index(null)
	@:getter("get_progress")
	@:setter("set_progress")
	public var progress : Float;
#end
#if use_properties
	/**
		The distance along the path as a number in the range 0.0 (for the first vertex) to 1.0 (for the last). This is just another way of expressing the progress within the path, as the offset supplied is multiplied internally by the path's length.
	**/
	@:index(null)
	@:getter("get_progress_ratio")
	@:setter("set_progress_ratio")
	public var progress_ratio(get, set) : Float;
#else

	/**
		The distance along the path as a number in the range 0.0 (for the first vertex) to 1.0 (for the last). This is just another way of expressing the progress within the path, as the offset supplied is multiplied internally by the path's length.
	**/
	@:index(null)
	@:getter("get_progress_ratio")
	@:setter("set_progress_ratio")
	public var progress_ratio : Float;
#end
#if use_properties
	/**
		The node's offset along the curve.
	**/
	@:index(null)
	@:getter("get_h_offset")
	@:setter("set_h_offset")
	public var h_offset(get, set) : Float;
#else

	/**
		The node's offset along the curve.
	**/
	@:index(null)
	@:getter("get_h_offset")
	@:setter("set_h_offset")
	public var h_offset : Float;
#end
#if use_properties
	/**
		The node's offset perpendicular to the curve.
	**/
	@:index(null)
	@:getter("get_v_offset")
	@:setter("set_v_offset")
	public var v_offset(get, set) : Float;
#else

	/**
		The node's offset perpendicular to the curve.
	**/
	@:index(null)
	@:getter("get_v_offset")
	@:setter("set_v_offset")
	public var v_offset : Float;
#end
#if use_properties
	/**
		If [code]true[/code], this node rotates to follow the path, with the +X direction facing forward on the path.
	**/
	@:index(null)
	@:getter("is_rotating")
	@:setter("set_rotates")
	public var rotates(get, set) : Bool;
#else

	/**
		If [code]true[/code], this node rotates to follow the path, with the +X direction facing forward on the path.
	**/
	@:index(null)
	@:getter("is_rotating")
	@:setter("set_rotates")
	public var rotates : Bool;
#end
#if use_properties
	/**
		If [code]true[/code], the position between two cached points is interpolated cubically, and linearly otherwise.
		The points along the [Curve2D] of the [Path2D] are precomputed before use, for faster calculations. The point at the requested offset is then calculated interpolating between two adjacent cached points. This may present a problem if the curve makes sharp turns, as the cached points may not follow the curve closely enough.
		There are two answers to this problem: either increase the number of cached points and increase memory consumption, or make a cubic interpolation between two points at the cost of (slightly) slower calculations.
	**/
	@:index(null)
	@:getter("get_cubic_interpolation")
	@:setter("set_cubic_interpolation")
	public var cubic_interp(get, set) : Bool;
#else

	/**
		If [code]true[/code], the position between two cached points is interpolated cubically, and linearly otherwise.
		The points along the [Curve2D] of the [Path2D] are precomputed before use, for faster calculations. The point at the requested offset is then calculated interpolating between two adjacent cached points. This may present a problem if the curve makes sharp turns, as the cached points may not follow the curve closely enough.
		There are two answers to this problem: either increase the number of cached points and increase memory consumption, or make a cubic interpolation between two points at the cost of (slightly) slower calculations.
	**/
	@:index(null)
	@:getter("get_cubic_interpolation")
	@:setter("set_cubic_interpolation")
	public var cubic_interp : Bool;
#end
#if use_properties
	/**
		If [code]true[/code], any offset outside the path's length will wrap around, instead of stopping at the ends. Use it for cyclic paths.
	**/
	@:index(null)
	@:getter("has_loop")
	@:setter("set_loop")
	public var loop(get, set) : Bool;
#else

	/**
		If [code]true[/code], any offset outside the path's length will wrap around, instead of stopping at the ends. Use it for cyclic paths.
	**/
	@:index(null)
	@:getter("has_loop")
	@:setter("set_loop")
	public var loop : Bool;
#end
#if use_properties
	public extern inline function set_progress(v: Float): Float {
		set_progress_impl(cast v);
		return v;
	}

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(373806689)
	@:hash_compatibility(null)
	@:native("set_progress")
	@:argMeta(0, ":meta"("float"))
	public function set_progress_impl(@:meta("float") progress:Float):Void;

#else

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(373806689)
	@:hash_compatibility(null)
	@:argMeta(0, ":meta"("float"))
	public function set_progress(@:meta("float") progress:Float):Void;

#end
	@:return_value_meta("float")
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(1740695150)
	@:hash_compatibility(null)
	public function get_progress():Float;
#if use_properties
	public extern inline function set_h_offset(v: Float): Float {
		set_h_offset_impl(cast v);
		return v;
	}

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(373806689)
	@:hash_compatibility(null)
	@:native("set_h_offset")
	@:argMeta(0, ":meta"("float"))
	public function set_h_offset_impl(@:meta("float") h_offset:Float):Void;

#else

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(373806689)
	@:hash_compatibility(null)
	@:argMeta(0, ":meta"("float"))
	public function set_h_offset(@:meta("float") h_offset:Float):Void;

#end
	@:return_value_meta("float")
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(1740695150)
	@:hash_compatibility(null)
	public function get_h_offset():Float;
#if use_properties
	public extern inline function set_v_offset(v: Float): Float {
		set_v_offset_impl(cast v);
		return v;
	}

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(373806689)
	@:hash_compatibility(null)
	@:native("set_v_offset")
	@:argMeta(0, ":meta"("float"))
	public function set_v_offset_impl(@:meta("float") v_offset:Float):Void;

#else

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(373806689)
	@:hash_compatibility(null)
	@:argMeta(0, ":meta"("float"))
	public function set_v_offset(@:meta("float") v_offset:Float):Void;

#end
	@:return_value_meta("float")
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(1740695150)
	@:hash_compatibility(null)
	public function get_v_offset():Float;
#if use_properties
	public extern inline function set_progress_ratio(v: Float): Float {
		set_progress_ratio_impl(cast v);
		return v;
	}

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(373806689)
	@:hash_compatibility(null)
	@:native("set_progress_ratio")
	@:argMeta(0, ":meta"("float"))
	public function set_progress_ratio_impl(@:meta("float") ratio:Float):Void;

#else

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(373806689)
	@:hash_compatibility(null)
	@:argMeta(0, ":meta"("float"))
	public function set_progress_ratio(@:meta("float") ratio:Float):Void;

#end
	@:return_value_meta("float")
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(1740695150)
	@:hash_compatibility(null)
	public function get_progress_ratio():Float;
#if use_properties
	public extern inline function set_rotates(v: Bool): Bool {
		set_rotates_impl(cast v);
		return v;
	}

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(2586408642.)
	@:hash_compatibility(null)
	@:native("set_rotates")
	public function set_rotates_impl(enabled:Bool):Void;

#else

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(2586408642.)
	@:hash_compatibility(null)
	public function set_rotates(enabled:Bool):Void;

#end
	@:return_value_meta(null)
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(36873697)
	@:hash_compatibility(null)
	@:native("is_rotating")
	public function get_rotates():Bool;
#if use_properties
	public extern inline function set_cubic_interp(v: Bool): Bool {
		set_cubic_interp_impl(cast v);
		return v;
	}

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(2586408642.)
	@:hash_compatibility(null)
	@:native("set_cubic_interp")
	public function set_cubic_interp_impl(enabled:Bool):Void;

#else

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(2586408642.)
	@:hash_compatibility(null)
	@:native("set_cubic_interpolation")
	public function set_cubic_interp(enabled:Bool):Void;

#end
	@:return_value_meta(null)
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(36873697)
	@:hash_compatibility(null)
	@:native("get_cubic_interpolation")
	public function get_cubic_interp():Bool;
#if use_properties
	public extern inline function set_loop(v: Bool): Bool {
		set_loop_impl(cast v);
		return v;
	}

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(2586408642.)
	@:hash_compatibility(null)
	@:native("set_loop")
	public function set_loop_impl(loop:Bool):Void;

#else

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(2586408642.)
	@:hash_compatibility(null)
	public function set_loop(loop:Bool):Void;

#end
	@:return_value_meta(null)
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(36873697)
	@:hash_compatibility(null)
	@:native("has_loop")
	public function get_loop():Bool;
}