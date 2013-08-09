package com.jellyfish85.dbaccessor.dao

import com.jellyfish85.dbaccessor.utils.GenerateQuery
import com.jellyfish85.dbaccessor.manager.DatabaseManager

abstract class GeneralDao[A] extends GenerateQuery {

  def find(db: DatabaseManager,   bean: A): List[A]

  def insert(db: DatabaseManager, bean: A): BigDecimal

  def update(db: DatabaseManager, bean: A): BigDecimal

  def delete(db: DatabaseManager, bean: A): BigDecimal

  def merge(db: DatabaseManager,  bean: A): BigDecimal

}