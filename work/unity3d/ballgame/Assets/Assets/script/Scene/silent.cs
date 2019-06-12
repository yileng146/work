using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class silent : MonoBehaviour
{
    public GameObject silent_btn;
    public GameObject setting_btn;
    public GameObject MusicControl;
    public void OnStartGame(int SceneName)
    {
        SceneManager.LoadScene(SceneName);//读取场景
    }

    public void OnClick()
    {
        setting_btn.SetActive(false);
        silent_btn.SetActive(false);
        MusicControl.SetActive(true);
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
