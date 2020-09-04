Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C59F25DC2A
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:45:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730220AbgIDOpS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:45:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730204AbgIDOpR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:45:17 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A33A6C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:45:15 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id q9so6322789wmj.2
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xrvH01lp+iZPLyarAY4ajefH9p2MRUo3XJS5sLI0bls=;
        b=DCxO+CGvHwVh+k7tRtn+AM7It0o3S56/tU18whAPuoPR/vwaPBrr4M9aqibU4PbLN+
         e9PbSGT58s1Z1NRbfMo/FFxF7+yonJZm20Q+F55NutlHufkyLaVpqWx0QqACpZIMrILE
         wQuLJH3H/Y0LZzBsjn1u74YBF9X277r400Itz3eGkB3qhtu1B1ms+hfuUis6uS+inQmO
         RT8M0D5cGKseR/v4q8HqDUIgBBLEPwZPFftWjL5oPussisN/49UsIsY5DfLwAjU1v7Bj
         AoDfLFLsqnUM5ILxVt+idx+RU54t/zk6p+CZD22bpXKp6NFU0dqbdW65DC4xYHYovMGI
         wh2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xrvH01lp+iZPLyarAY4ajefH9p2MRUo3XJS5sLI0bls=;
        b=sv78MWD4w7h/0RsO9dSM49j8RhF6/swCyfnaCGXAPkpYeONY4e9GGoGtX0Zze0GhI0
         hL+M2sX4xUnLUuqfFL6VvPZRbl12kKWARtL7AEU2lFKoZScoEDaakQwfOfLb2Vwzww9p
         xmHHPy0mwav3b/LSC23zXdzNgCzrr0DinoN9ZRdm6WNnWFBhHN1Op9cft/92WEiOQNLc
         EyOlAUOMRZ9rFttLtJP3m7GUjUgGMuPensCl6invu9ocfivbT1h68O4pE/wuUppxOV8c
         QBrJnmnzsAT+tMqi2uHBFCcOeSp+Ui6DvdumYXl6v7FRBboaXMG8LKp6H8htCGhbF2Mu
         QWqg==
X-Gm-Message-State: AOAM530Uka4Sl49eK9KuRLNv61ZSddLPyCtNhLOiB9Rh7OLWX4XPSGnf
        H8ZiE776kmhotl+eOfnQ0kI=
X-Google-Smtp-Source: ABdhPJwQhioRf41DpLVUjbnzV4FjHDgL86PCjV9XriKlgnH91OCNKbR2ZTCiqUENMATdojFolIGKUw==
X-Received: by 2002:a1c:32c3:: with SMTP id y186mr7805514wmy.15.1599230711693;
        Fri, 04 Sep 2020 07:45:11 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id 32sm13727478wrh.18.2020.09.04.07.45.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:45:11 -0700 (PDT)
Subject: [PATCH (2) 21/34] mbstowcs.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
Message-ID: <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
Date:   Fri, 4 Sep 2020 16:45:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 1b70e7a1da093e4a8e3be79aaed623b21c10e763 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:51:07 +0200
Subject: [PATCH 21/34] mbstowcs.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/mbstowcs.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/mbstowcs.3 b/man3/mbstowcs.3
index cf650506e..2f9fbc17c 100644
--- a/man3/mbstowcs.3
+++ b/man3/mbstowcs.3
@@ -186,7 +186,7 @@ main(int argc, char *argv[])
     /* Allocate wide character string of the desired size.  Add 1
        to allow for terminating null wide character (L\(aq\e0\(aq). */

-    wcs = calloc(mbslen + 1, sizeof(wchar_t));
+    wcs = calloc(mbslen + 1, sizeof(*wcs));
     if (wcs == NULL) {
         perror("calloc");
         exit(EXIT_FAILURE);
-- 
2.28.0
