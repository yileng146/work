using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class Player : MonoBehaviour
{

    public int HP;//定义玩家生命值
    public event Action<Player> Playerdeath;
    private Text Player_HP;

    // Start is called before the first frame update
    void Start()
    {
        Player_HP = Text.FindObjectOfType<Text>();
        Player_HP.text = HP.ToString();
    }

    private void OnCollisionEnter(Collision collision)
    {
        Enemy enemy = collision.collider.GetComponent<Enemy>();
        if (enemy)
        {
            enemy.Attact(this);
            print(this.HP);
            Player_HP.text = HP.ToString();
            if (HP<=0)
            {
               
                if (Playerdeath != null)
                {
                    print("text");
                    Playerdeath(this);
                    GameObject.Find("Main Camera").GetComponent<MusicControl1>().music2Play();
                }

            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
