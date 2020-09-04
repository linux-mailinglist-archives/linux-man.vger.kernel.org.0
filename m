Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6E1F25DBE5
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:37:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730431AbgIDOh2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:37:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730416AbgIDOhO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:37:14 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70C44C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:37:14 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id z9so6326374wmk.1
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gzfaczLHbARXUW6IgfldzodFWFs9ghvW+ZDUQEnVYaQ=;
        b=tbq6b64Y2yHMqMypuTavhetcLs+Jf3nfvKpc/DcJSwbucr7ZbrVJtTtPvN9jbL3/5H
         91eKBqA3zvSbyRS8+oatQRTM2/zShn+whHZ/xKNISkDPTmti0oYZxqixWPQCavDwfRmX
         MEBtfQyMQOL01JAZAhZfWBu+VOWwCRcpxUx0+2tpto+7nJpMHeT1y46+/kMZN3mQA9SB
         MkodWGNefgI+vOlyWpGWSRXXZiLrkEyv7H2iBjMMNpP6lpPe47v/3KvAgibK4bw9394P
         XEPXcefK4q06auLv5DsrhpAWYw2IaSfEJ9Fqq2h6muUKGexdjgyYVMl6QJZMiJIxa5zI
         23LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gzfaczLHbARXUW6IgfldzodFWFs9ghvW+ZDUQEnVYaQ=;
        b=kOm3TSAAhHJkrk8eYnfmKRuPSBr02Of+gDekaiqpisLICijRJkOIrjZGJLtO4Ar1OG
         bginiqIyrI1eThgToOA6Q+GHVIvnlhn6QFI753hKTeyY78Tu/a+BsQtGsr0AJErMbqZO
         Z7wjr9Qp0+JqJFe8r6bNVU/MpQiJFHWhc0OTpsZ2UnY+zVv0P8TZ0Pyd+Nyhe5kTJXFL
         tM242Vtqun8LgFB712ufLJIZc2bVTu9RvfCMsD5VckcVUU8Rh3e2TpjErJpvgOyRuZai
         cwPeZJrTtcBpWw5cPceB1GqGGwU6EbuzgBPsj06QjyK1BNZNxZj0HHj3cKUwdcvuiwg1
         K1EQ==
X-Gm-Message-State: AOAM532CCI5SrtqWfLhRlky1g0Xn5xwQkXUw6xOh16B5tsGKhKPtcSD2
        iKWUVGndxP5PUm06CJ78O9o=
X-Google-Smtp-Source: ABdhPJwGI5yL98e7z/JKH6jlM5mRzBzeU5mnqS9U8wCsPPTwd55qzASYfm4RGz6afvtVEpgT8C28JQ==
X-Received: by 2002:a1c:1d17:: with SMTP id d23mr8182814wmd.187.1599230232933;
        Fri, 04 Sep 2020 07:37:12 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id f14sm12408361wrv.72.2020.09.04.07.37.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:37:12 -0700 (PDT)
Subject: [PATCH (2) 18/34] insque.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
Message-ID: <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
Date:   Fri, 4 Sep 2020 16:37:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From b43c812d1e129a8d2b34df7624a78baa3bf1273e Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:47:45 +0200
Subject: [PATCH 18/34] insque.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/insque.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/insque.3 b/man3/insque.3
index a9fc28550..005ad8cc1 100644
--- a/man3/insque.3
+++ b/man3/insque.3
@@ -182,7 +182,7 @@ new_element(void)
 {
     struct element *e;

-    e = malloc(sizeof(struct element));
+    e = malloc(sizeof(*e));
     if (e == NULL) {
         fprintf(stderr, "malloc() failed\en");
         exit(EXIT_FAILURE);
-- 
2.28.0
