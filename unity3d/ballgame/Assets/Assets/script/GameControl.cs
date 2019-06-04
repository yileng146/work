using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor.SceneManagement;

public class GameControl : MonoBehaviour
{
    public EnemyProduct enemyProduct;
    public Player playerPreb;
    // Start is called before the first frame update
    
    void Start()
    {
        Player player = GameObject.FindGameObjectWithTag("Player").GetComponent<Player>();//通过标签获取玩家对象
        enemyProduct = GameObject.Find("EnemyProduct").GetComponent<EnemyProduct>();//获取敌人产生器的对象
        player.Playerdeath += player_death;
    }
    private void player_death(Player obj) {
        Destroy(obj.gameObject);
        enemyProduct.shouldProductEnemy(false);
        GameObject[] enemies = GameObject.FindGameObjectsWithTag("Enemy");
        foreach (var item in enemies)
        {
            Destroy(item.gameObject);
        }
        GameObject[] bullets = GameObject.FindGameObjectsWithTag("Bullet");
        foreach (var item in bullets)
        {
            Destroy(item.gameObject);
        }
        Invoke("Restart",5.0F);
    }
    public void Restart()
    {
        Player player = Instantiate(playerPreb);
        Cameramove cameramove = GameObject.Find("CameraRig").GetComponent<Cameramove>();
        cameramove.target = player.transform;
        player.Playerdeath += player_death;
        enemyProduct.shouldProductEnemy(true);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
