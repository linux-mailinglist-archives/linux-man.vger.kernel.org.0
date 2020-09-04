Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E885A25DCBC
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:04:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730248AbgIDPEM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:04:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729942AbgIDPEL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:04:11 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBBE4C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:04:10 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id g4so7081959wrs.5
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UsroY9yvZ3Q7XhJ7YgGF5PQPlyOrvc5t4k6usFw5KxY=;
        b=umMPfpHL4goOb19NQzF2Nj48h1xyJlpZjTWJGa47RWKjYLQwslSqnJyD/1DK2e5klr
         D8HBzjAPEPVH/NqoW1f7OdNdpvCKjrCxHKNiXUyWlfUckrt+5lYzR0x7iEYS3L8DvzAa
         cYwGS0Jtpo4dBK4ctjp6aNwWFue7+8GVWMilFbSPBTroaICWSlCDOBKgoICnhjLgH849
         ibqzkhVVZI8QQgxePLdIIIo7zackDFgaW+K/Rs/x0gn2bhAXqEmY3nouhxSb8Lr1wZni
         8uCipHKB+idJ8DClzEIcZ8kUHgFYX8LB5RQN9x1pCexDrmNcJTswH3l1d2vt3X9gaMT9
         0zlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UsroY9yvZ3Q7XhJ7YgGF5PQPlyOrvc5t4k6usFw5KxY=;
        b=jb52qJT1H/65xRYPdj/AmyzhZVD+2EvJaX2yYNausDLJAOCEjODE/OpkC99Dl6wQxQ
         mnop3wSgfHcdhksMGBrOnNwW19sRf7Kmm9n0oFnejRtbn+oLRqfz7tI5+mnwq//+NjWA
         XkkrA6tnbHLyz9ybh2js+ZACc0x2mNAgrBGX7dFHUHEyCIe2uQnU9eqCT/K4h2lUasZ0
         SLF6o0iHP2w2XgoZIuLlhb5BHdbVM3crXTjlaJ/1bdRtydZw2ERIICC4mzbUSkGoJJ5a
         Pl6Hi+8ryv2sskB0vYcKpIyD0GruyMbQAWuoJfefzUipSEOCGpZOJQZ1q+V8zY4VgJDI
         eaBA==
X-Gm-Message-State: AOAM530Z+ryL6cYpWjz6o2AwkJS88ka2pApmMFZxk09JcwQEzdKBaGKD
        wUpgTvjn9d/xuv+BgO0x+DY=
X-Google-Smtp-Source: ABdhPJyBf5Dk+aoz5HgvZO+ZGwyjIuHV+787sTCIQiURZ7kawzUn4oagfQSKXBcfLvT+pAat6fGozw==
X-Received: by 2002:a5d:4bcf:: with SMTP id l15mr8004129wrt.384.1599231849592;
        Fri, 04 Sep 2020 08:04:09 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id v204sm11987866wmg.20.2020.09.04.08.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:04:09 -0700 (PDT)
Subject: [PATCH (2) 30/34] aio.7: Use sizeof consistently
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
Message-ID: <93a1103a-8964-d213-2892-5dc7fe8513f1@gmail.com>
Date:   Fri, 4 Sep 2020 17:04:08 +0200
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

From 33a09662331be9666c2f69dc60a792d9deee761e Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:57:28 +0200
Subject: [PATCH 30/34] aio.7: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/aio.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/aio.7 b/man7/aio.7
index dd05dce83..d3ab3f422 100644
--- a/man7/aio.7
+++ b/man7/aio.7
@@ -311,11 +311,11 @@ main(int argc, char *argv[])

     /* Allocate our arrays */

-    ioList = calloc(numReqs, sizeof(struct ioRequest));
+    ioList = calloc(numReqs, sizeof(*ioList));
     if (ioList == NULL)
         errExit("calloc");

-    aiocbList = calloc(numReqs, sizeof(struct aiocb));
+    aiocbList = calloc(numReqs, sizeof(*aiocbList));
     if (aiocbList == NULL)
         errExit("calloc");

-- 
2.28.0
