Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E235325DBDC
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:35:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730801AbgIDOe7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:34:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730498AbgIDOev (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:34:51 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8DDAC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:34:49 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id c18so6955046wrm.9
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Q77zCt4T1NzAkoqG6BveVP+4BEXkEaYckjZgJTDBXdg=;
        b=m0F+w72d0ieUQvvXl3G8P64zp+ZpOayPYlcR5PESigywG/mXY70JNcCJw8YF0Vxdzf
         3XNtXrgFMw5HJYY4g35iX5Jno1du0EZn2tAdOUQ//NDLA1MqKSWJTVyoTJykln2V0/8F
         sHunEj+hXM2dLuhmzQO3/4JLGFDfUZ/e5MkutT75EcSkpFm28gKZokrruc7qEUGGENWh
         QyDrd29gaMckHHVhcvrgJIjfzJjr5u2vw+PpDP5n+O7mY+5aSja5EMT4HF+sD+2q5tk8
         nzp7VzyvClQDw9x4AtSRjjfY16tIDB8wj9tLFHoq/d3AOnFzzNJ2p4mOFa4EM8BDF9Uv
         m7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Q77zCt4T1NzAkoqG6BveVP+4BEXkEaYckjZgJTDBXdg=;
        b=OsfJXCqvTcP2sybCRDx+UhcHdMw/sJPjuvTxa+KkmZi9hDd+Mz2h2IYXGqWb11aUKm
         Ds4haUVlw5qvsdL8iBPt7MTKwrCgDu+AyDqV8v2gMTYy479nnQNcNe5dPOVKtqiR2X4F
         +SVRqJFdAVP5z3ELeuNz1HEZLlbpOhdrp166cXxBE4kw8xT5cKoFDeZ5hYgDcr5EVVQS
         Z3x3MpflR4y8ZPyD4No+ohHbviNjbQ5b0m9lBQlKw6TsSOC8gB9Ruz8Hrx1N7vMewG/2
         E+qnSte/e3bvyIPT/fZvXJaG993Ng1NqVHJWv9AoJxFZ84AzpJbRrJygc4fvPKfYgdrW
         b6mQ==
X-Gm-Message-State: AOAM530Q0f7oZJGZ+stZCXpunMMf0wj1fubEfhyvwqF61HHEckfteYFv
        XSmc4ImVsjdhRkHVTXpDZsP8nUVDBDo=
X-Google-Smtp-Source: ABdhPJx1AcOEk8Ax9Ot+nNTt/j5ZK58Nh5hgv7p+3rCrtVrOaLfgDP35HBIWTDqlzYbpzHQaE5NB2g==
X-Received: by 2002:a5d:6343:: with SMTP id b3mr8452503wrw.179.1599230088438;
        Fri, 04 Sep 2020 07:34:48 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id p9sm11382542wrt.21.2020.09.04.07.34.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:34:47 -0700 (PDT)
Subject: [PATCH (2) 17/34] getgrouplist.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
Message-ID: <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
Date:   Fri, 4 Sep 2020 16:34:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 7ca60fc88b831818c1f1722919af220a646761ab Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:47:15 +0200
Subject: [PATCH 17/34] getgrouplist.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/getgrouplist.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
index 372f2613f..ff8d89e3f 100644
--- a/man3/getgrouplist.3
+++ b/man3/getgrouplist.3
@@ -164,7 +164,7 @@ main(int argc, char *argv[])

     ngroups = atoi(argv[2]);

-    groups = malloc(sizeof(gid_t) * ngroups);
+    groups = malloc(sizeof(*groups) * ngroups);
     if (groups == NULL) {
         perror("malloc");
         exit(EXIT_FAILURE);
-- 
2.28.0
