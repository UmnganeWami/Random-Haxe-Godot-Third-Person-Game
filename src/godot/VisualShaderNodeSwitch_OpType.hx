/**
	Generated using Godot Bindings Generator for Haxe.
	https://github.com/SomeRanDev/Haxe-GodotBindingsGenerator
**/
package godot;
@:cppEnum @:generated_godot_api @:bindings_api_type("global_enum") #if gdscript @:native("VisualShaderNodeSwitch.OpType") #end @:is_bitfield(false) extern enum VisualShaderNodeSwitch_OpType {
	/**
		A floating-point scalar.
	**/
	OP_TYPE_FLOAT();
	/**
		An integer scalar.
	**/
	OP_TYPE_INT();
	/**
		An unsigned integer scalar.
	**/
	OP_TYPE_UINT();
	/**
		A 2D vector type.
	**/
	OP_TYPE_VECTOR_2D();
	/**
		A 3D vector type.
	**/
	OP_TYPE_VECTOR_3D();
	/**
		A 4D vector type.
	**/
	OP_TYPE_VECTOR_4D();
	/**
		A boolean type.
	**/
	OP_TYPE_BOOLEAN();
	/**
		A transform type.
	**/
	OP_TYPE_TRANSFORM();
	/**
		Represents the size of the [enum OpType] enum.
	**/
	OP_TYPE_MAX();
}