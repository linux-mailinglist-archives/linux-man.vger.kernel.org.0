Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0186E25DAA2
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 15:55:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730630AbgIDNzU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 09:55:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730586AbgIDNy0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 09:54:26 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4398C061245
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 06:54:23 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id a17so6826353wrn.6
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 06:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WwNYTggejNuyIEsoVbILmcVDcQF6/lx2M5FZ3cnG58U=;
        b=AVmAGjSJXnUXej2SNOn57YIEwNKADoSS9WhteKWiP/4sn07kXEJSvf+kJtlGedPzs0
         qYHghJ3JxB23O9yPH8RKFm0IvzTY/2JzlqdNXUz0MrPD7XUBlp/w+hUF0hhXkGVa/MD6
         DFec9vT2S8SKPDvI/Us91ZyEK2oy1qAbs9Rp/1rvE4RwqFY5ajSEZKGJFrSIu9yZNzxl
         s8NajWEzeFOWglTRz8DRaFIzU25lK8jgPCYHGsM+joV6mcXykozyJxrQZZlek9o9MnEO
         H3bzP/vXWQ/RLzXzqLrAiAraC1TjZDlAfpCp2OhwN1jA27bWSDYeBHX4BqxulWBgYKLv
         14tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WwNYTggejNuyIEsoVbILmcVDcQF6/lx2M5FZ3cnG58U=;
        b=JvPXEy5hRJjc3Ch+iFmBaJZQIyKZG3A/Djew8ftdvsS/Vt9j3B3tnCIiTt45SE9Lps
         l9cJRY21++ZBeRa2xKRk5qeySAMmeBr+8NevUbrIDzfkF3JQNCxQlxPR2icm8Atn7+jj
         mI0kx48Q7inXFgD7p9V1lrLhI28KlHPW0QeozSvi+zyyySgFF75Pt2NaPh/XFM2h2A0H
         GOg64/FaB5W/Yy5rBNqDOzE4Hpk2IxlNSOx2G5l/rE713ztRXfUDL3ltTdaZMPvZJDN7
         zkXTlckmTZwKGgLdgMV9JLXT++9teo5e70Hk2RLzkfePgEtWWAiTgbdvVZL/I4f1MCjy
         1dVw==
X-Gm-Message-State: AOAM531vIQuc+tZqbslyLsx9HZodXb06X0Sa+TIDgVUibz2pTxL2kzDX
        sq7+FJlE8SfRAgWuNxyCGDQ=
X-Google-Smtp-Source: ABdhPJxLych9XGSyJJ44u6X8DGAlwWZsToRmea7/S6spzVe6T2dWMmKBKdDAFeS0J5EHnwQ+4+osyw==
X-Received: by 2002:adf:ca06:: with SMTP id o6mr7511197wrh.181.1599227662566;
        Fri, 04 Sep 2020 06:54:22 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id z14sm10543806wrh.14.2020.09.04.06.54.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 06:54:22 -0700 (PDT)
Subject: [PATCH (2) 15/34] getaddrinfo.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
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
Message-ID: <84a80180-c828-e2e3-8f66-9948721bea4a@gmail.com>
Date:   Fri, 4 Sep 2020 15:54:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From eef612c1f5f039421bd0fa167e1972e98d934bce Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:46:06 +0200
Subject: [PATCH 15/34] getaddrinfo.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/getaddrinfo.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
index 8aa544789..158fd2e31 100644
--- a/man3/getaddrinfo.3
+++ b/man3/getaddrinfo.3
@@ -679,7 +679,7 @@ main(int argc, char *argv[])
         exit(EXIT_FAILURE);
     }

-    memset(&hints, 0, sizeof(struct addrinfo));
+    memset(&hints, 0, sizeof(hints));
     hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
     hints.ai_socktype = SOCK_DGRAM; /* Datagram socket */
     hints.ai_flags = AI_PASSIVE;    /* For wildcard IP address */
@@ -775,7 +775,7 @@ main(int argc, char *argv[])

     /* Obtain address(es) matching host/port */

-    memset(&hints, 0, sizeof(struct addrinfo));
+    memset(&hints, 0, sizeof(hints));
     hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
     hints.ai_socktype = SOCK_DGRAM; /* Datagram socket */
     hints.ai_flags = 0;
-- 
2.28.0
