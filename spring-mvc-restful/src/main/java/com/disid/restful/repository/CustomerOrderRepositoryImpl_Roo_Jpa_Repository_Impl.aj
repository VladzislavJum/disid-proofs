// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.repository;

import com.disid.restful.model.CustomerOrder;
import com.disid.restful.model.QCustomerOrder;
import com.disid.restful.repository.CustomerOrderRepositoryCustom;
import com.disid.restful.repository.CustomerOrderRepositoryImpl;
import com.disid.restful.repository.GlobalSearch;
import com.mysema.query.BooleanBuilder;
import com.mysema.query.jpa.JPQLQuery;
import com.mysema.query.types.Order;
import com.mysema.query.types.OrderSpecifier;
import com.mysema.query.types.path.NumberPath;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerOrderRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: CustomerOrderRepositoryImpl implements CustomerOrderRepositoryCustom;
    
    declare @type: CustomerOrderRepositoryImpl: @Transactional(readOnly = true);
    
    public Page<CustomerOrder> CustomerOrderRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        NumberPath<Long> idCustomerOrder = new NumberPath<Long>(Long.class, "id");
        QCustomerOrder customerOrder = QCustomerOrder.customerOrder;
        JPQLQuery query = getQueryFrom(customerOrder);
        BooleanBuilder where = new BooleanBuilder();

        if (globalSearch != null) {
            String txt = globalSearch.getText();
            where.and(
                customerOrder.shipAddress.containsIgnoreCase(txt)
            );

        }
        query.where(where);

        long totalFound = query.count();
        if (pageable != null) {
            if (pageable.getSort() != null) {
                for (Sort.Order order : pageable.getSort()) {
                    Order direction = order.isAscending() ? Order.ASC : Order.DESC;

                    switch(order.getProperty()){
                        case "shipAddress":
                           query.orderBy(new OrderSpecifier<String>(direction, customerOrder.shipAddress));
                           break;
                    }
                }
            }
            query.offset(pageable.getOffset()).limit(pageable.getPageSize());
        }
        query.orderBy(idCustomerOrder.asc());
        
        List<CustomerOrder> results = query.list(customerOrder);
        return new PageImpl<CustomerOrder>(results, pageable, totalFound);
    }
    
}
