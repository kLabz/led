package led;

/*
	WARNING: all the follow types are serialized when saving a Project:
		- do not remove Enum values,
		- always add new Enum values at the end of the Enum,
		- Enum values can be renamed (they are stored as enum indexes)
		- do not rename Typedef fields or change their type
*/

enum LayerType {
	IntGrid;
	Entities;
	Tiles;
}


typedef IntGridValueDef = {
	var identifier : Null<String>;
	var color : UInt;
}

enum FieldType {
	F_Int;
	F_Float;
	F_String;
	F_Bool;
	F_Color;
	F_Enum(enumDefUid:Int);
}

enum ValueWrapper {
	V_Int(v:Int);
	V_Float(v:Float);
	V_Bool(v:Bool);
	V_String(v:String);
}

enum FieldDisplayMode {
	Hidden;
	ValueOnly;
	NameAndValue;
}

enum FieldDisplayPosition {
	Above;
	Center;
	Beneath;
}

enum EntityRenderMode {
	Rectangle;
	Ellipse;
	Tile;
}

typedef TilesetSelection = {
	var ids : Array<Int>;
	var mode : TileEditMode;
}

enum TileEditMode {
	Stamp;
	Random;
}

typedef EnumDefValue = {
	var id : String;
	var tileId : Null<Int>;
}

typedef AutoLayerRule = {
	var tileId : Null<Int>;
	var chance : Float;
	var pattern : Array<Int>;
}