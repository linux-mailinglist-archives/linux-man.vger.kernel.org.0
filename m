Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A766725DBC7
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:32:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730677AbgIDOci (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:32:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730641AbgIDOcZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:32:25 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE39FC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:32:24 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id e17so6293113wme.0
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uQKJZ+qtK33u63kQ7cJldWC9ljpHz9vhlQxcH0Pp0Nk=;
        b=X01YIPiVO02W9lpnRRxVjyPyf1jxOJ7gxBDOU053KzcvkBkDelrQw8ZsN+gZ/LvRKg
         Vog4/DHuSV3hj08vI5/cC1M9YB/hNWscs28sxZ88yfBg9eXYNIGdpDjhZOybu2gJ73N5
         WZYGObv+3xT9v2Tkkv5KHhZsNQto0RveaIMd6GfFxIPYakJ76XbGQGPZWj9vnj0wcISb
         BtJ2LV4I0vUSHNWhLe3afH7NNVajHbyX3TfugKDunjR1qGqsA3f4XzPqKjW3kavT8dU8
         B7o+te7PodSsn2TcgAEbqxrqExGklWC0rDpZ481Q19Gc29Te9JGhH/S9YU/JDCtxAhJZ
         3ugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uQKJZ+qtK33u63kQ7cJldWC9ljpHz9vhlQxcH0Pp0Nk=;
        b=NBDyZDWu/Z7RXC7i5fbd7F56/djnV9a2wY97H6SUZ11j5rtAq3cBlZMND7swRZb5tR
         UDwEdVgHURS9x/74eDdWyxIbPavSP3Ju3QkczCO5+vSVrAU6q7XMu919piMQYH2FyLD7
         sN75xnqW+eES4e098KlIvI9Q8ZARCREH+tkl7Luh0YZYBPiB44FFg0ENeDpJpz40iWIh
         fGZJBstC/xyQhpuUttSEcIBEo4X0TvVE0byTa6+lsX+MyztEELiUOm71j2hwYPZbZ8Id
         XKQPXhzCeEakWEqSrepoH9N3up2ALTc+4hP9X/gZm+5nIWISekElUchotev13BLDIm/8
         42tw==
X-Gm-Message-State: AOAM533tkoagUtxJ4qnehZuSUtzmRBFNfU/cudR1nvNGTD9XwwMCKKwy
        JMZ1GSy/UBhO3tEUqaUeg3k=
X-Google-Smtp-Source: ABdhPJy2B/YCbo4cdaqBqjPQWe2VVhcCUY9dk5E/KS0Zci7kYoLt/gw8X/pgYgX+HGrJnLOVLZ/f9g==
X-Received: by 2002:a1c:28d5:: with SMTP id o204mr8329335wmo.104.1599229938805;
        Fri, 04 Sep 2020 07:32:18 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id f1sm11718684wrt.20.2020.09.04.07.32.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:32:18 -0700 (PDT)
Subject: [PATCH (2) 16/34] getaddrinfo.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
Message-ID: <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
Date:   Fri, 4 Sep 2020 16:32:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From f926f02eede41183aed7ae279eb333273bd0c8dc Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:46:35 +0200
Subject: [PATCH 16/34] getaddrinfo.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/getaddrinfo.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/getaddrinfo.3 b/man3/getaddrinfo.3
index 158fd2e31..70e6b4cc0 100644
--- a/man3/getaddrinfo.3
+++ b/man3/getaddrinfo.3
@@ -721,7 +721,7 @@ main(int argc, char *argv[])
     /* Read datagrams and echo them back to sender */

     for (;;) {
-        peer_addr_len = sizeof(struct sockaddr_storage);
+        peer_addr_len = sizeof(peer_addr);
         nread = recvfrom(sfd, buf, BUF_SIZE, 0,
                 (struct sockaddr *) &peer_addr, &peer_addr_len);
         if (nread == \-1)
-- 
2.28.0
