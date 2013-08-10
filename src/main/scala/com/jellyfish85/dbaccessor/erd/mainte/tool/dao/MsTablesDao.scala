package com.jellyfish85.dbaccessor.erd.mainte.tool.dao

import com.jellyfish85.dbaccessor.dao.GeneralDao
import com.jellyfish85.dbaccessor.manager.DatabaseManager
import com.jellyfish85.dbaccessor.erd.mainte.tool.bean.MsTablesBean
import java.sql.{SQLException, ResultSet, PreparedStatement}

class MsTablesDao extends GeneralDao[MsTablesBean] {

  /**
   * テーブルマスタ検索
   *
   * @param db
   * @param bean テーブル名（物理）を検索キーとする
   * @return テーブルマスタ明細を返却する
   */
  def find(db: DatabaseManager,   bean: MsTablesBean): List[MsTablesBean] = {
    var list: List[MsTablesBean] = List()

    val sql: String = generateSimpleQuery("/query/erd/mainte/tool/SELECT_MS_TABLES.sql")
    val stmt: PreparedStatement = db.conn.prepareStatement(sql)
    try {
      stmt.setString(1, bean.physicalTableNameAttr.value)

      val result: ResultSet = stmt.executeQuery()

      while (result.next()) {
        val bean: MsTablesBean = new MsTablesBean()

        bean.trkmIdAttr.value             = result.getBigDecimal("TRKM_ID")
        bean.tabDefIdAttr.value           = result.getBigDecimal("TAB_DEF_ID")
        bean.tableIdAttr.value            = result.getBigDecimal("TABLE_ID")
        bean.revisionAttr.value           = result.getBigDecimal("REVISION")
        bean.logicalTableTagAttr.value    = result.getString("LOGICAL_TABLE_TAG")
        bean.logicalTableNameAttr.value   = result.getString("LOGICAL_TABLE_NAME")
        bean.physicalTableNameAttr.value  = result.getString("PHYSICAL_TABLE_NAME")
        bean.trkmStatusAttr.value         = result.getString("TRKM_STATUS")
        bean.tableCommentAttr.value       = result.getString("TABLE_COMMENT")
        bean.segoseiCheckStatusAttr.value = result.getString("SEGOSEI_CHECK_STATUS")
        bean.ticketNumberAttr.value       = result.getBigDecimal("TICKET_NUMBER")
        bean.existsFlgAttr.value          = result.getString("EXISTS_FLG")

        list ::= bean

      }

    } catch {
      case e: SQLException =>
        e.printStackTrace()

    } finally {
        stmt.close()
    }

    list
  }

  def insert(db: DatabaseManager, bean: MsTablesBean): BigDecimal = {
    val result: BigDecimal = 0

    result
  }

  def update(db: DatabaseManager, bean: MsTablesBean) : BigDecimal = {
    val result: BigDecimal = 0

    result
  }

  def delete(db: DatabaseManager, bean: MsTablesBean): BigDecimal = {
    val result: BigDecimal = 0

    result
  }

  /**
   * テーブルマスタマージ
   *
   * @param db
   * @param bean
   * @return
   */
  def merge(db: DatabaseManager,  bean: MsTablesBean): BigDecimal = {
    val result: BigDecimal = 0

    val sql: String = generateSimpleQuery("/query/erd/mainte/tool/MERGE_MS_TABLES.sql")
    val stmt: PreparedStatement = db.conn.prepareStatement(sql)

    try {

      stmt.setString(1, bean.physicalTableNameAttr.value)
      stmt.setBigDecimal(2, bean.revisionAttr.value.asInstanceOf[java.math.BigDecimal])
      stmt.setString(3, bean.logicalTableNameAttr.value)
      stmt.setString(4, bean.trkmStatusAttr.value)
      stmt.setString(5, bean.tableCommentAttr.value)
      stmt.setString(6, bean.segoseiCheckStatusAttr.value)
      stmt.setBigDecimal(7, bean.ticketNumberAttr.value.asInstanceOf[java.math.BigDecimal])
      stmt.setBigDecimal(8, bean.trkmIdAttr.value.asInstanceOf[java.math.BigDecimal])

      stmt.setBigDecimal(9, bean.trkmIdAttr.value.asInstanceOf[java.math.BigDecimal])
      stmt.setBigDecimal(10, bean.tabDefIdAttr.value.asInstanceOf[java.math.BigDecimal])
      stmt.setBigDecimal(11, bean.revisionAttr.value.asInstanceOf[java.math.BigDecimal])
      stmt.setString(12, bean.logicalTableNameAttr.value)
      stmt.setString(13, bean.physicalTableNameAttr.value)
      stmt.setString(14, bean.trkmStatusAttr.value)
      stmt.setString(15, bean.tableCommentAttr.value)
      stmt.setString(16, bean.segoseiCheckStatusAttr.value)
      stmt.setBigDecimal(17, bean.ticketNumberAttr.value.asInstanceOf[java.math.BigDecimal])
      stmt.setString(18, bean.existsFlgAttr.value)

    } catch {
      case e: SQLException =>
        e.printStackTrace()

    } finally {
      stmt.close()
    }

    result
  }
}
