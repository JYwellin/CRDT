---------------------------- MODULE SystemModel ----------------------------
EXTENDS Bags
-----------------------------------------------------------------------------
CONSTANTS 
    Replica,  \* �����ڵ㼯��
    Msg       \* ��Ϣ����
    
NotMsg == CHOOSE m : m \notin Msg  
-----------------------------------------------------------------------------
VARIABLES incoming  \* incoming[r]�������ڵ�r���ڽ�����Ϣ���ŵ�
-----------------------------------------------------------------------------
SMTypeOK == 
    \A r \in Replica : BagToSet(incoming[r]) \in SUBSET Msg  \* ÿ�������ڵ��ͨ���ŵ���һ�����ؼ� (multiset, ʹ��Bag��ʾ)
=============================================================================
\* Modification History
\* Last modified Thu Jun 06 15:56:45 CST 2019 by xhdn
\* Created Wed Jun 05 21:05:12 CST 2019 by xhdn
