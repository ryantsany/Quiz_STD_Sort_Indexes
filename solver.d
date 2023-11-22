module solver;
import std.stdio;
import std.container.array;
import std.algorithm.sorting;

class P29_Solver{ 
    int[] parseInput(string path){
        auto inputFile = File(path, "r");
        int[] inputData;
        int num;
        int len;
        inputFile.readf("%d\n", len);
        while(!inputFile.eof()){
            inputFile.readf("%d ", num);
            inputData ~= num;
        }
        return inputData;
    }

    int[] sortIndex(int[] x){
        int[] index = new int[x.length];
        makeIndex!("a < b")(x, index);
        return index;
    }  
}