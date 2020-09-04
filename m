Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5EEC25D5DA
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 12:19:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728658AbgIDKTX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 06:19:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730030AbgIDKTU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 06:19:20 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E770C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 03:19:20 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z1so6220475wrt.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 03:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ihqc53EPpLRNnUAxRUsUgZKlSs4MrVzSbO5KTmWDP4o=;
        b=nBj/pBXYuWNhWITLPu7WTyoK0q9Q4tVz82nRiBsrTEDloCpX4tcrN2xgsIf69H+LIy
         vsT0NLrZnqyheuLbTcq/aUhz+MpVOA94AOKza0kic1q0H1N86niZVjk6B2G32GX0Nm/G
         mBEm7xaWLNCJAh3v3SF9r0xZSu8JV2sQ6Dec8CRwfTy8TyTsiq2LC2jPXMbHOhYuyVd/
         rJYFN1eGFW45vPdbhI6Va+YCkBqj2tRjSzL0CGLU6la1GVg1BzXcTNWz5o17wGF8U8cY
         18wN4PNcuFDBvUDBXgZub8JIf5Dfos4CiHdOacdMTpRT3oVLKG0zvyohToPB4ZuOx8n+
         ck8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ihqc53EPpLRNnUAxRUsUgZKlSs4MrVzSbO5KTmWDP4o=;
        b=OYf6OhzepL2SOAkDCxmUql3wM4aB7oYoUOZO8IWyPqoLkr7cUK5lEqq7nd8Go3c8NX
         7pr7BlWW92pSRCeX5mvvPE7md1F946c+unSw6ykAhKMg3bz4hsY6o1pmT3YA7uLkMurK
         S8ienOTgBSnH0yUZympbj2d1my9bv7yA1Vi6S+CI32w3fC0QY08HxAyiP92dbQ7NnRt1
         AFb7WI/tg1SbvLdfrT6pqd39dmLuuDXyCYeG+xJu4GVN45Z8s8mIVJYM1rpB+4nEi6VP
         4IQZM7cX54qhx4B1gHxZKLb0Vl3Et5ROE+XuCJHbuDq3p0z2EyJiq6H1phaoKRs7c/rf
         31dg==
X-Gm-Message-State: AOAM5307OArdem4sEmvbnaDNh6PUITAY6kkSeLRL5vDgtdDMJ8uVQuh3
        SL7VbgDA/d89kExHyUvSJ0H9eznkOdlyxA==
X-Google-Smtp-Source: ABdhPJy3sBFt4BRIxbD3rFjZF5oTohGSmJCIWesYPTsLFkpg03GjtFCHhG8nIfBPptR4byCIPVQNPA==
X-Received: by 2002:a5d:4d51:: with SMTP id a17mr6829281wru.248.1599214758947;
        Fri, 04 Sep 2020 03:19:18 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id c6sm10303064wrr.15.2020.09.04.03.19.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 03:19:18 -0700 (PDT)
Subject: [PATCH (2) 02/34] bind.2: Use sizeof consistently
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
Date:   Fri, 4 Sep 2020 12:19:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

On 9/4/20 10:20 AM, Michael Kerrisk (man-pages) wrote:
> I must admit that I don't care too much either way on this.
> That is to say, I'm not sure one way is any clearer than
> the other. However, I have applied the patch.

There are places where I wouldn't say there are any readability
benefits.  However, there are functions such as malloc() or memset(),
where using the type could lead to future bugs, so IMHO it's better to
just be consistent and use always the name, unless there are clear
readability problems (or other problems).

In the end, someone thought it to be important enough to write it in the
kernel coding style.

I don't expect all of these patches to be applied, as I had doubts when
writing some of them, but we can discuss those where it is better to
keep the type.

>
> In passing, I note that there is a clarity issue that I do
> find more significant though: the repeated calculations in
> the malloc() and printf() calls. So I changed that:
>
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=15fc4aab1f22c2d4f62ab7f74bbb844942708633

:)

Cheers,
Alex

------------------------------------------------------------------------
From 54016160b603454fbe4f38d6a81886a03fe2ffdf Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:24:43 +0200
Subject: [PATCH 02/34] bind.2: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/bind.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/bind.2 b/man2/bind.2
index 72aac9555..74e34b6bd 100644
--- a/man2/bind.2
+++ b/man2/bind.2
@@ -293,14 +293,14 @@ main(int argc, char *argv[])
     if (sfd == \-1)
         handle_error("socket");

-    memset(&my_addr, 0, sizeof(struct sockaddr_un));
+    memset(&my_addr, 0, sizeof(my_addr));
                         /* Clear structure */
     my_addr.sun_family = AF_UNIX;
     strncpy(my_addr.sun_path, MY_SOCK_PATH,
             sizeof(my_addr.sun_path) \- 1);

     if (bind(sfd, (struct sockaddr *) &my_addr,
-            sizeof(struct sockaddr_un)) == \-1)
+            sizeof(my_addr)) == \-1)
         handle_error("bind");

     if (listen(sfd, LISTEN_BACKLOG) == \-1)
@@ -309,7 +309,7 @@ main(int argc, char *argv[])
     /* Now we can accept incoming connections one
        at a time using accept(2) */

-    peer_addr_size = sizeof(struct sockaddr_un);
+    peer_addr_size = sizeof(peer_addr);
     cfd = accept(sfd, (struct sockaddr *) &peer_addr,
                  &peer_addr_size);
     if (cfd == \-1)
-- 
2.28.0
