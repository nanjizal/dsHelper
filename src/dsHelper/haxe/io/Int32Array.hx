package dsHelper.haxe.io;
/**
 * switches between Lime, NME and haxe.io.Int32Array
 */
#if (lime&&!js)
typedef Int32Array = lime.utils.Int32Array;
#elseif (nme)
typedef Int32Array = nme.utils.Int32Array;
#else
typedef Int32Array = haxe.io.Int32Array; // js.lib.Int32Array
#end
