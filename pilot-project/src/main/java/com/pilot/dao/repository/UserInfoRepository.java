package com.pilot.dao.repository;

import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;
import com.pilot.entity.UserInfoEntity;


@Repository
@Transactional
public interface UserInfoRepository extends JpaRepository<UserInfoEntity, String>, JpaSpecificationExecutor<UserInfoEntity> {
    UserInfoEntity findByUsernameAndPassword (String Username, String Password);
    String findUserroleByUsernameAndPassword (String Username, String Password);
}
