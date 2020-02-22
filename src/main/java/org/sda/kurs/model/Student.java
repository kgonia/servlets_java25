package org.sda.kurs.model;

public class Student {

    private String name;

    private String surname;

    private boolean promoted;

    public Student(String name, String surname) {
        this.name = name;
        this.surname = surname;
    }

    public Student(String name, String surname, boolean promoted) {
        this.name = name;
        this.surname = surname;
        this.promoted = promoted;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public boolean isPromoted() {
        return promoted;
    }
}
