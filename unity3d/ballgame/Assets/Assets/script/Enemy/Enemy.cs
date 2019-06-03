using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour
{
    public int hp;
    public int damage;
    public Transform player;
    //对 Enemy 对象属性进行初始化定义的方法 
    public void init(int hp, int damage, Transform player)
    {
        this.hp = hp;
        this.damage = damage;
        this.player = player;
    }


    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (player)
        {
            this.transform.position = Vector3.MoveTowards(this.transform.position, player.position, 0.1f);
        }
    }
    public void Attact(Player player)
    {
     
    }
}
