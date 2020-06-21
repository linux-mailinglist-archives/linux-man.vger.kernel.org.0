Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79371202931
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2020 08:59:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729349AbgFUG7S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Jun 2020 02:59:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729346AbgFUG7Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Jun 2020 02:59:16 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 200A9C061794
        for <linux-man@vger.kernel.org>; Sat, 20 Jun 2020 23:59:16 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id g21so8386334wmg.0
        for <linux-man@vger.kernel.org>; Sat, 20 Jun 2020 23:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pex8moGw1eSO4p/vaCVG19Nmb74oTbWa8m5l3Or+NdE=;
        b=sgkj2YSGkiz2hREFvSThk0bBq3EaGksZLAVZp2G16uRZlqOuoOhp9G0GGOjNpWOWxa
         n3tJBMeu6qmH4hAmpgS7EyrbFiUUUnsDJ+L02Inkqh3rFxUIPBF5B3Bp/h9jaRn5gG3n
         f7ISO/i+PnwsUibW3zrwI8iSw4x15xmqqlzXQZ0JU1jADQ/upCTgvWhMGajyd2an8F00
         aHdDzJ74jTii/H+vyxGSv885OISEnxVJuW5Cll+PiQnnIaKMR0br6iPzfIG08hpNPbYy
         oufHO3eZ+XoI8t4Hl+Eup6PbazCYIwG+EW1FYdIqYaz523Z1PjPiDClPfxm4m0sA1ThS
         0Kxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pex8moGw1eSO4p/vaCVG19Nmb74oTbWa8m5l3Or+NdE=;
        b=XYJW+rIqNnn33kUFz2s0pODT9SThL3t23mdlejAk/G6JVyb2poBP6T8Y2/44QdackU
         CPlk2a0rd7msnN1djPUA/MywQYKmaWgBbl0+ae7DdawXTkssOC/UjemwiFWZoYlcz+Gm
         31TIcIedJ2QTdiZND0R2KkXF+MBWaBvYVb2oV9ZRo/J5zd+Xhv2129gLaoGtdv4I3lp8
         irG08twyDj9mho58HrX3Ra3NE1a+0fTmygOHxSbmPDMcE7EfbEUkzElEP+E3XyWmCS/j
         /XPhXysHLXWJFtQsR8WSr1y5UstOEh2MVqhyrptZRpEiaDKQx2y4JSoFDA9bFBBfsSUV
         Arcg==
X-Gm-Message-State: AOAM533y6YMiSnsidZP6QPfwHHH/bRsU13a8bTDEcxUU6ZEEZi521jia
        rRdpCSjzY1x/4Yyo0Ywbd8s6qIXB
X-Google-Smtp-Source: ABdhPJw9osgH1HGUmr6nLwJgucKDo00Ibe0sJIxNJUVRQm/v+XvCBFK5WJlRx6YDw8bN81Hj1ekXYA==
X-Received: by 2002:a05:600c:2201:: with SMTP id z1mr11905144wml.70.1592722753565;
        Sat, 20 Jun 2020 23:59:13 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id n16sm3435860wmc.40.2020.06.20.23.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Jun 2020 23:59:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man5/proc.5: srcfix, trim trailing space
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200620160338.GA20693@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <76bc832a-4aeb-7db2-3ba7-facb4017df67@gmail.com>
Date:   Sun, 21 Jun 2020 08:59:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200620160338.GA20693@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bjarni,

On 6/20/20 6:03 PM, Bjarni Ingi Gislason wrote:
> Output is from: test-groff -b -mandoc -T utf8 -rF0 -t -w w -z
> 
>   [ "test-groff" is a developmental version of "groff" ]
> 
> Input file is ./proc.5
> 
> troff: <proc.5>:4410: warning: trailing space
> troff: <proc.5>:5206: warning: trailing space
> troff: <proc.5>:5488: warning: trailing space

Thanks. Applied.

Cheers,

Michael

>   There is no change in the output from "nroff" and "groff".
> 
> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man5/proc.5 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index 0e9d56fec..6645a1ae8 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -4407,7 +4407,7 @@ on older kernels).
>  This file contains information about the status of the
>  directory cache (dcache).
>  The file contains six numbers,
> -.IR nr_dentry ", " nr_unused ", " age_limit " (age in seconds), "
> +.IR nr_dentry ", " nr_unused ", " age_limit " (age in seconds),"
>  .I want_pages
>  (pages requested by system) and two dummy values.
>  .RS
> @@ -5203,7 +5203,7 @@ This file is documented in the Linux kernel source file
>  .I Documentation/initrd.txt
>  before Linux 4.10).
>  .TP
> -.IR /proc/sys/kernel/reboot\-cmd " (Sparc only) "
> +.IR /proc/sys/kernel/reboot\-cmd " (Sparc only)"
>  This file seems to be a way to give an argument to the SPARC
>  ROM/Flash boot loader.
>  Maybe to tell it what to do after
> @@ -5485,7 +5485,7 @@ is reduced accordingly.
>  See
>  .BR ptrace (2).
>  .TP
> -.IR /proc/sys/kernel/zero\-paged " (PowerPC only) "
> +.IR /proc/sys/kernel/zero\-paged " (PowerPC only)"
>  This file
>  contains a flag.
>  When enabled (nonzero), Linux-PPC will pre-zero pages in
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
