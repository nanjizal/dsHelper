package trilateral3.geom.flat;
import haxe.io.Float32Array; 
@:forward
abstract Flat3x7( Flat32 ) {
    @:op([]) public inline 
    function readItem( k: Int ): Float {
        return this.readItem( index*21 + k );
    }
    @:op([]) public inline 
    function writeItem( k: Int, v: Float ): Float {
        this.writeItem( index*21 + k, v );
        return v;
    }
    public inline 
    function new( len: Int ){
        this = new Flat32( len );
    }
    public var index( get, set ): Int;
    inline
    function get_index(): Int {
        return this.index;
    }
    inline
    function set_index( id: Int ): Int {
        this.index = id;
        return id;
    }
    public inline
    function getArray(): Float32Array {
        return this.subarray( 2, this.size*21 + 2 );
    }
}
