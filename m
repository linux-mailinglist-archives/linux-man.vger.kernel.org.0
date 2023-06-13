Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AAE672E56D
	for <lists+linux-man@lfdr.de>; Tue, 13 Jun 2023 16:16:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241030AbjFMOLC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Jun 2023 10:11:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243084AbjFMOKR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Jun 2023 10:10:17 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70B8F1FE7
        for <linux-man@vger.kernel.org>; Tue, 13 Jun 2023 07:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1686665311;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=VYE9inGon+mJLmpEeQhC1zu8phLWShbiXOVKSwZLaZk=;
        b=NxIHTMF/uJ/tBheC8lAZU9OqwEFeStwOC1e4w1YGPJESA0ugihDukEKi19bWB79EU2NN0L
        efXX0UAy9iaxRWuoZKtSVHVhDcziVqmcGr4NX8YeTAXyXVzKrWcYAA//YY54CeJditZFYo
        tmSu5ElrMywaW/xVA4PEIGv+ZoR5luc=
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com
 [209.85.161.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-3-ELKWK9JCN7qLppwKXNohjg-1; Tue, 13 Jun 2023 10:08:17 -0400
X-MC-Unique: ELKWK9JCN7qLppwKXNohjg-1
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-558ae609dedso5090121eaf.3
        for <linux-man@vger.kernel.org>; Tue, 13 Jun 2023 07:08:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686665284; x=1689257284;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VYE9inGon+mJLmpEeQhC1zu8phLWShbiXOVKSwZLaZk=;
        b=YX9wPaj8ehQmfDycvYhaf/+K8LjcFych71yw+VXZr/aZr8fcRcyj04VsiiBlOgnZ5n
         YRb6mlGbgIxap/Hp1OrQnUdu/TfiprAggyFJeQznwciVVq/04w7c3GfryMKl50gkRUl2
         4kIaYpHZF3IR7+VKBsNCUOpRSoPklwuCv4fjLiln6DVpPTYP1YB6VHCpr3UEnVMUf4VQ
         9o23OEP56EvqQgneF7kzfvLtJ/u/pIm2T3Vv8Ka8VoYaRgErZ/zuC1t6KmSx54BUG2Q4
         uN5JJX6eKVBMNes/R5eT6RrbkEX1+lDEpzOurtO/0xYCn3ZJZip1IS4PNUMaQJX8hT6b
         9D7A==
X-Gm-Message-State: AC+VfDy3BmnFlN9ke07TZul7zp1pRrkj209ie0+67hgK9OffdwhEPSii
        aIo6L1KLnBGjEDbWNeo4WuOdLQRX1r8gEJ4lD1HNZxm8vUGCOhDOGvcNy728Wpfp/uAm8BoWsVD
        SMHTlNPfffkdFh2e4AgVaUJBQxQMXd6pIsrznAkjipk0K
X-Received: by 2002:a05:6358:1a9c:b0:12b:c8e8:3648 with SMTP id gm28-20020a0563581a9c00b0012bc8e83648mr5452988rwb.22.1686665284488;
        Tue, 13 Jun 2023 07:08:04 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4xucoFxcuJGVVkiTGLR3P5M68NeU/GIM61gjgFG/0fEq80l1VgPjSXbxWgPYwhaIWAH7Q7PH2fkjAQvbBcFfI=
X-Received: by 2002:a05:6358:1a9c:b0:12b:c8e8:3648 with SMTP id
 gm28-20020a0563581a9c00b0012bc8e83648mr5452970rwb.22.1686665284202; Tue, 13
 Jun 2023 07:08:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
 <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com> <CAHRwYXsPXtcT-QdO7u2kGhy4Uxgs8o+H_20sV8L2ZZURfkm8cQ@mail.gmail.com>
 <7ddd8165-5ae5-f242-9294-7ae7a7059303@kernel.org> <CAHRwYXvVPRgKhktm7528zwTcfJiviW7Ef9oXqHGLrkoWSQvRKw@mail.gmail.com>
In-Reply-To: <CAHRwYXvVPRgKhktm7528zwTcfJiviW7Ef9oXqHGLrkoWSQvRKw@mail.gmail.com>
From:   Yedidyah Bar David <didi@redhat.com>
Date:   Tue, 13 Jun 2023 17:07:51 +0300
Message-ID: <CAHRwYXu4KT=4PLkHj4yzSSBHjJcju5AoY4GPbXSZvW-DQkoMNQ@mail.gmail.com>
Subject: Re: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Any update on this? Thanks!

Best regards,
-- 
Didi

