Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0054E25DB3D
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:19:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730526AbgIDOT1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:19:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730511AbgIDNnQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 09:43:16 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E64D4C061245
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 06:43:14 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id a65so6110892wme.5
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 06:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YM6bwJ+FvAT8KW/t9DGCCxo+APMUB8LPCHdU84GE3Pk=;
        b=AWcIktn/rwWPpwF8K8dF15SenAdox1tKDocF2yZomaEv3nJoDtOxBOCzuxWGoERWRm
         BszPJNSBS6YK9rQVTEPIAmzU/Q//Sl8oRXgp+mYep5kgeDc+a+D9rxsfh26CnMOq1OpN
         mN0ZHz/v064lR148z/+9aNhoa1RVMIIQaLnfdNzhq+7dzjCjPH/aKuW0nwmkLxGWDwsd
         3n1NyY2PDIwP3Vn7ZKXG3XP3+XA0L+8F0fT9hNVL/25KJTA2/F6MJou9t6JC3XielAFn
         LyxaSgXqfUXFTTwfVpl3dM3hjJQTmo36xau7IORJC7aQQFZtrhhRgvjzD4bemTcZ8hCK
         DybA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YM6bwJ+FvAT8KW/t9DGCCxo+APMUB8LPCHdU84GE3Pk=;
        b=IeiQzyF6zRQr8yfCyUrOQ5Kjz/hz0eNcdZNJDawCSyyMab3k10FNlWGGt3DCWQPShr
         cpSnsOwwDnhwx8ooDBEAxmg/AVf9tgLDHxWlPDmbNfFeVndrxPwmagwBe5avfnfLf5kQ
         DA8X2FCidVAJEuHQCmUaNJ3XRjVf/JbSyZrF4yDr/gl6DGG2nkRDYkZU2u0rNrspZtDL
         IWUpvRfeIte+nGbfLDbHP+/zX5ZmGR8420+3vZKJTRDLJPl2MBaLZe5xQCOqjEN3hU9w
         l3/lww+TQ6iXe59Jq9GzXIsyu87MWk6AMpcMqwz+t/QCwtGtuYHm26MxsmJCnx4S90H9
         7tAA==
X-Gm-Message-State: AOAM532NBWN27JiZ78/0OQk+ew0UDPDkq4zeB0P01661DMoQgUgLMnND
        2vKNacP8BToua0ZfJlhBjZo=
X-Google-Smtp-Source: ABdhPJyZKfChGNSrUHNUB6W4Ai3dWFkP1nECeKyoF54Z00g+sUB3960QGkyKQfqMpSUOlGUht98mRQ==
X-Received: by 2002:a1c:7e02:: with SMTP id z2mr7682912wmc.138.1599226992634;
        Fri, 04 Sep 2020 06:43:12 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id u16sm11946571wmc.7.2020.09.04.06.43.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 06:43:12 -0700 (PDT)
Subject: [PATCH (2) 09/34] sysctl.2: Use sizeof consistently
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
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
Message-ID: <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
Date:   Fri, 4 Sep 2020 15:43:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 90572d59a4f3b1986e57c0b32e14e4e68ecab716 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:39:56 +0200
Subject: [PATCH 09/34] sysctl.2: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/sysctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/sysctl.2 b/man2/sysctl.2
index 65f79516d..161060490 100644
--- a/man2/sysctl.2
+++ b/man2/sysctl.2
@@ -154,7 +154,7 @@ main(void)
     size_t osnamelth;
     int name[] = { CTL_KERN, KERN_OSTYPE };

-    memset(&args, 0, sizeof(struct __sysctl_args));
+    memset(&args, 0, sizeof(args));
     args.name = name;
     args.nlen = sizeof(name)/sizeof(name[0]);
     args.oldval = osname;
-- 
2.28.0
