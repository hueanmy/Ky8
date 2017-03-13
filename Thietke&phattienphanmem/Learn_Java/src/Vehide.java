/**
 * Created by katie on 06/03/2017.
 */
public class Vehide {
    String color;
    String name;
    String date;
    int fee;

    public Vehide(String color, String name, String date){
        this.color= color;
        this.name = name;
        this.date = date;
    }
    public int getFee(){
        return this.fee;
    }
}
