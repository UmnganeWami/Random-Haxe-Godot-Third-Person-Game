/**
	Generated using Godot Bindings Generator for Haxe.
	https://github.com/SomeRanDev/Haxe-GodotBindingsGenerator
**/
package godot;
/**
	[LightmapGIData] contains baked lightmap and dynamic object probe data for [LightmapGI]. It is replaced every time lightmaps are baked in [LightmapGI].
**/
@:generated_godot_api @:bindings_api_type("class") @:is_refcounted(true) @:is_instantiable(true) @:api_type("core") @:is_resource(true) @:is_node(false) extern class LightmapGIData extends godot.Resource {
#if use_properties
	/**
		The lightmap atlas textures generated by the lightmapper.
	**/
	@:index(null)
	@:getter("get_lightmap_textures")
	@:setter("set_lightmap_textures")
	public var lightmap_textures(get, set) : Array<godot.TextureLayered>;
#else

	/**
		The lightmap atlas textures generated by the lightmapper.
	**/
	@:index(null)
	@:getter("get_lightmap_textures")
	@:setter("set_lightmap_textures")
	public var lightmap_textures : Array<godot.TextureLayered>;
#end
#if use_properties
	@:index(null)
	@:getter("is_using_spherical_harmonics")
	@:setter("set_uses_spherical_harmonics")
	public var uses_spherical_harmonics(get, set) : Bool;
#else

	@:index(null)
	@:getter("is_using_spherical_harmonics")
	@:setter("set_uses_spherical_harmonics")
	public var uses_spherical_harmonics : Bool;
#end
#if !use_properties
	@:index(null)
	@:getter("_get_user_data")
	@:setter("_set_user_data")
	public var user_data : godot.GodotArray;
#end
#if !use_properties
	@:index(null)
	@:getter("_get_probe_data")
	@:setter("_set_probe_data")
	public var probe_data : godot.Dictionary;
#end
#if use_properties
	/**
		The lightmap atlas texture generated by the lightmapper.
		[i]Deprecated.[/i] The lightmap atlas can now have multiple textures. See [member lightmap_textures].
	**/
	@:index(null)
	@:getter("get_light_texture")
	@:setter("set_light_texture")
	public var light_texture(get, set) : godot.TextureLayered;
#else

	/**
		The lightmap atlas texture generated by the lightmapper.
		[i]Deprecated.[/i] The lightmap atlas can now have multiple textures. See [member lightmap_textures].
	**/
	@:index(null)
	@:getter("get_light_texture")
	@:setter("set_light_texture")
	public var light_texture : godot.TextureLayered;
#end
#if !use_properties
	@:index(null)
	@:getter("_get_light_textures_data")
	@:setter("_set_light_textures_data")
	public var light_textures : godot.GodotArray;
#end
#if use_properties
	public extern inline function set_lightmap_textures(v: Array<godot.TextureLayered>): Array<godot.TextureLayered> {
		set_lightmap_textures_impl(cast v);
		return v;
	}

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(381264803)
	@:hash_compatibility(null)
	@:native("set_lightmap_textures")
	public function set_lightmap_textures_impl(light_textures:Array<godot.TextureLayered>):Void;

#else

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(381264803)
	@:hash_compatibility(null)
	public function set_lightmap_textures(light_textures:Array<godot.TextureLayered>):Void;

#end
	@:return_value_meta(null)
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(3995934104.)
	@:hash_compatibility(null)
	public function get_lightmap_textures():Array<godot.TextureLayered>;
#if use_properties
	public extern inline function set_uses_spherical_harmonics(v: Bool): Bool {
		set_uses_spherical_harmonics_impl(cast v);
		return v;
	}

	/**
		If [param uses_spherical_harmonics] is [code]true[/code], tells the engine to treat the lightmap data as if it was baked with directional information.
		[b]Note:[/b] Changing this value on already baked lightmaps will not cause them to be baked again. This means the material appearance will look incorrect until lightmaps are baked again, in which case the value set here is discarded as the entire [LightmapGIData] resource is replaced by the lightmapper.
	**/
	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(2586408642.)
	@:hash_compatibility(null)
	@:native("set_uses_spherical_harmonics")
	public function set_uses_spherical_harmonics_impl(uses_spherical_harmonics:Bool):Void;

#else

	/**
		If [param uses_spherical_harmonics] is [code]true[/code], tells the engine to treat the lightmap data as if it was baked with directional information.
		[b]Note:[/b] Changing this value on already baked lightmaps will not cause them to be baked again. This means the material appearance will look incorrect until lightmaps are baked again, in which case the value set here is discarded as the entire [LightmapGIData] resource is replaced by the lightmapper.
	**/
	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(2586408642.)
	@:hash_compatibility(null)
	public function set_uses_spherical_harmonics(uses_spherical_harmonics:Bool):Void;

#end
	/**
		If [code]true[/code], lightmaps were baked with directional information. See also [member LightmapGI.directional].
	**/
	@:return_value_meta(null)
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(36873697)
	@:hash_compatibility(null)
	@:native("is_using_spherical_harmonics")
	public function get_uses_spherical_harmonics():Bool;
	/**
		Adds an object that is considered baked within this [LightmapGIData].
	**/
	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(4272570515.)
	@:hash_compatibility(null)
	@:argMeta(2, ":meta"("int32"))
	@:argMeta(3, ":meta"("int32"))
	public function add_user(path:godot.NodePath, uv_scale:godot.Rect2, @:meta("int32") slice_index:Int, @:meta("int32") sub_instance:Int):Void;
	/**
		Returns the number of objects that are considered baked within this [LightmapGIData].
	**/
	@:return_value_meta("int32")
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(3905245786.)
	@:hash_compatibility(null)
	public function get_user_count():Int;
	/**
		Returns the [NodePath] of the baked object at index [param user_idx].
	**/
	@:return_value_meta(null)
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(408788394)
	@:hash_compatibility(null)
	@:argMeta(0, ":meta"("int32"))
	public function get_user_path(@:meta("int32") user_idx:Int):godot.NodePath;
	/**
		Clear all objects that are considered baked within this [LightmapGIData].
	**/
	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(3218959716.)
	@:hash_compatibility(null)
	public function clear_users():Void;
#if use_properties
	public extern inline function set_light_texture(v: godot.TextureLayered): godot.TextureLayered {
		set_light_texture_impl(cast v);
		return v;
	}

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(1278366092)
	@:hash_compatibility(null)
	@:native("set_light_texture")
	public function set_light_texture_impl(light_texture:godot.TextureLayered):Void;

#else

	@:is_const(false)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(1278366092)
	@:hash_compatibility(null)
	public function set_light_texture(light_texture:godot.TextureLayered):Void;

#end
	@:return_value_meta(null)
	@:is_const(true)
	@:is_static(false)
	@:is_vararg(false)
	@:is_virtual(false)
	@:hash(3984243839.)
	@:hash_compatibility(null)
	public function get_light_texture():godot.TextureLayered;
}