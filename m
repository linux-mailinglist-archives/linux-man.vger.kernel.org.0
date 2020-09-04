Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14A9E25DCD9
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:09:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730224AbgIDPJC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:09:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730202AbgIDPJC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:09:02 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A264C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:09:01 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c15so7049116wrs.11
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bIv287d6rPg0i6dS7G5dKw3xJbtK8mEiCtwydsXbhQ0=;
        b=rrhvYa/rSlhvMFEiKxUI42KNAtgSXNTF5/NZ9NTV09CTkwZ0erL8iUyUbdvUUkFdC2
         pW8auHgHm8tqSUBZLNilZA1sHpC29qQ5GhhzaTOcIzHK1FdxVH/4CIe6JBRzTqPPVaeS
         FOxeibthJTquCAlJpi04i2o0scdSgdA79oWBYv/lz5KBBjfdeBCpswG81k8T1gOn9U8Z
         +yUv3Y0XigQVdE+ZLhXO2Ny3kyCR3uPmoW37CaSzy3SLWiRdxgC4ZktEfE9wUGHt3JJo
         JzMxtyTH7VVoevmMgENaP7k14rqWXu2G19VgUlTycnAhkAqj9WGEG/Ld37LeIFKeXely
         JRYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bIv287d6rPg0i6dS7G5dKw3xJbtK8mEiCtwydsXbhQ0=;
        b=TYYmleje4b6Z9IKcWGzNsgsqXLmS4Wgm1n9noTSCfurXeDSwkxeL4VVdQ8x4aIXXq7
         NioiAw8TdBxg2Wotp9G23pqFkT112jxQUvv9FNQC83ZOl7aKS9VtJQO5wO7xNm3z400L
         HEyU9S6x8cbWEwSpplr5krYggwiPnJ6oIxtIdwzSZ+84OsNgfOiEOUFn9LbTv6lAEvPf
         6JIowOBqVwjKfSrXZhXVaO1yuJ9q5ooWN98qtRCE6aVXDAmparbm2c+1T9pLk2qPeKy5
         MxbLYl8rORwgNThcDvfQxqE33Wujncd+8JRl6pfkwnwBmV5t761XkzqAVbFnHv04GG1y
         Oivg==
X-Gm-Message-State: AOAM532xLhrTDYEshDAnsk2yjk3s4AcDPAOG62b5WXnROLq+T+LMFbEJ
        49ThlHAtQDHpBfs4ueEDhjA=
X-Google-Smtp-Source: ABdhPJzTm4H/7YBWjf1UnCMl01z2dU9MDzx6os39/LoASzBXj5L3hMo6CjC7Qb7G6tyX4XR/vNZ6PA==
X-Received: by 2002:adf:e8c3:: with SMTP id k3mr8186705wrn.228.1599232140190;
        Fri, 04 Sep 2020 08:09:00 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id a127sm11940634wmh.34.2020.09.04.08.08.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:08:59 -0700 (PDT)
Subject: [PATCH (2) 34/34] unix.7: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
Message-ID: <70efd632-15b4-0d18-8c05-7a4ea7fe2353@gmail.com>
Date:   Fri, 4 Sep 2020 17:08:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 63fa45f7c45c49df2eeab0735342de9304507e46 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 22:24:12 +0200
Subject: [PATCH 34/34] unix.7: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/unix.7 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man7/unix.7 b/man7/unix.7
index 86a35be7b..30b0e754d 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -948,7 +948,7 @@ main(int argc, char *argv[])
      * the structure.
      */

-    memset(&name, 0, sizeof(struct sockaddr_un));
+    memset(&name, 0, sizeof(name));

     /* Bind socket to socket name. */

@@ -956,7 +956,7 @@ main(int argc, char *argv[])
     strncpy(name.sun_path, SOCKET_NAME, sizeof(name.sun_path) \- 1);

     ret = bind(connection_socket, (const struct sockaddr *) &name,
-               sizeof(struct sockaddr_un));
+               sizeof(name));
     if (ret == \-1) {
         perror("bind");
         exit(EXIT_FAILURE);
@@ -1082,7 +1082,7 @@ main(int argc, char *argv[])
      * the structure.
      */

-    memset(&addr, 0, sizeof(struct sockaddr_un));
+    memset(&addr, 0, sizeof(addr));

     /* Connect socket to socket address */

@@ -1090,7 +1090,7 @@ main(int argc, char *argv[])
     strncpy(addr.sun_path, SOCKET_NAME, sizeof(addr.sun_path) \- 1);

     ret = connect(data_socket, (const struct sockaddr *) &addr,
-                   sizeof(struct sockaddr_un));
+                   sizeof(addr));
     if (ret == \-1) {
         fprintf(stderr, "The server is down.\en");
         exit(EXIT_FAILURE);
-- 
2.28.0
