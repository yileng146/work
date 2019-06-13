using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MusicControl1 : MonoBehaviour
{
    public AudioSource[] MusicSources;
    private AudioSource music1;
    private AudioSource music2;
    private AudioSource music3;
    private AudioSource music4;
    void Start()
    {
        MusicSources = this.GetComponents<AudioSource>();
        music1 = MusicSources[0];
        music2 = MusicSources[1];
        music3 = MusicSources[2];
        music4 = MusicSources[3];

        music1.Stop();
        music2.Stop();
        music3.Stop();
        music4.Stop();
    }
    public void music1Play()
    {

        music1.PlayOneShot(music1.clip);
    }
    public void music2Play()
    {
        music2.PlayOneShot(music2.clip);
    }
    public void music3Play()
    {
        music3.PlayOneShot(music3.clip);
    }
    public void music4Play()
    {
        music4.PlayOneShot(music4.clip);
    }
}


