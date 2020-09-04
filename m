Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2E8425DC7C
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:55:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730286AbgIDOzd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:55:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730276AbgIDOzc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:55:32 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E1FFC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:55:29 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id u18so6337410wmc.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WdmfajnJSuZPstPDYnnezPj20J7gJxJaOlp9GDERTxM=;
        b=RAQ4f+ENHetJnUJpKzrfmlJ/JlvaO0bNAQ1QbAAIWqXmbWddWdUXmSsYDbUzzuP97h
         qK5Dta6MPU48ubU63+6HdinxwqpaU0sH/618K8kWWfobHuWvDrPwiuBDbJaVfnxYeRPr
         gAJRWOx1uWJDzX4lkGtzbIDxE+nu43Wb1beoT2ApLSM9fF2yIlDUob6FAiDdjO1cnugk
         1l50kontjBDgnxrJym8ex7FVxKO8tXKeqg1VJxlKr9KimKrmmXP+5Vk/0wi8Io8uFagl
         zap/HymJCuDHRey1SvIe0swAle6cML7LxA6qTqyQY1ajdKJg6ssyxZLDg7LzU65bTbBU
         bbQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WdmfajnJSuZPstPDYnnezPj20J7gJxJaOlp9GDERTxM=;
        b=m2UvlI0VrdoCC4Qn23q9cagJBFeHbV7qqnVDg9RCXY1E1Yok5QYHkojylrZJJ7c3wD
         zcDtBJ744gaA03tbWvLMsYAPaf6Hx/1+ogO+wzKPcGiB8dQQEaUhDeQjEvXxLWuLziXE
         4ONhFcicwWVa8Q9bQxyOO6mjHyh3JfeNwQBeTmDf7xlWt10+QdXor3m9eaIBQZflBOkX
         P82hyTISULDCN6RJbxAUGMoG7qEbto2wo1X+lB5JKJJso5OAbLPntN7PnXe1wmtEXmBg
         O5aoabr1r2MfVfaY7qYswAqFOiMbWIj3QqFuAdbKKNNVGuYS8S4IqZqz6Aw9XERkXh7I
         E3JQ==
X-Gm-Message-State: AOAM530MN3Ln9sTky9aVij78Tjy0BRA3zZGx7jiAVd1sUaLb/OcGZX7h
        rKjFZAjVNbcU9ijCvBUJPvG5u2XHzKM=
X-Google-Smtp-Source: ABdhPJzgzVEKEMtsVmIw1Q7Goq0hmCPywGM7MhL9TfXCrYYkj/3TQ8T4WJ+LzfgZXMhlwrTJ/KXXQA==
X-Received: by 2002:a1c:964b:: with SMTP id y72mr8153398wmd.69.1599231328343;
        Fri, 04 Sep 2020 07:55:28 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id u6sm11104198wrn.95.2020.09.04.07.55.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:55:27 -0700 (PDT)
Subject: [PATCH (2) 27/34] shm_open.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
 <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
 <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
Message-ID: <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
Date:   Fri, 4 Sep 2020 16:55:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From d3f439e697c9a384cad55e84a584493088eb4291 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:55:48 +0200
Subject: [PATCH 27/34] shm_open.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/shm_open.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/shm_open.3 b/man3/shm_open.3
index bba4eb826..24cc6a403 100644
--- a/man3/shm_open.3
+++ b/man3/shm_open.3
@@ -382,7 +382,7 @@ main(int argc, char *argv[])

     /* Map the object into the caller\(aqs address space */

-    struct shmbuf *shmp = mmap(NULL, sizeof(struct shmbuf),
+    struct shmbuf *shmp = mmap(NULL, sizeof(*shmp),
                                PROT_READ | PROT_WRITE,
                                MAP_SHARED, fd, 0);
     if (shmp == MAP_FAILED)
@@ -471,7 +471,7 @@ main(int argc, char *argv[])
     if (fd == \-1)
         errExit("shm_open");

-    struct shmbuf *shmp = mmap(NULL, sizeof(struct shmbuf),
+    struct shmbuf *shmp = mmap(NULL, sizeof(*shmp),
                                PROT_READ | PROT_WRITE,
                                MAP_SHARED, fd, 0);
     if (shmp == MAP_FAILED)
-- 
2.28.0
