package analyzer;

import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;
import java.nio.file.Paths;

public class Main {

    public static void main(String[] args) throws IOException {

        String rootPath = Paths.get("").toAbsolutePath(). toString();
        String subPath = "/src/main/java/analyzer/";

        String sourceCode = rootPath + subPath + "input.c";

        LexicalAnalyzer lexical = new LexicalAnalyzer(new FileReader(sourceCode));
        try {
            lexical.yylex();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}