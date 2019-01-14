public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
public int findFirstVowel(String word){
  for(int i = 0; i<=word.length()-1; i++){
    if(word.substring(i,i+1).equals("a"))
    return i;
  if(word.substring(i,i+1).equals("e"))
    return i;
    if(word.substring(i,i+1).equals("i"))
    return i;
    if(word.substring(i,i+1).equals("o"))
    return i;
    if(word.substring(i,i+1).equals("u"))
    return i;
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else
	{
		return "ERROR!";
	}
}
