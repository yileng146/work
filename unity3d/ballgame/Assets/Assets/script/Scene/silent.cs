using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class silent : MonoBehaviour
{
    public GameObject Start_btn;
    public GameObject setting_btn;
    public GameObject close_btn;
    public GameObject MusicControl;
    public GameObject Mainpanel;

    public void OnStartGame(int SceneName)
    {
        SceneManager.LoadScene(SceneName);
    }

    public void OnClick()
    {
        //setting_btn.SetActive(false);
        //Start_btn.SetActive(false);
        Mainpanel.SetActive(false);
        MusicControl.SetActive(true);
    }
    public void OnClick2()
    {
        //setting_btn.SetActive(true);
        //Start_btn.SetActive(true);
        MusicControl.SetActive(false);
        Mainpanel.SetActive(true);

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
