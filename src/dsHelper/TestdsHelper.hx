package dsHelper;
#if !dsHelperDoc
import utest.Runner;
import utest.Test;
import utest.ui.Report;
import equals.Equal;
import utest.Assert;
// subfolders
import dsHelper.flatInterleave.*;
import dsHelper.flatInterleave.core.*;
import dsHelper.iterArr.*;

@:build(hx.doctest.DocTestGenerator.generateDocTests())
@:build(utest.utils.TestBuilder.build())
class TestdsHelper extends utest.Test {
    public static function main() {
        var runner = new Runner();
        runner.addCase( new TestdsHelper() );
        Report.create(runner);
        runner.run();
    }
    function new() {
        super();
    }
}
#end