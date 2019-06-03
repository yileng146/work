using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class test : MonoBehaviour {

    Vector3 target;

	// Use this for initialization
	void Start () {
        target = Vector3.zero;
	}
	
	// Update is called once per frame
	void Update () {
        this.transform.position = target;
	}
}
