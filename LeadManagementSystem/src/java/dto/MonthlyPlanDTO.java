/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author Ganusha
 */
public class MonthlyPlanDTO {
    private String PlanID;
    private String UserID;
    private int Count;
    private String Description;
   

    public String getPlanID() {
        return PlanID;
    }

    public void setPlanID(String PlanID) {
        this.PlanID = PlanID;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }

    public int getCount() {
        return Count;
    }

    public void setCount(int Count) {
        this.Count = Count;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    
    
}
