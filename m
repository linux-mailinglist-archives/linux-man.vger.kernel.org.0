Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE4A025192B
	for <lists+linux-man@lfdr.de>; Tue, 25 Aug 2020 15:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726713AbgHYNFs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Aug 2020 09:05:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725792AbgHYNFq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Aug 2020 09:05:46 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80A86C061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 06:05:45 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id f7so12689057wrw.1
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 06:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8LZU9S8whNlLHzREDbwIx+/olyBFumM1HFW6nzX1bF8=;
        b=vBP9jC6bspy57kqjjXqZ7/xb8c40egJxC0HhSAOEiXG+KzSXIVzqCRPFEoXI7p2BL9
         S+oAWTgDVeT8t6pt+wSpT2g4XKPdxqLbWVQm32LeqIxsSKlakWgLVfCEMAf8ZXzmtsP8
         /tcF/0vhsugDcBL1ANPHpheG0Of3ctmauA3B1yAlBPVP9ixAfxxDOpFIZ/kKbGeDaCHo
         EVz5RwM1J8ZscyM9BlT8JsGuJcnHI1lcL368QSPbLW1+xPGdvtSpr+q5VO78SC3MjZoW
         2L0beSaY6o+LqCNVNVQoKMRMqdOhIIYUcdVUH4aW0xF78IPnQ/5w5YrzZkG5deKez4xe
         7ymg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8LZU9S8whNlLHzREDbwIx+/olyBFumM1HFW6nzX1bF8=;
        b=O7PbVgU4fJ27lfaBGitVK6bm95dinkXotUhaz2FoUdKPVBpWhFIFl/Irnd4wXfinf3
         05YYdJWgqprmVMjwTgLPYA7/VjZm2w+iOC8t/qUYteNNwzfx9WBd4DyYIb0+Qbqd0o/J
         +X5Ps1Og3PnFVfXr6lDrsb55djLgu+VkjsyJpGtf3DEIbL24+GR6bCSdiC7DEW7PS1tN
         VqgdP5wzyeYhXbrCmE120j+nu+DSYfj/ydyXQHBrMotmKYlqmxslVWiPsE6Bmba0u580
         bv84aStJnc/pUK+CCEfP7ruFWUxdqwPHmjCW95+YwTXfeFyM+lQIVA/Cn3wF+spPcn+l
         xEtw==
X-Gm-Message-State: AOAM532iWBHplWw/oIWqdHltQ9R4E54du2bkYOYJZ9kTf9K7WusM6zTP
        jztxF/BbBsRsxrhTgniRiKQ=
X-Google-Smtp-Source: ABdhPJzrH9M0iYnKfq2UktUmtPljTgufW7UVa/UqvCLVrjFa4V8oT4m0/6G997qKiKPolnxjknQ8jA==
X-Received: by 2002:adf:c64d:: with SMTP id u13mr11071290wrg.114.1598360743943;
        Tue, 25 Aug 2020 06:05:43 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id t9sm6195843wmt.15.2020.08.25.06.05.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 06:05:43 -0700 (PDT)
Subject: [PATCH] cmsg.3, getaddrinfo_a.3 getgrouplist.3: Use sizeof,
 consistently
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
Date:   Tue, 25 Aug 2020 15:05:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 8/25/20 2:35 PM, Michael Kerrisk (man-pages) wrote:
> Patch applied, but I had to fix up the title line, which got taken
> from the mail subject line. Probably best to send subsequent patches
> as new mails, rather than as replies to this thread.

This time I replied to the thread (so that the conversation can be
followed in the archive), but changed the subject.  I hope that works.

(I sent this email only to you by accident; I'm sending it again with
the CCs).

Patch (3) as numbered in the previous replies:

--------------------------------------------------------------------
From 1cb973629d94a048c5dcbe13fef76173f99dc3de Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Tue, 25 Aug 2020 14:52:03 +0200
Subject: [PATCH] cmsg.3, getaddrinfo_a.3 getgrouplist.3: Use sizeof
 consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- When the result of ``sizeof`` is multiplied (or otherwise modified),
  write ``sizeof`` in the first place.

Rationale:

``(sizeof(x) * INT_MAX * 2)`` doesn't overflow.

``(INT_MAX * 2 * sizeof(x))`` overflows, giving incorrect
results.

As a side effect, the parentheses of ``sizeof`` are not next to
the parentheses of the whole expression, and it is visually
easier to read.

Detailed rationale:

In C, successive multiplications are evaluated left to right (*), and
therefore here is what happens (assuming x86_64):

``(sizeof(x) * INT_MAX * 2)``:

1) sizeof(x) * INT_MAX	(the type is the largest of both, which is
			 size_t (unsigned long; uint64_t)).
2) ANS * 2		(the type is again the largest: size_t)

``(INT_MAX * 2 * sizeof(x))``:

1) INT_MAX * 2		(the type is the largest of both, which is
			 int as both are int (int; int32_t), so the
			 result is already truncated as it doesn't fit
			 an int; at this point, the intermediate result
			 will be 2^32 - 2 (``INT_MAX - 1``) (if I did
			 the math right)).
2) ANS * 2		(the type is again the largest of both: size_t;
			 however, ANS was already incorrect, so the
			 result will be an incorrect size_t value)

(*):	https://en.cppreference.com/w/c/language/operator_precedence

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/cmsg.3          | 2 +-
 man3/getaddrinfo_a.3 | 2 +-
 man3/getgrouplist.3  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/man3/cmsg.3 b/man3/cmsg.3
index 2f9910093..99ee950f9 100644
--- a/man3/cmsg.3
+++ b/man3/cmsg.3
@@ -242,7 +242,7 @@ cmsg = CMSG_FIRSTHDR(&msg);
 cmsg\->cmsg_level = SOL_SOCKET;
 cmsg\->cmsg_type = SCM_RIGHTS;
 cmsg\->cmsg_len = CMSG_LEN(sizeof(int) * NUM_FD);
-memcpy(CMSG_DATA(cmsg), myfds, NUM_FD * sizeof(int));
+memcpy(CMSG_DATA(cmsg), myfds, sizeof(int) * NUM_FD);
 .EE
 .in
 .SH SEE ALSO
diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
index af8f88937..cd4cad0dc 100644
--- a/man3/getaddrinfo_a.3
+++ b/man3/getaddrinfo_a.3
@@ -473,7 +473,7 @@ add_requests(void)

     while ((host = strtok(NULL, " "))) {
         nreqs++;
-        reqs = realloc(reqs, nreqs * sizeof(reqs[0]));
+        reqs = realloc(reqs, sizeof(reqs[0]) * nreqs);

         reqs[nreqs \- 1] = calloc(1, sizeof(*reqs[0]));
         reqs[nreqs \- 1]\->ar_name = strdup(host);
diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
index aea52d999..372f2613f 100644
--- a/man3/getgrouplist.3
+++ b/man3/getgrouplist.3
@@ -164,7 +164,7 @@ main(int argc, char *argv[])

     ngroups = atoi(argv[2]);

-    groups = malloc(ngroups * sizeof(gid_t));
+    groups = malloc(sizeof(gid_t) * ngroups);
     if (groups == NULL) {
         perror("malloc");
         exit(EXIT_FAILURE);
-- 
2.28.0
