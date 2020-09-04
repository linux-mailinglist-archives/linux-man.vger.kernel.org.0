Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20C8425D6E1
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 12:55:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728636AbgIDKzV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 06:55:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726171AbgIDKzO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 06:55:14 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECCEDC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 03:55:13 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id c18so6259548wrm.9
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 03:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k7OlYnXCHzV1pS6PTQO+KzS5p5Tcr0/8MC72oAnxMy0=;
        b=gUZONancnjlyFV5mBzAxSTEXaO8+Htd4JKb4KZK7bIi4UIvAFFcRnjdRfL1asho1NE
         VoHT5H/+/zrMGTdVSniwVa9Ly1UIylou9VX2Oloo16SVL/PViueXFNl10+HxVBTO/Xi5
         NkMfNqmtf+zHy70oI6UPoPcDK9CafWybeyfBPx5n5XT0N8KOoBnCMd2gXCNT1nkoUprA
         ktQ2kMjK2z0Ou93gfAJyK7Up+ooR2EOqFAa8VZDai3gFz4Wl6p69aY5O8SHs2F8E3cbh
         5l16WdXXHQYkjpJYTAFHJ+bNpdOPX7HUSX1VOAEjhB9e6dJQIHZj3aRk5lt6JWNKZrDk
         ZwRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k7OlYnXCHzV1pS6PTQO+KzS5p5Tcr0/8MC72oAnxMy0=;
        b=p0H5UvHogh1d361B3f1lLiPUPKCSO+iK6xORmdKrfAxhQ7nZHA6VKxsOm1jvIM2Aai
         hZSOmb/DqgrOCGTFUtRqPcVgsm65spnqvcu1sTo+zBx+p0MzDuGkZ0pRJqIDuershsmi
         1hU0sej6iySlo7nBTNHL3wEbnXAOWb3nsQ4iy536a8FjEL6LFMftkPCC1mkzwpf2928b
         eYCpZXSnvwLGTERlYzBoJ3ogUgCWD+pG0DA0Xyi8Yn9Amc/kC9UsNyiHHfzd/C2e1rJ4
         nXEl2HWgwCLCwDIYr+Hb43gj0qDJqKUTvsejkxJY2xJ3FLbjOJEgflIRJxHC2s1fmDi5
         7hmg==
X-Gm-Message-State: AOAM530c0ET+BRSMKD0Ez2gjILf/3G+AAuioTSDGHibOfD4ToHaNCUdP
        eUGyy5YR4/dugACLxM07nUbm8kDhqECQYQ==
X-Google-Smtp-Source: ABdhPJzmVD+HXi/vTshNxTZ09O/UniHcw6AtGq7QcLGMAOu+YvQ2cSGi5YxncY09Y1q7SisMktKtfg==
X-Received: by 2002:adf:e4cf:: with SMTP id v15mr6945455wrm.174.1599216912373;
        Fri, 04 Sep 2020 03:55:12 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id c6sm10499587wrr.15.2020.09.04.03.55.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 03:55:11 -0700 (PDT)
Subject: [PATCH (2) 05/34] open_by_handle_at.2: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
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
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
Message-ID: <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
Date:   Fri, 4 Sep 2020 12:55:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 0176a7981aead1a202d5d0295b074e165b0d39dd Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:27:55 +0200
Subject: [PATCH 05/34] open_by_handle_at.2: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/open_by_handle_at.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/open_by_handle_at.2 b/man2/open_by_handle_at.2
index 78c3220f8..846957acf 100644
--- a/man2/open_by_handle_at.2
+++ b/man2/open_by_handle_at.2
@@ -586,7 +586,7 @@ main(int argc, char *argv[])

     /* Reallocate file_handle structure with correct size */

-    fhsize = sizeof(struct file_handle) + fhp\->handle_bytes;
+    fhsize = sizeof(*fhp) + fhp\->handle_bytes;
     fhp = realloc(fhp, fhsize);         /* Copies fhp\->handle_bytes */
     if (fhp == NULL)
         errExit("realloc");
@@ -707,7 +707,7 @@ main(int argc, char *argv[])

     /* Given handle_bytes, we can now allocate file_handle structure */

-    fhp = malloc(sizeof(struct file_handle) + handle_bytes);
+    fhp = malloc(sizeof(*fhp) + handle_bytes);
     if (fhp == NULL)
         errExit("malloc");

-- 
2.28.0
