/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dto;

import java.util.Date;

/**
 *
 * @author Imesh
 */
public class CustomerDetailsDTO {
    
    private int CusID;
    private String UserID;
    private String CusName;
    private String Gender;
    private String MobNum;
    private String Status;
    private String PolStatus;
    private String SalActStage;
    private String NIC;
    private String LeadSource;
    private Date CreatedDate;
    private int VVIP;

    public int getCusID() {
        return CusID;
    }

    public void setCusID(int CusID) {
        this.CusID = CusID;
    }

    public String getUserID() {
        return UserID;
    }

    public void setUserID(String UserID) {
        this.UserID = UserID;
    }

    public String getCusName() {
        return CusName;
    }

    public void setCusName(String CusName) {
        this.CusName = CusName;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getMobNum() {
        return MobNum;
    }

    public void setMobNum(String MobNum) {
        this.MobNum = MobNum;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public String getPolStatus() {
        return PolStatus;
    }

    public void setPolStatus(String PolStatus) {
        this.PolStatus = PolStatus;
    }

    public String getSalActStage() {
        return SalActStage;
    }

    public void setSalActStage(String SalActStage) {
        this.SalActStage = SalActStage;
    }

    public String getNIC() {
        return NIC;
    }

    public void setNIC(String NIC) {
        this.NIC = NIC;
    }

    public String getLeadSource() {
        return LeadSource;
    }

    public void setLeadSource(String LeadSource) {
        this.LeadSource = LeadSource;
    }

    public Date getCreatedDate() {
        return CreatedDate;
    }

    public void setCreatedDate(Date CreatedDate) {
        this.CreatedDate = CreatedDate;
    }

    public int getVVIP() {
        return VVIP;
    }

    public void setVVIP(int VVIP) {
        this.VVIP = VVIP;
    }
    
    
}
