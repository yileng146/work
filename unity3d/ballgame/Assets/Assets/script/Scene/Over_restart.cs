using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEditor.SceneManagement;

public class Over_restart : MonoBehaviour
{
    //public Button button;
    // Start is called before the first frame update
    void Start()
    {
        //button.onClick.AddListener(btclick);//添加监听器用于监听按键事件，并回调函数
    }

    // Update is called once per frame
    void Update()
    {

    }
    public void bt_restartclick()
    {
        //print(1231);
        //SceneManager.LoadScene(1);//跳转到指定的Level，也就是第一步中的右侧标号
        EditorSceneManager.LoadScene("Main"); //加载 Main 场景 。
    }
   
}
