/**
	Generated using Godot Bindings Generator for Haxe.
	https://github.com/SomeRanDev/Haxe-GodotBindingsGenerator
**/
package godot;
@:cppEnum @:generated_godot_api @:bindings_api_type("global_enum") #if gdscript @:native("VisualShaderNodeDerivativeFunc.OpType") #end @:is_bitfield(false) extern enum VisualShaderNodeDerivativeFunc_OpType {
	/**
		A floating-point scalar.
	**/
	OP_TYPE_SCALAR();
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
		Represents the size of the [enum OpType] enum.
	**/
	OP_TYPE_MAX();
}