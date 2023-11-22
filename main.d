import std.stdio;
import std.algorithm;
import solver;

void main(){
    string sourceFile = "./input";
    auto Solver = new P29_Solver;
    int[] val = Solver.parseInput(sourceFile);
    int[] index = Solver.sortIndex(val);
    index.each!(i => writef("%d ", i));
    writeln();
}