package dsHelper.haxe.io;
/**
 * switches between Lime, NME and haxe.io.UInt16Array
 */
#if (lime&&!js)
typedef UInt16Array = lime.utils.UInt16Array;
#elseif (nme)
typedef UInt16Array = nme.utils.UInt16Array;
#else
typedef UInt16Array = haxe.io.UInt16Array; // js.lib.Float32Array
#end
