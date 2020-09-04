Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C183825D6DF
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 12:54:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726811AbgIDKyW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 06:54:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726171AbgIDKyU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 06:54:20 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0300AC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 03:54:20 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id a17so6267458wrn.6
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 03:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1LTQeAMBgrCv8czKUv0r1OeMIAWSdLCD++DpCX6t6Ks=;
        b=OGgMoJkIpnP/2KeNCcCIUxllu2VuwTmha/KVgfgboWd3Yq4Yww8y/Sv22NoPhwkQvF
         Bb+DBjo76fBFMZPZ5WxM/8lxvtWtgQDYEEULjriQl+RwCbVyabGrUnaXE88j3eReTMim
         nsKfku4mDpLv5MjGJGprk5Q/0fr7KgvDDpBo9VLt1X2zYnO3ZoqGoWmzSSI75CoA5fx4
         eIjfZBaFayODJVwFBXIwdPTYaRZM/7Q49UPzp4IuaewXdFLiofB0t0MGKKbxhW/WCrJY
         IPgjfF54+D94mzNEK0HK1kRvxGGQkdLbPc2sPzXne3bgjPVc91BC8fomNm+fUFrTHGfG
         cTBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1LTQeAMBgrCv8czKUv0r1OeMIAWSdLCD++DpCX6t6Ks=;
        b=hu61gRaW8125hrL66AS3vXFNa1Zt2XNl+JHEYIPhlGcUoq+r0DmFPt5eUiQaMShyn6
         it/Tnx2xl6jaqc3XyRQ8WZT0HqWke3JyymrYC12U4sfiXhOokj34OeeMMSJ+1lIeMjH9
         WipNZcRJdNbyEZNIdUaF5rhuFlwCy34PRrKDZ++B2QeCu9DuZ5bfeZeGtfPROz+Q220L
         gVlBdg7/J4F+9hssZAsP4o7iyvJD/8wmDAckAnxzog65WFxo+tUm54pIXSAvbnB9uaSP
         GR3x9O51IeeiuDwvZXdAiFHoYluKYvJKv3NjPfpchbK0oIkthw1R/NIWNHMP6fDAuJtY
         QbLA==
X-Gm-Message-State: AOAM531C+rWd5zsFPZuX2+6hj/fNUXB21zCTVO/2nyVedLgqOWk6HKXO
        ZRqJMJ4fUPSQ/M672vSmZ68=
X-Google-Smtp-Source: ABdhPJxpS8RezP7cXGo81l2iK6CxqdcVh6EMG5jnF+mCbO2DRZhjOHHLwZEOu94LcLs+/kIlJRsw9w==
X-Received: by 2002:a5d:4a48:: with SMTP id v8mr7097716wrs.304.1599216857357;
        Fri, 04 Sep 2020 03:54:17 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id y1sm10730810wmi.36.2020.09.04.03.54.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 03:54:16 -0700 (PDT)
Subject: [PATCH (2) 04/34] futex.2: Use sizeof consistently
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
Message-ID: <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
Date:   Fri, 4 Sep 2020 12:54:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 21cd85c6f11390c71ed4475f1f9d55910891cf23 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:27:01 +0200
Subject: [PATCH 04/34] futex.2: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/futex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 05696f617..6192b145a 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1839,7 +1839,7 @@ main(int argc, char *argv[])
        subsequently use the "shared" futex operations (i.e., not the
        ones suffixed "_PRIVATE") */

-    iaddr = mmap(NULL, sizeof(int) * 2, PROT_READ | PROT_WRITE,
+    iaddr = mmap(NULL, sizeof(*iaddr) * 2, PROT_READ | PROT_WRITE,
                 MAP_ANONYMOUS | MAP_SHARED, \-1, 0);
     if (iaddr == MAP_FAILED)
         errExit("mmap");
-- 
2.28.0
