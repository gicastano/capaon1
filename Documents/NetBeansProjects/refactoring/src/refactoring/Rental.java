/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package refactoring;

/**
 *
 * @author Gina
 */
public class Rental {
    private Movie _movie;
    private int _daysRented;
    
   public Rental(Movie movie, int daysRented){
   
       _movie =movie;
       _daysRented=daysRented;
   }
   public int getDaysRented(){
       return _movie;
   
   }
    
}
