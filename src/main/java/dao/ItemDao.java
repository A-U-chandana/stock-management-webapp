package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.hibernate.cache.spi.support.AbstractReadWriteAccess.Item;


import dto.ItemDto;

public class ItemDao {

	private EntityManagerFactory entityManagerFactory;
	private EntityManager entityManager;
	private EntityTransaction entityTransaction;

	private EntityManager getEntityManager() {
		entityManagerFactory = Persistence.createEntityManagerFactory("Test");
		return entityManagerFactory.createEntityManager();

	}

	public void saveItem(ItemDto item) {
		entityManager = getEntityManager();
		entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(item);
		entityTransaction.commit();
	}

	public boolean deleteItem(int id) {
		entityManager = getEntityManager();
		entityTransaction = entityManager.getTransaction();
		ItemDto item = entityManager.find(ItemDto.class, id);
		if (item != null) {
			entityTransaction.begin();
			entityManager.remove(item);
			entityTransaction.commit();
			return true;
		} else
			return false;
	}
	 public List<ItemDto> getAllItems() {
			entityManager = getEntityManager();
			Query query=entityManager.createQuery("select item from ItemDto item");
			List list=query.getResultList();
			return list;
		 }

	 public List<ItemDto> getAllItemsByNameAndType(String name,String type) {
			entityManager = getEntityManager();
		
			 if(name!=null && type!=null) {
				Query query = entityManager.createQuery("select item from ItemDto item where name LIKE '%"+name+"%' AND type LIKE '%"+type+"%'");
				List<ItemDto> items = query.getResultList();
					return items;
			}
			else if(name==null && type!=null) {
				Query query = entityManager.createQuery("select item from ItemDto item where type LIKE '%"+type+"%'");
				List<ItemDto> items = query.getResultList();
					return items;
			}
			else if(name!=null && type==null) {
				Query query = entityManager.createQuery("select item from ItemDto item where name LIKE '%"+name+"%' ");
				List<ItemDto> items = query.getResultList();
				return items;
			}
			else {
				Query query = entityManager.createQuery("select item from ItemDto item");
				List<ItemDto> items = query.getResultList();
				return items;
			}
			 

	}
}
