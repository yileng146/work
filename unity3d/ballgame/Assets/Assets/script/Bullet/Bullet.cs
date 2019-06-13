using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    private Vector3 Movedir;//子弹移动方向
    public float MoveSpeed = 60.0f;//子弹飞行速度
    public int Damage = 1;//子弹伤害

    public void BulletShoot(Ray ray) {
        this.transform.position = ray.origin;//子弹初始位置随射线位置移动
        this.Movedir = ray.direction;//子弹移动方向和射线方向一样
    }

    private void OnCollisionEnter(Collision collision)//如果子弹和敌人发生碰撞，敌人掉血并销毁子弹
    {
        Enemy enemy = collision.collider.GetComponent<Enemy>();
        if (enemy)
        {
            enemy.takeDamage();
           
        }
            Destroy(this.gameObject);
    }
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        this.transform.Translate(this.Movedir*Time.deltaTime,Space.World);
    }
}
