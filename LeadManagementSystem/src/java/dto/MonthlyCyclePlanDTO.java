/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.util.Date;



/**
 *
 * @author Ganusha
 */
public class MonthlyCyclePlanDTO {

    private String UserID;
    private String PlanID;
    private Date Date;
    private String Month;
    private int FirstPlanned;
    private int SecondPlanned;
    private int ThirdPlanned;
    private int FourthPlanned;
    private int FirstActual;
    private int SecondActual;
    private int ThirdActual;
    private int FourthActual;
    private int Actual;

    public String getMonth() {
        return Month;
    }

    public void setMonth(String Month) {
        this.Month = Month;
    }

    
    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }

    public String getPlanID() {
        return PlanID;
    }

    public void setPlanID(String PlanID) {
        this.PlanID = PlanID;
    }

    public Date getDate() {
        return Date;
    }

    public void setDate(Date Date) {
        this.Date = Date;
    }

    public int getFirstPlanned() {
        return FirstPlanned;
    }

    public void setFirstPlanned(int FirstPlanned) {
        this.FirstPlanned = FirstPlanned;
    }

    public int getSecondPlanned() {
        return SecondPlanned;
    }

    public void setSecondPlanned(int SecondPlanned) {
        this.SecondPlanned = SecondPlanned;
    }

    public int getThirdPlanned() {
        return ThirdPlanned;
    }

    public void setThirdPlanned(int ThirdPlanned) {
        this.ThirdPlanned = ThirdPlanned;
    }

    public int getFourthPlanned() {
        return FourthPlanned;
    }

    public void setFourthPlanned(int FourthPlanned) {
        this.FourthPlanned = FourthPlanned;
    }

    public int getFirstActual() {
        return FirstActual;
    }

    public void setFirstActual(int FirstActual) {
        this.FirstActual = FirstActual;
    }

    public int getSecondActual() {
        return SecondActual;
    }

    public void setSecondActual(int SecondActual) {
        this.SecondActual = SecondActual;
    }

    public int getThirdActual() {
        return ThirdActual;
    }

    public void setThirdActual(int ThirdActual) {
        this.ThirdActual = ThirdActual;
    }

    public int getFourthActual() {
        return FourthActual;
    }

    public void setFourthActual(int FourthActual) {
        this.FourthActual = FourthActual;
    }

    public int getActual() {
        return Actual;
    }

    public void setActual(int Actual) {
        this.Actual = Actual;
    }

}
