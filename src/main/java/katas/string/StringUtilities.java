package katas.string;

public class StringUtilities {

    //Reversing a string without a built int string utility
    public static String reverse(String input) {
        String output = "";
        for (int i = input.length() - 1; i >= 0; i--) {
            output += input.charAt(i);
        }
        return output;
    }

    //Capitalize a string without a built int string utility
    public static String capitalize(String input) {
    String output = "";
        for (int i = 0; i < input.length(); i++) {
            output += Character.toUpperCase(input.charAt(i));
        }
        return output;
    }

    //Lowercase a string without a built int string utility
    public static String lowercase(String input) {
    String output = "";
        for (int i = 0; i < input.length(); i++) {
            output += Character.toLowerCase(input.charAt(i));
        }
        return output;
    }
}
