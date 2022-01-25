Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B626449BB4A
	for <lists+linux-man@lfdr.de>; Tue, 25 Jan 2022 19:29:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232026AbiAYS3a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Jan 2022 13:29:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232021AbiAYS31 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Jan 2022 13:29:27 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1565C06173B
        for <linux-man@vger.kernel.org>; Tue, 25 Jan 2022 10:29:26 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id c23so5841374wrb.5
        for <linux-man@vger.kernel.org>; Tue, 25 Jan 2022 10:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=o7uQAWkftaK8IRtlauNjk4R+Lbvn2JXwllMAVCQw4tA=;
        b=nzVXwtmCO5b81txD8sXxvpSWkpREx0udULCHwJlgyxDp7PaspTTOyErV+DJGR+T9hB
         kZB6SlP5yVmivl+L+K20VJ3B/D0ZZHbNdZOXpPNvGn56ImJV9G6Mmd1Xkv+xyDcUrW6z
         h4fgPWG25iM0E3lKMJ4vQbJr5VIg9V17vvtz5lsl6D1pk0VdzyVGtLaWw7nuhXzqUk9m
         sBzOM4slD8P8SGpeoFtaD7dmxsaH7vd5es5pgdoTSEru5HVyezjZ4MxcePeR+7BlVSPa
         hl3xaHtnZaxkjeHKov0c+zKNxeho2HhlM0IVNhqYLKa4aF/7KaLM9sYEfFfkeplEBKKK
         CYOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=o7uQAWkftaK8IRtlauNjk4R+Lbvn2JXwllMAVCQw4tA=;
        b=KJCFQs90WLyNSmHiqZ++lLWAJ2X7N50BzsStvTEyuyWb4fJs9IN1LhoG7zh0yOCEXO
         TIiMJ1TSqAhobO3dW7nzBAW7pFLsgSjrQQHvvFqTOOcXGAlyRYaUcq9cyBTzZXEqPBdw
         lccetxrJq9slvudBy9jXD1Ij45Zwq2Z41hUv+CPUdFpN15xxCrcuSbezDg93oEwJo4kK
         4X/U5hxp8WPUDOIcZUHY5Ey1vl0bcPIYS2rf1ge8fT6WrRZ5ggEXJmQdgYtJiJdke5q7
         fAIVi38h+MhJXPEmXCH3MH23J1hkn3YC343B8bEYO/RPKRYvoAlBmUl9oXZMmsp2nuld
         goUQ==
X-Gm-Message-State: AOAM531ULynv5esaHww6TfgBtQ9hKUM6uo4onU/bLsMgfkqzBVzJuCmS
        cvTit/zV6QbvATcIchjJp86zQp6shZY=
X-Google-Smtp-Source: ABdhPJxxqjRScIbilDQAwdkA14V73+Q/KiLHvtmwLU+3G8pC1vXe6ryVk9i5s0sEBxim5JLNythARQ==
X-Received: by 2002:a05:6000:18af:: with SMTP id b15mr6579632wri.589.1643135365282;
        Tue, 25 Jan 2022 10:29:25 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x4sm18679378wrp.13.2022.01.25.10.29.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jan 2022 10:29:24 -0800 (PST)
Message-ID: <42c8d669-e3b6-2231-e273-fb6c7ec0fda7@gmail.com>
Date:   Tue, 25 Jan 2022 19:29:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] fixes on swapon.2 CONFIG_DEVICE_PRIVATE decreases number
 of available swap files
Content-Language: en-US
To:     Alex Baranowski <alexbaranowski@euro-linux.com>
References: <d3bc64b3-a1ec-7165-1eed-506d348762c3@euro-linux.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <d3bc64b3-a1ec-7165-1eed-506d348762c3@euro-linux.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 1/17/22 23:21, Alex Baranowski wrote:
> Howdy (It's probably the nearest thing to Polish Siemanko!)!
> 
> Firstly I'm sorry - I might send empty mail before this one (misclick).
> 
> I noticed that swapon docs are missing some newer information about
> CONFIG_DEVICE_PRIVATE that decreases the number of available swap files.
> When it comes to kernel versions that I used
> https://elixir.bootlin.com/linux/v5.14/source/include/linux/swap.h and
> https://elixir.bootlin.com/linux/v4.14/source/include/linux/swap.h to
> check when the changes were introduced. I also tested the manage with
> `man path-to-file` if it looks OK. I signed off as Aleksander Baranowski
> as it is my legal name.
> 
> Patch:
> 
> From 547cff381f0321dd6bffdaa2cc5c6fe9b44464ef Mon Sep 17 00:00:00 2001
> From: Alex Baranowski <alex@euro-linux.com>
> Date: Mon, 17 Jan 2022 22:36:34 +0100
> Subject: [PATCH] fixes on swapon.2 CONFIG_DEVICE_PRIVATE decreases
> number of
>  available swap files
> 
> Signed-off-by: Aleksander Baranowski <alex@euro-linux.com>

I tried to apply your patch, but it didn't work (maybe your mailer
messed with it?).  So I applied a similar patch based on yours.  I used
a text more similar to the surrounding text, to make it a bit more
consistent.

<http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?id=c56180ba830bfd5c5f0668b74e3b3ccc90716c3b>

Thanks!

Alex

    swapon.2: CONFIG_DEVICE_PRIVATE decreases number of available swap
files by 4

    [Aleksander]:
    I noticed that swapon docs are missing some newer information
    about CONFIG_DEVICE_PRIVATE that decreases the number of available
    swap files.  When it comes to kernel versions that I used
    <https://elixir.bootlin.com/linux/v5.14/source/include/linux/swap.h>
    and
    <https://elixir.bootlin.com/linux/v4.14/source/include/linux/swap.h>
    to check when the changes were introduced.

    Reported-by: Aleksander Baranowski <alex@euro-linux.com>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man2/swapon.2 b/man2/swapon.2
index 07d5fe86c..29e32f308 100644
--- a/man2/swapon.2
+++ b/man2/swapon.2
@@ -33,6 +33,9 @@
 .\" 2004-12-14 mtk, Anand Kumria: added new errors
 .\" 2007-06-22 Ivana Varekova <varekova@redhat.com>, mtk
 .\"     Update text describing limit on number of swap files.
+.\" 2021-01-17 Alex Baranowski <alex@euro-linux.com>
+.\"     Update information about available swap files decreased by
+.\"     CONFIG_DEVICE_PRIVATE option.
 .\"
 .\" FIXME Linux 3.11 added SWAP_FLAG_DISCARD_ONCE and
SWAP_FLAG_DISCARD_PAGES
 .\"    commit dcf6b7ddd7df8965727746f89c59229b23180e5a
@@ -190,6 +193,10 @@ Since kernel 2.6.32, the limit is further decreased
by 1
 if the kernel is built with the
 .B CONFIG_MEMORY_FAILURE
 option.
+Since kernel 5.14, the limit is further decreased by 4
+if the kernel is built with the
+.B CONFIG_DEVICE_PRIVATE
+option.
 .PP
 Discard of swap pages was introduced in kernel 2.6.29,
 then made conditional


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
