package dsHelper.flat.io;
import dsHelper.haxe.io.Float32Array;
import dsHelper.flat.io.Float32Flat;
@:forward
abstract Float32FlatDepth( Float32Flat )/* to Float32Array from Float32Array*/ {
    public inline
    function new( len: Int ){
        this = new Float32Flat( len );
    }
    // depth sort, ugly low level
    public
    function rangeToEnd( starting: Int, totalLen: Int, section: Int ){
        var ending: Int = starting + totalLen;
        var temp = [];
        var count = 0;
        // store values to move
        for( i in starting...ending ) temp[ count++ ] = this[ i ];
        // shift top half values down to fill hole
        var left = section * this.size - ending;
        for( i in 0...left ) this[ starting + i ] = this[ ending + i ];
        // draw at end.
        var last = section * this.size;
        var reserveTop = last - totalLen;
        count = 0;
        for( i in reserveTop...last ) this[ i ] = temp[ count++ ];
        temp = null;
        return true;
    }
    // depth sort, ugly low level
    public inline
    function rangeToStart( starting: Int, totalLen: Int ){
        if( starting == 0 ) return false;
        var ending = starting + totalLen;
        var temp = [];
        var count = 0;
        // store values to move
        for( i in starting...ending ){
            temp[ count ] = this[ i ];
            count++;
        }
        // shift bottom half values up to fill hole from top
        count = totalLen;
        for( i in 0...starting ){
            this[ ending - 1 - i ] = this[ starting - 1 - i ];
        }
        // add values to start
        count = 0;
        for( i in 0...totalLen ){
            this[ i ] = temp[ count - 2 ];
            count++;
        }
        temp = null;
        return true;
    }
}