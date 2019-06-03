using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttact : MonoBehaviour
{
    public Bullet bulletPerfab;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))//当按下鼠标
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            Debug.DrawRay(ray.origin,ray.direction*100,Color.white,10);//射线起始位置，方向，颜色，持续时间
            RaycastHit raycastHit;
            bool ishit = Physics.Raycast(ray,out raycastHit);
            if (ishit)
            {
                print(raycastHit.collider.gameObject.name);              
                print(raycastHit.point);                 
                Vector3 dir = new Vector3(raycastHit.point.x, this.transform.position.y, raycastHit.point.z) - this.transform.position;
                Ray moveray = new Ray(this.transform.position, dir);
                Debug.DrawRay(moveray.origin, moveray.direction * 100, Color.green, 10);
                //实例化子弹对象 
                Bullet bullet = Instantiate(bulletPerfab);//生成预制体的源头和想生成的方向位置
                Physics.IgnoreCollision(bullet.transform.GetComponent<Collider>(),this.GetComponent<Collider>());
                bullet.BulletShoot(moveray);

            }
        }
    }
}
