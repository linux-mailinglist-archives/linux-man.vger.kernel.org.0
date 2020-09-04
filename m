Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8F2E25DC1D
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:41:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730391AbgIDOlW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:41:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727049AbgIDOlV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:41:21 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 460BDC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:41:21 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id w5so6998888wrp.8
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=l12SJJoUkW2q7MnGI+n8mK7wE/h0ENP6ZBhsIaTBYcU=;
        b=UCrsQA0lTCuYEvp7Zcyq1HPxZtZldQ9CU/UFtTl7l+KqS+jYCs4s3TEz7QZlKZCKTQ
         UsZwmWGvPHUgeHD+TD9mvi4TrOl8A2obUGmydr14QiM0BDl/n1jZw5XkqEwXuoHaCgr/
         Gw8fKZUGoAn4JkGZaZ1EWbCwNdq30Mg6ax3BIPKJ/w3Dtn2t1GbYlGnkVDNXUMU6qBLz
         YiDypxNHJ28kcYwTFC5r5/wlVyFlHDNEzit+jeVX5/4s0+fhM14cmrCFEXCy+oHoBNJm
         9k1LvdHa3CSYjFDySKIikc4VLcckEdVQE0ZRv9HAC0BRlB4l4TUXm/XAOkqxQqDVw70U
         Pdpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=l12SJJoUkW2q7MnGI+n8mK7wE/h0ENP6ZBhsIaTBYcU=;
        b=p8QqeCyvRD46XWEQhWd2PKrTOceTfT8kiCgQ1HVilw/tMrdgGh4lQt5gxCEOhhTMpM
         Hb8+LtKeTIy2eSSuQwmUVscfewU7iJgIfLxrVOfS8P0WSi+pRFtNLNILp6BMN1NrcEDe
         p0OJQ2YOzOJ7aV2qT9htebqjHiG0+/ohqQX2Qe3PWO+qFxnJXSALorL45dVXd+deVV32
         LUMNVFVr+dsu3wq0Mz/1SiMcVX0s3S2Rou0lTWPWRJz8lcqL/z8UeqK1ixq5vt04KKi/
         kHGj/LenwytD4mxyfsEb7cSNvDGrbmkNsvtQd9Mj+VbvzlFdbSvQwQrr1YTB0hfquHjL
         vl7w==
X-Gm-Message-State: AOAM532TJQygOht9+GyMGzKYE3t3QMdCcDL+ZYXxlyfoLaJq3VbN89mU
        IsiRNv+UwTT40bbt7+lNC/M=
X-Google-Smtp-Source: ABdhPJxmST/FzSq8WvbY6NdRV8HcDEf2LBibGmMX1r0dqL6Q7Bz7qGOF5hS4olkW03WWWYhSsFeiwQ==
X-Received: by 2002:adf:e74d:: with SMTP id c13mr7599091wrn.45.1599230480038;
        Fri, 04 Sep 2020 07:41:20 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id l8sm12193346wrx.22.2020.09.04.07.41.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:41:19 -0700 (PDT)
Subject: [PATCH (2) 19/34] malloc_info.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
Message-ID: <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
Date:   Fri, 4 Sep 2020 16:41:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From bf1a7799161fe1f08570c4f25d87a0f4e0b51ef1 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:49:17 +0200
Subject: [PATCH 19/34] malloc_info.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/malloc_info.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/malloc_info.3 b/man3/malloc_info.3
index 0d95cdff7..598478dcc 100644
--- a/man3/malloc_info.3
+++ b/man3/malloc_info.3
@@ -226,7 +226,7 @@ main(int argc, char *argv[])
     blockSize = atoi(argv[3]);
     sleepTime = (argc > 4) ? atoi(argv[4]) : 0;

-    thr = calloc(numThreads, sizeof(pthread_t));
+    thr = calloc(numThreads, sizeof(*thr));
     if (thr == NULL)
         errExit("calloc");

-- 
2.28.0
