package dsHelper.haxe.io;
/**
 * switches between Lime, NME and haxe.io.Float64Array
 */
#if (lime&&!js)
typedef Float64Array = lime.utils.Float64Array;
#elseif (nme)
typedef Float64Array = nme.utils.Float64Array;
#else
typedef Float64Array = haxe.io.Float64Array; // js.lib.Float64Array
#end
