Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A298301F41
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 23:33:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726607AbhAXWdD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 17:33:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725968AbhAXWdC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 17:33:02 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5D5BC061573
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 14:32:21 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id y187so9124915wmd.3
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 14:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dbEnFeeRmx5bb1UvVhmT4/06MpYkpLGv+SWkhmWjCL4=;
        b=YAa2/fBk20jo+PPnWPdH3R5HZJkL14kxSktrMwg5iSpUs1JJ2IGvjIn3H6EIKw9+Ak
         ufrYQPa7ff7IESvsdH5CXZk3hbG0Jhfoe3gsUrsfD3xcyiI7v5ABkpZevS7Iyuq8rzDv
         Tc4F8n4YqtV+VJUdDe9GBYAaI7uic6QaG4oo5C42O25WLZQ7AJGwUkqi95WqUnVkNfSG
         Jrg4n+3vL4x/0Jz/4HpCWcQRfOfGaenyKb3d6Bk2+x+s17JQ8nwzqTXAt0TH1BeyJPeV
         bLYectst89XRTUZNd0OVqATILAoh5C8W+NezqG0iztPsvtaQxpBu2BsSKBksMMes3Qe1
         zcFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dbEnFeeRmx5bb1UvVhmT4/06MpYkpLGv+SWkhmWjCL4=;
        b=LeHX2mvshDdCw/SorC+nYE6qsWsKBdiRUEF6fVz341rsy8OZ+MgPV/jEEbQgRcyz5y
         FdI8JnMSo1ZKUKHyERVyyUk3+UhyMXRf5VmO86BSuNApTknsNvHLtPCndX0lF9LM1B96
         DoukEDIpkvvBlBg2El1D5sQdOAt8d00x55vzIN/5kruCj4kWiuDTO2zmecG+m7M87/Do
         y5+wMYT50yNrMv0TkRzwj6GsXyY9JfiqNUZHgT41NrwyuN2vzchZ5i64FiKTRwyj8hCF
         s9yBfOyp8k7Brw4HbPxH0b6Uc7x+Ic5qJHHPJw8yBBTca7itu21KEKnVzL3HmW4LDbcz
         nSZg==
X-Gm-Message-State: AOAM531JogGk0ax7A3fOdjP1jPCoJiKKfzVOMqD8TLGmorJuYXDJo5P2
        jcEPperTRPRtJZ+M7WV+KnRuUv4qaFk=
X-Google-Smtp-Source: ABdhPJy326YS7KNkt6OaY9iSUaeuX1/O46Lr9Kb1TJmZGb6BeHP1zQ9I/yCZlLgCUpqN8FysirKaBg==
X-Received: by 2002:a1c:98c6:: with SMTP id a189mr1488641wme.88.1611527540519;
        Sun, 24 Jan 2021 14:32:20 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id i8sm15845833wry.90.2021.01.24.14.32.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jan 2021 14:32:19 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] kexec_load.2: srcfix: Don't break a line that doesn't get
 past the right margin
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210124151035.70536-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b1797b8e-613e-2d2e-7fcd-af14754f4178@gmail.com>
Date:   Sun, 24 Jan 2021 23:32:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210124151035.70536-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/24/21 4:10 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man2/kexec_load.2 | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/kexec_load.2 b/man2/kexec_load.2
> index 8cd062229..eec63d312 100644
> --- a/man2/kexec_load.2
> +++ b/man2/kexec_load.2
> @@ -31,13 +31,12 @@ kexec_load, kexec_file_load \- load a new kernel for later execution
>  .nf
>  .B #include <linux/kexec.h>
>  .PP
> -.BI "long kexec_load(unsigned long " entry ", unsigned long " nr_segments ","
> +.BI "long kexec_load(unsigned long " entry ", unsigned long " nr_segments ,
>  .BI "                struct kexec_segment *" segments ,
> -.BI "                unsigned long " flags ");"
> -.BI "long kexec_file_load(int " kernel_fd ", int " initrd_fd ","
> -.BI "                unsigned long " cmdline_len  \
> -", const char *" cmdline ","
> -.BI "                unsigned long " flags ");"
> +.BI "                unsigned long " flags );
> +.BI "long kexec_file_load(int " kernel_fd ", int " initrd_fd ,
> +.BI "                unsigned long " cmdline_len ", const char *" cmdline ,
> +.BI "                unsigned long " flags );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
