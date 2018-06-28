using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ClsObjects
/// </summary>
public class ClsObjects
{
    public class DataFile
    {
        private string _id, _val;
        public String id
        {
            get { return _id; }
            set { _id = value; }
        }
        public String value
        {
            get { return _val; }
            set { _val = value; }
        }
    }

    public class Aspectos 
    {
        private string patient_appearance;
        private string face;
        private string lipsAndCommisure;
        private string nodal_Palpation;
        private string lymph_nodes;
        private string atm;
        private string ears;
        private string hyoidea_thyroid;

        public string Patient_appearance
        {
            get { return patient_appearance; }
            set { patient_appearance = value; }
        }

        public string Face
        {
            get { return face; }
            set { face = value; }
        }

        public string LipsAndCommisure
        {
            get { return lipsAndCommisure; }
            set { lipsAndCommisure = value; }
        }

        public string Nodal_Palpation
        {
            get { return nodal_Palpation; }
            set { nodal_Palpation = value; }
        }

        public string Lymph_nodes
        {
            get { return lymph_nodes; }
            set { lymph_nodes = value; }
        }

        public string Atm
        {
            get { return atm; }
            set { atm = value; }
        }

        public string Ears
        {
            get { return ears; }
            set { ears = value; }
        }

        public string Hyoidea_thyroid
        {
            get { return hyoidea_thyroid; }
            set { hyoidea_thyroid = value; }
        }

    }

    public class Exams {

        private string cheeks;
        private string mucous;
        private string gum;
        private string tongue;
        private string palate;
        private string laboratory;
        private string model;
        private string blood_pressure;
        private string observations;

        public string Cheeks
        {
            get { return cheeks; }
            set { cheeks = value; }
        }

        public string Mucous
        {
            get { return mucous; }
            set { mucous = value; }
        }

        public string Gum
        {
            get { return gum; }
            set { gum = value; }
        }

        public string Tongue
        {
            get { return tongue; }
            set { tongue = value; }
        }

        public string Palate
        {
            get { return palate; }
            set { palate = value; }
        }
        
        public string Laboratory
        {
            get { return laboratory; }
            set { laboratory = value; }
        }

        public string Model
        {
            get { return model; }
            set { model = value; }
        }

        public string Blood_pressure
        {
            get { return blood_pressure; }
            set { blood_pressure = value; }
        }

        public string Observations
        {
            get { return observations; }
            set { observations = value; }
        }
    }
}