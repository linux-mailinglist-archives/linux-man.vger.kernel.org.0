Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 508D39D7E0
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2019 23:02:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726527AbfHZVC0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Aug 2019 17:02:26 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:55446 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725785AbfHZVC0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Aug 2019 17:02:26 -0400
Received: by mail-wm1-f67.google.com with SMTP id f72so825404wmf.5
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2019 14:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k46QnibtiJBexHQpPCgMpJsUaCteN7uXO5Tpe5JvRVM=;
        b=dv0m9SgyJ2o/POIdQQ/KiUFnwJ36tsSLkhguNC8NAqc37UZSVyG4aEDNMHe/M3qMWM
         vGWr8nINtR6eIVs2EowlaoPVn9Cc39tDNMnA9b2OJr0KmJvww1/WFphLFV9HZ5yQnmYe
         vbRT/Qu0L+oCZshFTzyLB4KoGFmMOgJIeYcmiqL/DMovnSVrKVkbmuAzWR5aHN9uSsSN
         0UuXkRaIgy5fOozmZf4CnSDnXPGqfikkBfTC7wPZOJUCe29dKQgWh8RjK0JbRt4vmmY1
         0oHmSlxfptnVW186wF6iHK6yjLgrGq0JWQQ7q+i+QhJHdmyeZs146xYOR6kwVsQ/FmcA
         08Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k46QnibtiJBexHQpPCgMpJsUaCteN7uXO5Tpe5JvRVM=;
        b=JYtf5rxAWPkqC4R18rDtbnBrj4cI0s1sygWCmjpF1norjshFasMi0S4+yE0DXaWHC7
         JMhj6pF5xdW+to+z3d/OtZDBAQdeTTqfb+VsKAx3cZSiQwUH/DGhjeHIIm5KRP9/dsdV
         kPjIBvbC1Uo/9kFKMCZhV+Ch7bW+S92DNCd8jvPeb67x6xZuk3r6I/cpcPa13pi5058O
         kjXKUpED16QPpyLa5j3JF6sDd+W3IRmUomQI1WMHtcpMV+2umqSmttZb+MLTaB10RBuo
         2IobhDY+f/WvMZgL4LoLIANNy2mx+ZWMzq6uf06r9QN79BDN6GkiJ813cEiHKWaU6QOQ
         vAug==
X-Gm-Message-State: APjAAAXGpa6gCBt2/aUP6tPKV8Ilmj8bm0gkt+Zy9BqlIuPqt9ckCgb+
        ycqjCN39ogqm7xJeKxTbRGHMibey
X-Google-Smtp-Source: APXvYqxrsLC2MVphHw6sAEK4y5ZHbP4Q3ZCKFQsBnRLno7piYhnlQGP75+BOWFzyhYZn8zjlNcDGIA==
X-Received: by 2002:a05:600c:40f:: with SMTP id q15mr1542704wmb.88.1566853343737;
        Mon, 26 Aug 2019 14:02:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:257e:2f01:31ee:f41e:c688:df4? ([2001:a61:257e:2f01:31ee:f41e:c688:df4])
        by smtp.gmail.com with ESMTPSA id l62sm1406329wml.13.2019.08.26.14.02.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 14:02:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] gethostname.2: wfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190826111155.9223-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4aaea00b-ed32-d29c-9440-3e52decb8084@gmail.com>
Date:   Mon, 26 Aug 2019 23:02:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190826111155.9223-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub

On 8/26/19 1:11 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man2/gethostname.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/gethostname.2 b/man2/gethostname.2
> index 4659337cc..5d6c20b0b 100644
> --- a/man2/gethostname.2
> +++ b/man2/gethostname.2
> @@ -68,7 +68,7 @@ _BSD_SOURCE || _XOPEN_SOURCE\ >=\ 500
>  .ad
>  .SH DESCRIPTION
>  These system calls are used to access or to change the hostname of the
> -current processor.
> +current machine.
>  .PP
>  .BR sethostname ()
>  sets the hostname to the value given in the character array

Instead, I applied the patch below.

Thanks,

Michael

diff --git a/man2/gethostname.2 b/man2/gethostname.2
index 4659337cc..a07d06fa5 100644
--- a/man2/gethostname.2
+++ b/man2/gethostname.2
@@ -67,8 +67,9 @@ _BSD_SOURCE || _XOPEN_SOURCE\ >=\ 500
 .PD
 .ad
 .SH DESCRIPTION
-These system calls are used to access or to change the hostname of the
-current processor.
+These system calls are used to access or to change the system hostname.
+More precisely, they operate on the hostname associated with the calling
+process's UTS namespace.
 .PP
 .BR sethostname ()
 sets the hostname to the value given in the character array
@@ -184,4 +185,5 @@ set to
 .BR hostname (1),
 .BR getdomainname (2),
 .BR setdomainname (2),
-.BR uname (2)
+.BR uname (2),
+.BR uts_namespaces (7)




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
