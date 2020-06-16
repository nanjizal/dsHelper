package dsHelper.haxe.io;
/**
 * switches between Lime, NME and haxe.io.Float32Array
 */
#if (lime&&!js)
typedef Float32Array = lime.utils.Float32Array;
#elseif ( nme && !dsHelperDoc )
typedef Float32Array = nme.utils.Float32Array;
#else
typedef Float32Array = haxe.io.Float32Array; // js.lib.Float32Array
#end
