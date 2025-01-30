package br.ufma.ecp;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

/**
 * Hello world!
 *
 */
public class App {

    private static String fromFile(File file) {

        byte[] bytes;
        try {
            bytes = Files.readAllBytes(file.toPath());
            String textoDoArquivo = new String(bytes, "UTF-8");
            return textoDoArquivo;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }

    private static void translateFile(File file, CodeWriter code) {

        String input = fromFile(file);
        Parser p = new Parser(input);
        while (p.hasMoreCommands()) {
            var command = p.nextCommand();
            switch (command.type) {

                // arithmetics
                case ADD:
                    code.writeArithmeticAdd();
                    break;

                case SUB:
                    code.writeArithmeticSub();
                    break;

                case NEG:
                    code.writeArithmeticNeg();
                    break;

                case NOT:
                    code.writeArithmeticNot();
                    break;

                case EQ:
                    code.writeArithmeticEq();
                    break;

                case LT:
                    code.writeArithmeticLt();
                    break;

                case GT:
                    code.writeArithmeticGt();
                    break;

                case AND:
                    code.writeArithmeticAnd();
                    break;

                case OR:
                    code.writeArithmeticOr();
                    break;

                case PUSH:
                    code.writePush(command.args.get(0), Integer.parseInt(command.args.get(1)));
                    break;

                case POP:
                    code.writePop(command.args.get(0), Integer.parseInt(command.args.get(1)));
                    break;

                default:
                    System.out.println(command.type.toString() + " not implemented");
            }

        }

    }

    public static void main(String[] args) {
        if (args.length != 1) {
            System.err.println("Please provide a single .vm file or directory.");
            System.exit(1);
        }

        File file = new File(args[0]);

        if (!file.exists()) {
            System.err.println("The specified file or directory does not exist.");
            System.exit(1);
        }

        if (file.isDirectory()) {
            CodeWriter code = new CodeWriter(file.getAbsolutePath() + "/" + file.getName() + ".asm");

            for (File f : file.listFiles()) {
                if (f.getName().endsWith(".vm")) {
                    System.out.println("Compiling " + f.getAbsolutePath());
                    translateFile(f, code);
                }
            }
            code.save();
        } else if (file.getName().endsWith(".vm")) {
            CodeWriter code = new CodeWriter(file.getAbsolutePath().replace(".vm", ".asm"));
            System.out.println("Compiling " + file.getAbsolutePath());
            translateFile(file, code);
            code.save();
        } else {
            System.err.println("Please provide a file with .vm extension.");
            System.exit(1);
        }
    }
}
