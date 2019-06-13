using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyProduct : MonoBehaviour
{
    public Enemy[] enemiesPrefab;
    public bool isSwitch = true;
    private Bounds areabound;
    private Player player;
    public void shouldProductEnemy(bool isSwitch) {
        if (isSwitch==true)
        {
            player = GameObject.FindGameObjectWithTag("Player").GetComponent<Player>();
        }
        this.isSwitch = isSwitch;
    }
    // Start is called before the first frame update
    void Start()
    {
        shouldProductEnemy(isSwitch);
        areabound = this.GetComponent<BoxCollider>().bounds;
        InvokeRepeating("EnemySpawn",0.5F,2.0F);
    }
    private Vector3 RandomPlayerPosition()//随机生成玩家的位置 
    {
        float x = Random.Range(areabound.min.x,areabound.max.x);
        float y = 0.5f;
        float z = Random.Range(areabound.min.z,areabound.max.z);

        return new Vector3(x,y,z);
    }
    private void EnemySpawn() {
        int idnex = Random.Range(0, enemiesPrefab.Length);
        Enemy enemy = Instantiate(enemiesPrefab[idnex], RandomPlayerPosition(), Quaternion.identity);
        enemy.init(Random.Range(3, 6), Random.Range(1, 3), player.transform);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
