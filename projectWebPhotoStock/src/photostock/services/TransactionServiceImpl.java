package photostock.services;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import photostock.dao.*;
import photostock.entities.*;

@Transactional
@Service("transactionService")
public class TransactionServiceImpl implements TransactionService {

	@Autowired
	private TransactionDAO transactionDAO;

	@Override
	public Transaction create(Transaction transaction) {
		return transactionDAO.create(transaction);
	}

	
}
