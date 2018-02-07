package analyzer;

import java.io.File;
import java.nio.file.Paths;

public class Generator {

    public static void main(String[] args) {

        String rootPath = Paths.get("").toAbsolutePath(). toString();
        String subPath = "/src/main/java/analyzer/";

        String file = rootPath + subPath + "Lexer.lex";

        File sourceCode = new File(file);

        jflex.Main.generate(sourceCode);

    }
}