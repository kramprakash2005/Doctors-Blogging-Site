package com.Newblog;

public class BlogPost {
    private int blogID;
    private int doctorID;
    private String patientName;
    private String medicalIssues;
    private String diseaseName;
    private String routeCause;
    private String tests;
    private String treatmentType;
    private String medications;
    private String treatmentDuration;
    private String treatmentResult;
    private String sideEffects;

    // Getters and Setters
    public int getBlogID() {
        return blogID;
    }

    public void setBlogID(int blogID) {
        this.blogID = blogID;
    }

    public int getDoctorID() {
        return doctorID;
    }

    public void setDoctorID(int doctorID) {
        this.doctorID = doctorID;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public String getMedicalIssues() {
        return medicalIssues;
    }

    public void setMedicalIssues(String medicalIssues) {
        this.medicalIssues = medicalIssues;
    }

    public String getDiseaseName() {
        return diseaseName;
    }

    public void setDiseaseName(String diseaseName) {
        this.diseaseName = diseaseName;
    }

    public String getRouteCause() {
        return routeCause;
    }

    public void setRouteCause(String routeCause) {
        this.routeCause = routeCause;
    }

    public String getTests() {
        return tests;
    }

    public void setTests(String tests) {
        this.tests = tests;
    }

    public String getTreatmentType() {
        return treatmentType;
    }

    public void setTreatmentType(String treatmentType) {
        this.treatmentType = treatmentType;
    }

    public String getMedications() {
        return medications;
    }

    public void setMedications(String medications) {
        this.medications = medications;
    }

    public String getTreatmentDuration() {
        return treatmentDuration;
    }

    public void setTreatmentDuration(String treatmentDuration) {
        this.treatmentDuration = treatmentDuration;
    }

    public String getTreatmentResult() {
        return treatmentResult;
    }

    public void setTreatmentResult(String treatmentResult) {
        this.treatmentResult = treatmentResult;
    }

    public String getSideEffects() {
        return sideEffects;
    }

    public void setSideEffects(String sideEffects) {
        this.sideEffects = sideEffects;
    }
}
