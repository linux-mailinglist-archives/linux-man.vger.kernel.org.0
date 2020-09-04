Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D85CA25DA7E
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 15:52:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730496AbgIDNwZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 09:52:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730354AbgIDNwL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 09:52:11 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0768C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 06:52:05 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id c18so6810043wrm.9
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 06:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4LKN2I/qJyAG44NUIfq2S113rl9dbCwjGyP9CGcr/RA=;
        b=kl3CGdna5P1G9lMWzsBIc0Sj4Wt9HQrHqSHyEDdZcTr7qjchOxYkwc5m6bHi9H/IPO
         H/R3QHoz/KZgM/78TTpmiIY5c/yd4qaNY4NK+nvA2vrrquaB43OZ9mUVBhxcNyyvJ9pA
         Y2+XFl8GCh5T4vbXrjQs3lG/aUETH/sF5QFkfC2KmXieVxfJulKadY/z3/tYqNKKqIxm
         pjSHkgcpmadO3CJfiH69PfCdlqQxaX0dM2bQCfA5OYiJb0ZKnJ+NKKC4qATqGbARNSew
         2AeXThpjrfY7DD9gaAQCGyCHjB1YhbdJNkv6gMVAmLYawOMYuelkQSfiQjFImrFn1wiL
         CXzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4LKN2I/qJyAG44NUIfq2S113rl9dbCwjGyP9CGcr/RA=;
        b=cBihaJSTi/9+zrBPSv0dVzsMaH6CTzXQ0GycteBwZ8fgk+dj8PnoWnPLtizj15LGxQ
         S79g/5BVS6CWrcpLIFKAIdGVG0RzBazFmOpzdhciuF0GHJ9f4oyTsOIvNpODTF+fYrux
         kSvF18WluWPnV9DVxUfSq7d7k/E+4rcrnrvmu1fCPbB2HlhYL0AKpQ4NWivydW7SR2xW
         +cuSYGqxIB9H5QjnBRa28sB+/y031DZia09U/mNOR0ZzqYFdyprYbDRhPipI+T/V+50b
         p9WlAJnYGVdWF4ZGI9tbIvuRedhop84+c8oIu+LUs6nfaHQe/7GtcsLhU7KVPqNVQfEA
         +NNA==
X-Gm-Message-State: AOAM531vfNDpyjc54OpSaE/uXwQEPij7YlVHxCzthwbf1Y4xRjhKZUyR
        oAjLrey+a3qX+7LlG5PTeA8=
X-Google-Smtp-Source: ABdhPJzU9CPDOnU2+yZCxPY4pvnrUiTsydNO3lyAIL4JCFcjvwWwMIwMO8wVVoKKtuNFI+jpHWMbMg==
X-Received: by 2002:adf:cd0e:: with SMTP id w14mr2229575wrm.0.1599227524657;
        Fri, 04 Sep 2020 06:52:04 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id n11sm11533788wrx.91.2020.09.04.06.52.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 06:52:04 -0700 (PDT)
Subject: [PATCH (2) 14/34] cmsg.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
Message-ID: <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
Date:   Fri, 4 Sep 2020 15:52:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 374b31bee6762314ab48988e2e78a3a6a2f96834 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:44:54 +0200
Subject: [PATCH 14/34] cmsg.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/cmsg.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/cmsg.3 b/man3/cmsg.3
index 3d6288901..8d0ad6666 100644
--- a/man3/cmsg.3
+++ b/man3/cmsg.3
@@ -241,8 +241,8 @@ msg.msg_controllen = sizeof(u.buf);
 cmsg = CMSG_FIRSTHDR(&msg);
 cmsg\->cmsg_level = SOL_SOCKET;
 cmsg\->cmsg_type = SCM_RIGHTS;
-cmsg\->cmsg_len = CMSG_LEN(sizeof(int) * NUM_FD);
-memcpy(CMSG_DATA(cmsg), myfds, sizeof(int) * NUM_FD);
+cmsg\->cmsg_len = CMSG_LEN(sizeof(myfds));
+memcpy(CMSG_DATA(cmsg), myfds, sizeof(myfds));
 .EE
 .in
 .SH SEE ALSO
-- 
2.28.0
