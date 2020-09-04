Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42C0325DC25
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:44:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730395AbgIDOoJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:44:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730388AbgIDOoH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:44:07 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D553C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:44:07 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id c15so6968761wrs.11
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Upid12fwjcOOetzf2pGdNgrRc/MBd8M3ub6MWVcqTVQ=;
        b=RNvg5xzkARXe6fKspqKbOsoj02ZEeS3hRkNWKYQAwzXU7RPQbzmCpkaQWusexRbY99
         ANGCxv4LoYGtj77AflbdCXXqGvVAnUqtqeqgpJLywuy7N5GGNGjUfJX3BtoiLqNBoGLw
         gkd/QWD61PWmYwtzzqYFFUXMOB8yr0EF7ezsE9UjRQLj0JwcfQO5NxGdhGeaOIVe00u6
         E4iy6XwEIvstywXc/F/5eMUnWN6KyPjUigS/IDaEQOs04JyLJJEsAJIuyfuCL+d+FIoP
         5mlwe53wxmzD3td3C7sXSS6t8Cc32GLwShKVWrD54SMJT+oWvJf8xJpMx90KVfJMCaRg
         3nsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Upid12fwjcOOetzf2pGdNgrRc/MBd8M3ub6MWVcqTVQ=;
        b=R5rYQOAZygVoARW8XIJTY5O1SXNjNRNFD4R5XAZh1mQckfTx2QUmbJQC46XhQsrDPZ
         /PtJJYqG/gW8iSgjS8+SxlNKYfvVxsKkPUwHfWi6a5vM7opPMN1PbP57bTyiMs4xhaud
         KNWLc4N9C/gx/BrmB+wq3FLBmoVCPPXNE9JPzYH4OcRWnGQ1K3IOfNYxmjD1pMQJNmFa
         XsD6VuzLwK7X+oy30a+QdCN/eSAGHMyRpkJlvzhUcIcI9X47XayDKdzZNXa/KYGljDm1
         nGQmmcRHZX5N5qsrNqzb+Yu0m55iB9ydp9UJmBcUXj/wOhnn2CfgP5NVHxct6FIfXQKM
         DxFQ==
X-Gm-Message-State: AOAM531OlrvDqBEjOeul0ZE4czQ/BFkZ7PhqYC2IGo0jpf3DOEQ6xXE4
        N62AaC0siW8ICyabUybXRWh5+nINiew=
X-Google-Smtp-Source: ABdhPJxZn1jI1klCpiQP3xWz29k3ezzII1Zj24kJuD4KYeUcxPwrxhJlfc4Gbk3cEfYi8QEwIZZDqw==
X-Received: by 2002:adf:f50a:: with SMTP id q10mr7895685wro.319.1599230646034;
        Fri, 04 Sep 2020 07:44:06 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id c206sm11926549wmf.47.2020.09.04.07.44.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:44:05 -0700 (PDT)
Subject: Re: [PATCH (2) 20/34] mbsinit.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
Message-ID: <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
Date:   Fri, 4 Sep 2020 16:44:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 77587b9c0b58cde232ea3bfaeef5f50607d83b5e Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:50:10 +0200
Subject: [PATCH 20/34] mbsinit.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/mbsinit.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/mbsinit.3 b/man3/mbsinit.3
index aeaa6ce88..74fe48f86 100644
--- a/man3/mbsinit.3
+++ b/man3/mbsinit.3
@@ -59,7 +59,7 @@ in initial state is to set it to zero:
 .in +4n
 .EX
 mbstate_t state;
-memset(&state, 0, sizeof(mbstate_t));
+memset(&state, 0, sizeof(state));
 .EE
 .in
 .PP
-- 
2.28.0
