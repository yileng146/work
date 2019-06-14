using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class animation : MonoBehaviour
{
    public Animator start_an;
    public Animator resu_an;
    public Animator set_an;
   

    public void OnClickSetting()
    {
        start_an.SetBool("start_btn_bool", true);
        resu_an.SetBool("resu_btn_bool", true);
        set_an.SetBool("set_btn_bool", true);
       
    }


    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
