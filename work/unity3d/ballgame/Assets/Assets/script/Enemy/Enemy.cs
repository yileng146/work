﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour
{
    public int HP;
    public int damage;
    public Transform Player;
    //对 Enemy 对象属性进行初始化定义的方法 
    public void init(int HP, int damage, Transform target)
    {
        this.HP = HP;
        this.damage = damage;
        this.Player = target;
    }


    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Player)
        {
            this.transform.position = Vector3.MoveTowards(this.transform.position, Player.position, 0.1f);
        }
    }
    public void Attact(Player player)
    {
        player.HP -= this.damage;
        Destroy(this.gameObject);
    }

    public void takeDamage() {
        this.HP -= this.damage;
        if (this.HP<=0)
        {
            Destroy(this.gameObject);
        }
    }
}