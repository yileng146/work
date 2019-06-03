using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{

    // Use this for initialization
    public float accelertion = 650;
    public float maxspeed = 4500;
    private Rigidbody body;
    private KeyCode[] inputkeys;
    private Vector3[] movedir;

    void Start()
    {
        body = this.GetComponent<Rigidbody>();
        inputkeys = new KeyCode[]{
           KeyCode.UpArrow,KeyCode.DownArrow,KeyCode.LeftArrow,KeyCode.RightArrow
           };
        movedir = new Vector3[]{
           Vector3.forward,Vector3.back,Vector3.left,Vector3.right
           };
    }

    // Update is called once per frame
    void Update()
    {
        for (int i = 0; i < inputkeys.Length; i++)
        {
            KeyCode key = inputkeys[i];
            if (Input.GetKey(key))
            {
                Vector3 moveforce = movedir[i] * Time.deltaTime * accelertion;
                PlayerMovement(moveforce);
            }
        }

    }
    void PlayerMovement(Vector3 moveforce)
    {
        if (body.velocity.magnitude * accelertion > maxspeed)
            body.AddForce(-moveforce);
        else
            body.AddForce(moveforce);
    }
}
