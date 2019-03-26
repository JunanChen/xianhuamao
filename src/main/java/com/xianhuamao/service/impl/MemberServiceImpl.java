package com.xianhuamao.service.impl;


import com.xianhuamao.mapper.MemberMapper;
import com.xianhuamao.pojo.Member;
import com.xianhuamao.service.MemberService;
import com.xianhuamao.utils.TimeUtil;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.util.ByteSource;
import org.apache.shiro.util.SimpleByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {


    @Autowired
    private MemberMapper mapper;


    @Override
    public Member getByNikName(String nikName) {
        return mapper.findByNikName(nikName);
    }


    @Override
    public Integer addMember(Member member) {


        //检测用户名是否重复
        Member member1 = mapper.findByNikName(member.getMember_nikname());

        if(member1 != null){
            //用户名已存在
            return 0;
        }

        //获取当前时间的unix时间戳
        member.setMember_reg_time(TimeUtil.getTimeStamp());

        //密码加密
        SimpleByteSource salt = new SimpleByteSource(ByteSource.Util.bytes(member.getMember_nikname()).toHex());
        member.setMember_pwd(new Md5Hash(member.getMember_pwd().toString(),salt,3).toString());


        return mapper.insert(member);
    }
}
