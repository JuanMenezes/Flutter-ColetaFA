/*
  Future<void> _testSetAnalyticsCollectionEnabled() async {
    await widget.analytics.setAnalyticsCollectionEnabled(false);
    await widget.analytics.setAnalyticsCollectionEnabled(true);
    setMessage('setAnalyticsCollectionEnabled succeeded');
  }

  Future<void> _testSetSessionTimeoutDuration() async {
    await widget.analytics.android?.setSessionTimeoutDuration(2000000);
    setMessage('setSessionTimeoutDuration succeeded');
  }

  Future<void> _testSetUserProperty() async {
    await widget.analytics.setUserProperty(name: 'regular', value: 'indeed');
    setMessage('setUserProperty succeeded');
  }

  Future<void> _testAllEventTypes() async {
    await widget.analytics.logAddPaymentInfo();
    await widget.analytics.logAddToCart(
      currency: 'USD',
      value: 123,
      itemId: 'test item id',
      itemName: 'test item name',
      itemCategory: 'test item category',
      quantity: 5,
      price: 24,
      origin: 'test origin',
      itemLocationId: 'test location id',
      destination: 'test destination',
      startDate: '2015-09-14',
      endDate: '2015-09-17',
    );
    await widget.analytics.logAddToWishlist(
      itemId: 'test item id',
      itemName: 'test item name',
      itemCategory: 'test item category',
      quantity: 5,
      price: 24,
      value: 123,
      currency: 'USD',
      itemLocationId: 'test location id',
    );
    await widget.analytics.logAppOpen();
    await widget.analytics.logBeginCheckout(
      value: 123,
      currency: 'USD',
      transactionId: 'test tx id',
      numberOfNights: 2,
      numberOfRooms: 3,
      numberOfPassengers: 4,
      origin: 'test origin',
      destination: 'test destination',
      startDate: '2015-09-14',
      endDate: '2015-09-17',
      travelClass: 'test travel class',
    );
    await widget.analytics.logCampaignDetails(
      source: 'test source',
      medium: 'test medium',
      campaign: 'test campaign',
      term: 'test term',
      content: 'test content',
      aclid: 'test aclid',
      cp1: 'test cp1',
    );
    await widget.analytics.logEarnVirtualCurrency(
      virtualCurrencyName: 'bitcoin',
      value: 345.66,
    );
    await widget.analytics.logEcommercePurchase(
      currency: 'USD',
      value: 432.45,
      transactionId: 'test tx id',
      tax: 3.45,
      shipping: 5.67,
      coupon: 'test coupon',
      location: 'test location',
      numberOfNights: 3,
      numberOfRooms: 4,
      numberOfPassengers: 5,
      origin: 'test origin',
      destination: 'test destination',
      startDate: '2015-09-13',
      endDate: '2015-09-14',
      travelClass: 'test travel class',
    );
    await widget.analytics.logGenerateLead(
      currency: 'USD',
      value: 123.45,
    );
    await widget.analytics.logJoinGroup(
      groupId: 'test group id',
    );
    await widget.analytics.logLevelUp(
      level: 5,
      character: 'witch doctor',
    );
    await widget.analytics.logLogin();
    await widget.analytics.logPostScore(
      score: 1000000,
      level: 70,
      character: 'tiefling cleric',
    );
    await widget.analytics.logPresentOffer(
      itemId: 'test item id',
      itemName: 'test item name',
      itemCategory: 'test item category',
      quantity: 6,
      price: 3.45,
      value: 67.8,
      currency: 'USD',
      itemLocationId: 'test item location id',
    );
    await widget.analytics.logPurchaseRefund(
      currency: 'USD',
      value: 45.67,
      transactionId: 'test tx id',
    );
    await widget.analytics.logSearch(
      searchTerm: 'hotel',
      numberOfNights: 2,
      numberOfRooms: 1,
      numberOfPassengers: 3,
      origin: 'test origin',
      destination: 'test destination',
      startDate: '2015-09-14',
      endDate: '2015-09-16',
      travelClass: 'test travel class',
    );
    await widget.analytics.logSelectContent(
      contentType: 'test content type',
      itemId: 'test item id',
    );
    await widget.analytics.logShare(
        contentType: 'test content type',
        itemId: 'test item id',
        method: 'facebook');
    await widget.analytics.logSignUp(
      signUpMethod: 'test sign up method',
    );
    await widget.analytics.logSpendVirtualCurrency(
      itemName: 'test item name',
      virtualCurrencyName: 'bitcoin',
      value: 34,
    );
    await widget.analytics.logTutorialBegin();
    await widget.analytics.logTutorialComplete();
    await widget.analytics.logUnlockAchievement(id: 'all Firebase API covered');
    /* await widget.analytics.logViewItem(
      itemId: 'test item id',
      itemName: 'test item name',
      itemCategory: 'test item category',
      itemLocationId: 'test item location id',
      price: 3.45,
      quantity: 6,
      currency: 'USD',
      value: 67.8,
      flightNumber: 'test flight number',
      numberOfPassengers: 3,
      numberOfRooms: 1,
      numberOfNights: 2,
      origin: 'test origin',
      destination: 'test destination',
      startDate: '2015-09-14',
      endDate: '2015-09-15',
      searchTerm: 'test search term',
      travelClass: 'test travel class',
    ); */
    await widget.analytics.logViewItemList(
      itemListId: 'related_teste_007',
      itemListName: 'Produtos relacionados007',
    );
    await widget.analytics.logViewSearchResults(
      searchTerm: 'test search term',
    );
    setMessage('All standard events logged successfully');
  }

  Future<void> _testEcommerce() async {
    await widget.analytics.logEcommercePurchase(
      currency: 'USD',
      value: 60.35,
      transactionId: 'test tx id',
      tax: 3.45,
      shipping: 5.67,
      coupon: 'test coupon',
      location: 'test location',
      numberOfNights: 3,
      numberOfRooms: 4,
      numberOfPassengers: 5,
      origin: 'test origin',
      destination: 'test destination',
      startDate: '2015-09-13',
      endDate: '2015-09-14',
      travelClass: 'test travel class',
    );
    setMessage('Sent EcomercePurchase');
  }

  Future<void> _testViewItem() async {
    await widget.analytics.logViewItem(
      itemId: 'SKU_2345',
      itemName: 'moletom-com-hoodie',
      price: 9.99,
      itemBrand: 'AttackOnTitan',
      itemCategory: 'moletom',
      itemVariant: 'Preto',
      itemListName: 'Produtos relacionados007',
      itemListId: 'related_teste_007',
      index: 5,
      quantity: 1,
    );
    await widget.analytics.logViewItem(
      itemId: 'SKU_5111',
      itemName: 'chinela',
      price: 11.22,
      itemBrand: 'OnePiece',
      itemCategory: 'sandalias',
      itemVariant: 'azul',
      itemListName: 'Produtos relacionados007',
      itemListId: 'related_teste_007',
      index: 10,
      quantity: 3,
    );
    await widget.analytics.logViewItemList(
      itemListId: 'related_teste_007',
      itemListName: 'Produtos relacionados007',
    );
    setMessage('Sent ViewProduct');
  }

  #################################################################################




  Future<void> _testSetUserId() async {
    await widget.analytics.setUserId('xoblinha-compra-muito');
    setMessage('setUserId succeeded');
  }

  Future<void> _testSetUserProperty() async {
    widget.analytics
        .setUserProperty(name: 'user_property1', value: _property_value1);
  }

  Future<void> _testSetCurrentScreen() async {
    await widget.analytics.setCurrentScreen(
      screenName: 'Aquecimento Pré-treino',
      screenClassOverride: 'Aquecimento 10',
    );
  }

  Future<void> _testViewItemList() async {
    await widget.analytics.logEvent(
      name: 'view_item_list',
      parameters: {
        'item_list_name': 'Produtos GeekNerd',
        'item_list_id': 'PG1404',
        'items': [
          {
            'item_id': 'SKU_12345',
            'item_name': 'Camisa One Piece',
            'item_category': 'Anime',
            'price': 30.50,
            'quantity': 1,
          },
          {
            'item_id': 'SKU_54321',
            'item_name': 'Chinelo ShigenkiNoKyojin',
            'item_category': 'Anime',
            'price': 40,
            'quantity': 1,
          },
        ],
      },
    );
  }

  Future<void> _testViewPromoFora() async {
    await widget.analytics.logEvent(
      name: 'view_promotion',
      parameters: {
        'creative_name': 'nome1-viewPromo',
        'creative_slot': 'slot-01',
        'promotion_id': 'SKU_1',
        'promotion_name': 'Implementacao Fora1-viewPromo',
        'items': [
          {
            'promotion_id': 'SKU_1',
            'promotion_name': 'Implementacao ArrayItems1-viewPromo',
          }
        ],
        'promotions': [
          {
            'item_id': 'SKU_1-itemID',
            'item_name': 'Implementacao ArrayPromotions1-viewPromo-itemID',
            'id': 'SKU_1-id',
            'name': 'Implementacao ArrayPromotions1-viewPromo-id',
          }
        ],
      },
    );
  }

  Future<void> _testViewItemFora() async {
    await widget.analytics.logEvent(
      name: 'view_item',
      parameters: {
        'creative_name': 'nome1-viewItem',
        'creative_slot': 'slot-01',
        'promotion_id': 'SKU_1',
        'promotion_name': 'Implementacao Fora1-viewItem',
        'items': [
          {
            'promotion_id': 'SKU_1',
            'promotion_name': 'Implementacao ArrayItems1-viewItem',
          }
        ],
        'promotions': [
          {
            'item_id': 'SKU_1-itemID',
            'item_name': 'Implementacao ArrayPromotions1-viewItem-itemID',
            'id': 'SKU_1-id',
            'name': 'Implementacao ArrayPromotions1-viewItem-id',
          }
        ],
      },
    );
  }

  Future<void> _testViewSelectContent() async {
    await widget.analytics.logEvent(
      name: 'select_content',
      parameters: {
        //'item_list_name': 'Produtos GeekNerd',
        //'item_list_id': 'PG1404',
        'creative_name': 'nomezinho',
        'creative_slot': 'slot-01',
        'promotion_id': 'SKU_12345',
        'promotion_name': 'Camisa One Piece',
        'items': [
          {
            'promotion_id': 'SKU_1',
            'promotion_name': 'Implementacao ArrayItems1-selectContent',
          }
        ],
        'promotions': [
          {
            'item_id': 'SKU_1-itemID',
            'item_name': 'Implementacao ArrayPromotions1-selectContent-itemID',
            'id': 'SKU_1-id',
            'name': 'Implementacao ArrayPromotions1-selectContent-id',
          }
        ],
      },
    );
  }

  Future<void> _testViewSelectPromotions() async {
    await widget.analytics.logEvent(
      name: 'select_promotion',
      parameters: {
        //'item_list_name': 'Produtos GeekNerd',
        //'item_list_id': 'PG1404',
        'creative_name': 'nomezinho',
        'creative_slot': 'slot-01',
        'promotion_id': 'SKU_12345',
        'promotion_name': 'Camisa One Piece',
        'items': [
          {
            'promotion_id': 'SKU_1',
            'promotion_name': 'Implementacao ArrayItems1-selectPromotion',
          }
        ],
        'promotions': [
          {
            'item_id': 'SKU_1-itemID',
            'item_name':
                'Implementacao ArrayPromotions1-selectPromotion-itemID',
            'id': 'SKU_1-id',
            'name': 'Implementacao ArrayPromotions1-selectPromotion-id',
          }
        ],
      },
    );
  }

  Future<void> _testTEste() async {
    await widget.analytics.logEvent(
      name: 'view_promotion',
      parameters: {
        //'item_list_name': 'Produtos GeekNerd',
        //'item_list_id': 'PG1404',
        'creative_name': 'nomezinho',
        'creative_slot': 'slot-01',
        'promotion_id': 'SKU_12345',
        'promotion_name': 'Camisa One Piece',
        'items': [
          {
            'promotion_id': 'SKU_12345',
            'item_id': 'SKU_12345',
            'promotion_name': 'Camisa One Piece',
          },
          {
            'promotion_id': 'SKU_54321',
            'promotion_name': 'Chinelo ShigenkiNoKyojin',
          },
        ],
      },
    );
  }

  Future<void> _addToCart() async {
    await widget.analytics.logAddToCart(
      itemName: 'jegging',
      itemId: 'SKU_12345',
      price: 9.99,
      itemCategory: 'calça',
      quantity: 2,
    );
    setMessage('Sent AddToCart');
  }

  Future<void> _enviaUA() async {
    await widget.analytics.logEvent(
      name: 'funciona_cart',
      parameters: {
        'screen_name': 'teste sucesso UA',
      },
    );
  }









  */