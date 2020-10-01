# Table of content

 - [Json root](#led-ProjectJson)

 - [Level](#led-LevelJson)

   - [Layer instance](#led-LayerInstanceJson)

     - [Entity instance](#led-EntityInstanceJson)

     - [Field instance](#led-FieldInstanceJson)

 - [Definitions](#led-DefinitionsJson)

   - [Layer definition](#led-LayerDefJson)

   - [Entity definition](#led-EntityDefJson)

   - [Tileset definition](#led-TilesetDefJson)

   - [Enum definition](#led-EnumDefJson)

<a id="led-ProjectJson" name="led-ProjectJson"></a>

&nbsp;

# Json root

<a id="led-ProjectJson-bgColor" name="led-ProjectJson-bgColor"></a>

## `bgColor` : **String**

 - *Hexadecimal string using "#rrggbb" format*

 - Project background color

<a id="led-ProjectJson-defaultGridSize" name="led-ProjectJson-defaultGridSize"></a>

## `defaultGridSize` : **Int**

 - Default grid size for new layers

<a id="led-ProjectJson-defaultPivotX" name="led-ProjectJson-defaultPivotX"></a>

## `defaultPivotX` : **Float**

 - Default X pivot (0 to 1) for new entities

<a id="led-ProjectJson-defaultPivotY" name="led-ProjectJson-defaultPivotY"></a>

## `defaultPivotY` : **Float**

 - Default Y pivot (0 to 1) for new entities

<a id="led-ProjectJson-defs" name="led-ProjectJson-defs"></a>

## `defs` : **[Definitions](#led-DefinitionsJson)**

 - A structure containing all the definitions of this project

<a id="led-ProjectJson-jsonVersion" name="led-ProjectJson-jsonVersion"></a>

## `jsonVersion` : **String**

 - File format version

<a id="led-ProjectJson-levels" name="led-ProjectJson-levels"></a>

## `levels` : **Array of [Level](#led-LevelJson)**

<a id="led-ProjectJson-minifyJson" name="led-ProjectJson-minifyJson"></a>

## `minifyJson` : **Bool**

 - If TRUE, the Json is partially minified (no indentation, nor line breaks)

<a id="led-LevelJson" name="led-LevelJson"></a>

&nbsp;

# Level

<a id="led-LevelJson-identifier" name="led-LevelJson-identifier"></a>

## `identifier` : **String**

 - Unique String identifier

<a id="led-LevelJson-layerInstances" name="led-LevelJson-layerInstances"></a>

## `layerInstances` : **Array of [Layer instance](#led-LayerInstanceJson)**

<a id="led-LevelJson-pxHei" name="led-LevelJson-pxHei"></a>

## `pxHei` : **Int**

 - Height of the level in pixels

<a id="led-LevelJson-pxWid" name="led-LevelJson-pxWid"></a>

## `pxWid` : **Int**

 - Width of the level in pixels

<a id="led-LevelJson-uid" name="led-LevelJson-uid"></a>

## `uid` : **Int**

 - Unique Int identifier

<a id="led-LayerInstanceJson" name="led-LayerInstanceJson"></a>

&nbsp;

## Layer instance

<a id="led-LayerInstanceJson-__cHei" name="led-LayerInstanceJson-__cHei"></a>

### `__cHei` : **Int**

 - Grid-based height

<a id="led-LayerInstanceJson-__cWid" name="led-LayerInstanceJson-__cWid"></a>

### `__cWid` : **Int**

 - Grid-based width

<a id="led-LayerInstanceJson-__gridSize" name="led-LayerInstanceJson-__gridSize"></a>

### `__gridSize` : **Int**

 - Grid size

<a id="led-LayerInstanceJson-__identifier" name="led-LayerInstanceJson-__identifier"></a>

### `__identifier` : **String**

 - Unique String identifier

<a id="led-LayerInstanceJson-__type" name="led-LayerInstanceJson-__type"></a>

### `__type` : **String**

 - Layer type (possible values: IntGrid, Entities, Tiles or AutoLayer)

<a id="led-LayerInstanceJson-autoTiles" name="led-LayerInstanceJson-autoTiles"></a>

### `autoTiles` : **Array of Object**

 - **Only available for Auto-layers**

 - This array contains objects with all the following fields:

    - `ruleId` : **Int**

    - `results` : **Array of Object**

      - `coordId` : **Int** -- Coordinate ID in the layer grid

      - `flips` : **Int** -- A 2-bits integer: Bit 0 = X flip, Bit 1 = Y flip

      - `tiles` : **Array of Object** -- An array of all the tiles generated by the corresponding rule:

        - `__srcX` : **Int** -- X pixel coordinate of the tile in the **tileset**

        - `__srcY` : **Int** -- Y pixel coordinate of the tile in the **tileset**

        - `__x` : **Int** -- X pixel coordinate of the tile in the **layer**

        - `__y` : **Int** -- Y pixel coordinate of the tile in the **layer**

        - `tileId` : **Int** -- Tile ID in the corresponding tileset

<a id="led-LayerInstanceJson-entityInstances" name="led-LayerInstanceJson-entityInstances"></a>

### `entityInstances` : **Array of [Entity instance](#led-EntityInstanceJson)**

 - **Only available for Entity layers**

<a id="led-LayerInstanceJson-gridTiles" name="led-LayerInstanceJson-gridTiles"></a>

### `gridTiles` : **Array of Object**

 - **Only available for Tile layers**

 - This array contains objects with all the following fields:

    - `__srcX` : **Int** -- X pixel coordinate of the tile in the **tileset**

    - `__srcY` : **Int** -- Y pixel coordinate of the tile in the **tileset**

    - `__x` : **Int** -- X pixel coordinate of the tile in the **layer**

    - `__y` : **Int** -- Y pixel coordinate of the tile in the **layer**

    - `coordId` : **Int** -- Coordinate ID in the layer grid

    - `tileId` : **Int** -- Tile ID in the corresponding tileset

<a id="led-LayerInstanceJson-intGrid" name="led-LayerInstanceJson-intGrid"></a>

### `intGrid` : **Array of Object**

 - **Only available for IntGrid layers**

 - This array contains objects with all the following fields:

    - `coordId` : **Int** -- Coordinate ID in the layer grid

    - `v` : **Int** -- IntGrid value

<a id="led-LayerInstanceJson-layerDefUid" name="led-LayerInstanceJson-layerDefUid"></a>

### `layerDefUid` : **Int**

 - Reference the Layer definition UID

<a id="led-LayerInstanceJson-levelId" name="led-LayerInstanceJson-levelId"></a>

### `levelId` : **Int**

 - Reference to the UID of the level containing this layer instance

<a id="led-LayerInstanceJson-pxOffsetX" name="led-LayerInstanceJson-pxOffsetX"></a>

### `pxOffsetX` : **Int**

 - Horizontal offset in pixels to render this layer, usually 0

<a id="led-LayerInstanceJson-pxOffsetY" name="led-LayerInstanceJson-pxOffsetY"></a>

### `pxOffsetY` : **Int**

 - Vertical offset in pixels to render this layer, usually 0

<a id="led-LayerInstanceJson-seed" name="led-LayerInstanceJson-seed"></a>

### `seed` : **Int**

 - **Only available for Auto-layers (pure or IntGrid based)**

 - Random seed used for Auto-Layers rendering

<a id="led-EntityInstanceJson" name="led-EntityInstanceJson"></a>

&nbsp;

### Entity instance

<a id="led-EntityInstanceJson-__cx" name="led-EntityInstanceJson-__cx"></a>

#### `__cx` : **Int**

 - Grid-based X coordinate

<a id="led-EntityInstanceJson-__cy" name="led-EntityInstanceJson-__cy"></a>

#### `__cy` : **Int**

 - Grid-based Y coordinate

<a id="led-EntityInstanceJson-__identifier" name="led-EntityInstanceJson-__identifier"></a>

#### `__identifier` : **String**

 - Unique String identifier

<a id="led-EntityInstanceJson-defUid" name="led-EntityInstanceJson-defUid"></a>

#### `defUid` : **Int**

 - Reference of the **Entity definition** UID

<a id="led-EntityInstanceJson-fieldInstances" name="led-EntityInstanceJson-fieldInstances"></a>

#### `fieldInstances` : **Array of [Field instance](#led-FieldInstanceJson)**

<a id="led-EntityInstanceJson-x" name="led-EntityInstanceJson-x"></a>

#### `x` : **Int**

 - Pixel X coordinate

<a id="led-EntityInstanceJson-y" name="led-EntityInstanceJson-y"></a>

#### `y` : **Int**

 - Pixel Y coordinate

<a id="led-FieldInstanceJson" name="led-FieldInstanceJson"></a>

&nbsp;

### Field instance

<a id="led-FieldInstanceJson-__identifier" name="led-FieldInstanceJson-__identifier"></a>

#### `__identifier` : **String**

 - Unique String identifier

<a id="led-FieldInstanceJson-__type" name="led-FieldInstanceJson-__type"></a>

#### `__type` : **String**

 - Type of the field, such as Int, Float, Enum(enum_name), Bool, etc.

<a id="led-FieldInstanceJson-__value" name="led-FieldInstanceJson-__value"></a>

#### `__value` : **Dynamic (anything)**

 - Actual value of the field instance. The value type may vary, depending on `__type` (Integer, Boolean, String etc.)

<a id="led-FieldInstanceJson-defUid" name="led-FieldInstanceJson-defUid"></a>

#### `defUid` : **Int**

 - Reference of the **Field definition** UID

<a id="led-DefinitionsJson" name="led-DefinitionsJson"></a>

&nbsp;

# Definitions

Many useful data found in `definitions` are duplicated in fields
	prefixed with a double "_".

<a id="led-DefinitionsJson-entities" name="led-DefinitionsJson-entities"></a>

## `entities` : **Array of [Entity definition](#led-EntityDefJson)**

<a id="led-DefinitionsJson-enums" name="led-DefinitionsJson-enums"></a>

## `enums` : **Array of [Enum definition](#led-EnumDefJson)**

<a id="led-DefinitionsJson-externalEnums" name="led-DefinitionsJson-externalEnums"></a>

## `externalEnums` : **Array of [Enum definition](#led-EnumDefJson)**

 - Note: external enums are exactly the same as `enums`, except they
		have a `relPath` to point to an external source file.

<a id="led-DefinitionsJson-layers" name="led-DefinitionsJson-layers"></a>

## `layers` : **Array of [Layer definition](#led-LayerDefJson)**

<a id="led-DefinitionsJson-tilesets" name="led-DefinitionsJson-tilesets"></a>

## `tilesets` : **Array of [Tileset definition](#led-TilesetDefJson)**

<a id="led-LayerDefJson" name="led-LayerDefJson"></a>

&nbsp;

## Layer definition

Not available yet

<a id="led-EntityDefJson" name="led-EntityDefJson"></a>

&nbsp;

## Entity definition

Not available yet

<a id="led-TilesetDefJson" name="led-TilesetDefJson"></a>

&nbsp;

## Tileset definition

Not available yet

<a id="led-EnumDefJson" name="led-EnumDefJson"></a>

&nbsp;

## Enum definition

Not available yet