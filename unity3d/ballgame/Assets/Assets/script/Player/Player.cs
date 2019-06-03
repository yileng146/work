using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class Player : MonoBehaviour
{

    public int HP;//定义玩家生命值
    public event Action<Player> Playerdeath;
    private Text Surplus_HP;

    // Start is called before the first frame update
    void Start()
    {
        //Surplus_HP = Text.FindObjectOfType<Text>();
        //Surplus_HP.text = HP.ToString();
    }

    private void OnCollisionEnter(Collision collision)
    {
        Enemy enemy = collision.collider.GetComponent<Enemy>();
        if (enemy)
        {
            enemy.Attact(this);
            print(this.HP);
            //Surplus_HP.text = HP.ToString();
            if (HP<=0)
            {
                if (Playerdeath!=null)
                {
                    Playerdeath(this);
                }
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
