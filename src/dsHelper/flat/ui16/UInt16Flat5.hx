package dsHelper.flat.ui16;
import dsHelper.flat.io.UInt16Flat;
import dsHelper.haxe.io.UInt16Array;
@:transitive
@:forward
abstract UInt16Flat5( UInt16Flat ) {
    @:op([]) public inline 
    function readItem( k: Int ): UInt {
      return this.readItem( pos*5 + k );
    }
    @:op([]) public inline 
    function writeItem( k: Int, v: UInt ): UInt {
        this.writeItem( pos*5 + k, v );
        return v;
    }
    public inline 
    function new( len: Int ){
        this = new UInt16Flat( len );
    }
    public var pos( get, set ): UInt;
    inline
    function get_pos(): UInt {
        return this.pos;
    }
    inline
    function set_pos( id: UInt ): UInt {
        this.pos = id;
        return id;
    }
    public inline
    function getArray(): UInt16Array {
        return this.subarray( 4, this.size*5 + 4 );
    }
}
