using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MusicControl : MonoBehaviour
{
    public AudioSource Main_music;
    public Slider volume;
    public void Bg_MusicControl()
    {
        //设置音量大小
        Main_music.volume = volume.value;
    }
    public void mute()
    {
        Main_music.volume = 0;
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
