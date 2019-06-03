using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cameramove : MonoBehaviour {

	// Use this for initialization
    public Transform target;

	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (target)
        {
            this.transform.position = Vector3.Lerp(this.transform.position,target.position,0.1f);
        }
	}
}
