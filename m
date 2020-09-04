Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA36925DCB4
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730137AbgIDPDU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:03:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729942AbgIDPDR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:03:17 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E834DC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:03:16 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id e16so7090222wrm.2
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=S0mODD+4d9XY6yaUpiHRLVfcO4d7MJfBpnjwTXYMzjM=;
        b=espPxynNbkSRdnhXX5C+4F8zmTQT/N8nE2eD3iNwcIgVsPqzd8ilrBjgQWOxrTz2EC
         mFLOX6fx8DkFvw7I7lj4MuGkcMmXX+rJ4uKHRqr3c2eyYwwlAqVy4F0ZITBL5a4SRvW1
         aGulz2n2Wx6/EipR6uHz161K+lAqsw3jPrgmb3fNKTg4oj2fcd6qwztmt+5gFjZ1Y5pV
         PCrJ1uu9/vF0rt/mLlkBxNzRHUx4uj/mD8T6ehinSlxNxn8TUQBZS+uMj9o871RYv5z7
         2SS6B5jz1OawE9ywwg0oGzSP8NE/ss1yW1ezKDX9WnocANWRrGtCktSIvj0xy8pl3uf3
         mzVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=S0mODD+4d9XY6yaUpiHRLVfcO4d7MJfBpnjwTXYMzjM=;
        b=FFyMOwFTmP4LrwYU6D2HyK68uVysXU8Ylp9TTFXSyhArEx/1/5N7SHz5USW9bedBqO
         s4d2yefeQxdYodMqlyvd0h7cAhek0TWnDSeQFKPj9PfDVR53WtuSc5P1XMUZXc8day21
         CkTqKVmmtG6iP9wp0X3UCtw4zvt2EB38DrQypjVo28Q/BHxm6NYlqj9Q6F3iQ3FbioD8
         wNEipHe83ms+ttm2r4Q0v9E8ED08AUP0YTQ1lHVVuNdEQszvv/+BJGUGmbqJQIjnpw+R
         /HqvvJzngAUN1sgFxt8kHyOFNb8a8oVGUKxO13NWJdTRKSpZgToOGs+NM00NNoBH7NAW
         rhLA==
X-Gm-Message-State: AOAM531YmH8KQZeC9QvfYY68d1+VHXk4C8Qm1jEmeDKF2eo05UYUn8XV
        FaxUUudyDoEOZoY2dgwloo4=
X-Google-Smtp-Source: ABdhPJwtP6u6Ly6JlkFhNh7zKs8hUCKjX9POTejdYujVH9C8f6mGP+pUjHo0id+HoufuEz07FasXyQ==
X-Received: by 2002:a5d:6886:: with SMTP id h6mr8316048wru.374.1599231795402;
        Fri, 04 Sep 2020 08:03:15 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id 188sm28426547wmz.2.2020.09.04.08.03.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:03:14 -0700 (PDT)
Subject: [PATCH (2) 29/34] tsearch.3: Use sizeof consistently
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
Message-ID: <81f3377e-e758-12a1-8ad1-bc1988fa563f@gmail.com>
Date:   Fri, 4 Sep 2020 17:03:13 +0200
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

From ff3fe9cdfd280fce97e9289e9a91fb6cc2c1c368 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:56:52 +0200
Subject: [PATCH 29/34] tsearch.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/tsearch.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/tsearch.3 b/man3/tsearch.3
index 452395d6b..f0ff80e8c 100644
--- a/man3/tsearch.3
+++ b/man3/tsearch.3
@@ -327,7 +327,7 @@ main(void)

     srand(time(NULL));
     for (i = 0; i < 12; i++) {
-        ptr = xmalloc(sizeof(int));
+        ptr = xmalloc(sizeof(*ptr));
         *ptr = rand() & 0xff;
         val = tsearch((void *) ptr, &root, compare);
         if (val == NULL)
-- 
2.28.0
