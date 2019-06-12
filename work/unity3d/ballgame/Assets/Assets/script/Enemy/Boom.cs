using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boom : MonoBehaviour
{
    private GameObject[] boom;
    void Update()
    {
        boom = GameObject.FindGameObjectsWithTag("boom");
        foreach (var i in boom)
        {
            if (i.GetComponent<ParticleSystem>().isPlaying == false)
            {
                Destroy(i.gameObject);
            }
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
  
}
