Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81D9E25DB3C
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:19:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730513AbgIDNm5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 09:42:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730500AbgIDNmq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 09:42:46 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40B25C061249
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 06:42:21 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id a17so6787130wrn.6
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 06:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xrJDtAMywpp0r69v2xw9XFpEIg6qI1aiKVI5HH7X18Y=;
        b=mkKfypJhPsS6jr8OhmvfOb0csG//Awxn2I9EOlPQeZL/LdF9EbuN6FQRw43B5zVW2C
         SxWckl3cVFbmWd7J6SZkpZYl8VD50kAe/6O4/V49+dXXAeVKr6xpVA9oJQTviXLCuZws
         rTEguUMoIZ+MOrw+qFqoE7KeR7kXnZrlJQcenErBxRg1M3UT+MWF/fP3csR4OW70rosP
         gBgDwmgXYX44YhIOUKgz8wZukUVoHDaxNGhhl39Qju7wTGu/RJipWirQOSK8Qr3vqZ9s
         HPD57m7t55NgjEXW3eigA0B7jWvgx4iMr5t32jMkp8wrfHMXRY+cmNq/7DFFpIBTB9s/
         sh6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xrJDtAMywpp0r69v2xw9XFpEIg6qI1aiKVI5HH7X18Y=;
        b=DIdypjIXfFn9ghizgJSAF3Qf/zXm/aWnrAzhONKVY3WRYqpympbaopiqhY/FEIE1WH
         jcQQdB1+ydRjCKNdZWL70hqYbMEbuw0wlH6lC+cq4HVYbkkTxaYYpJ7B44KX1n/6z+Ve
         YICNV66dyVRmfrNATI/pkAQE5/+qw0VIulV0Thr+QNgPQWhXOigXrpJ1rkZOCtAoPGwW
         ztq+i9Z7nUnxxmf9ljp9MKJXvLBxU1f5y8jba69kkSlUFt2IFjH36wATaS7klslznG7y
         azDcgUnttnvTTHcFvqJQX3AQ3g8eYokxr6iF2CR0gZcETL1PCbEzRYBY5PLKzO5/neE+
         fN1g==
X-Gm-Message-State: AOAM530VbczC5SBSsw4SAkbqewbDowiSQG5qzH5pxXWqn0uxi46nYDvV
        i2A5hZEHKDLO8lgDiN5EnB8=
X-Google-Smtp-Source: ABdhPJwSba6KBAaPijiqLGe0bj2t1rgu5rtZqslBnhl3m6CZ6UcrvPxxPL4eFFdtI3jG0tqecGyDhw==
X-Received: by 2002:adf:cd05:: with SMTP id w5mr7634249wrm.62.1599226939494;
        Fri, 04 Sep 2020 06:42:19 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id u6sm10743968wrn.95.2020.09.04.06.42.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 06:42:18 -0700 (PDT)
Subject: [PATCH (2) 08/34] poll.2: Use sizeof consistently
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
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
Message-ID: <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
Date:   Fri, 4 Sep 2020 15:42:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 791b2082c91de4fb49a1a46e9c11d294aac09050 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:34:52 +0200
Subject: [PATCH 08/34] poll.2: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/poll.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/poll.2 b/man2/poll.2
index 940c51da5..9b42822c0 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -596,7 +596,7 @@ main(int argc, char *argv[])
     }

     num_open_fds = nfds = argc \- 1;
-    pfds = calloc(nfds, sizeof(struct pollfd));
+    pfds = calloc(nfds, sizeof(*pfds));
     if (pfds == NULL)
         errExit("malloc");

-- 
2.28.0
