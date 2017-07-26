package com.syeftipay.backend.service.account;


public class AccountNotFoundException extends RuntimeException{
  public AccountNotFoundException(String email) {
    super("Account with email "+email+" is not registered");
  }
}
