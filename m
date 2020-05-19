Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 646851DA154
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2020 21:51:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726821AbgESTve (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 May 2020 15:51:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726643AbgESTvd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 May 2020 15:51:33 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45E55C08C5C0
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 12:51:33 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id u1so459984wmn.3
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 12:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6GOi0TQCvdm3wUIeSEUNSXQeZRnZBBMbWNj9WLW3egs=;
        b=Idl042Fvhh4kqciUa5gPFnEOSZZKATTcjP5ne/Ciwe25b+GmIPunIIO+3dYP8/0j9r
         wxww9/MJSMK6fghtbk9uhICaHcvqCrSqDu4GKCq8/qW8bPsHPOMJzH6Y062yt5onVIM3
         r8Wxh4qoBnRUriTNBLOfloMRpH0cPoGga7KjR51/Y+lpk/X7sPJmFIFwa6575Iho0HPY
         LUEzgxG6QQyBBxCgQ5gEWBzq9jvGTk2cIUlNv/kvO+IYuUGV2MifX73zb5lA5oVjMjTP
         i9hrFtywEPE8oVPMRnJBP2Jm9CvKwZCvg8WzESxt51rgA5qTtGtBLmr0IAbAnjbupd+e
         c4PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6GOi0TQCvdm3wUIeSEUNSXQeZRnZBBMbWNj9WLW3egs=;
        b=U1Yk5e2pr3s0XxM3kllZxhg8hk//lT2x1cIjfOQjniny+7pDPHTEhRN3TI7khMcUge
         Uu1Odjrh2HoTnsXDkO7VklHQ7svResWkQOTUCGxOWmVq46xMuuhy5XGE6+Fu6QG1iToz
         VWk7O4gar10z1HLc+fip4ADSkhOLkcLyNQ6uZIm30qY2AhhgG9R4L0r9FFjh40tF7N/A
         pib3FCbCrq6QGgofiTMoXlpXUc9zU6sxBaBS7/+3J5SGkIN8KFZvOuXjzY9x6vdMS0Sv
         4Gafv6HvPnoDULjxp4GnJWT/A0SR1A0eZ72GiTj6i6lCm2Vxak9kbTaTbmszazRyIhKM
         xyqA==
X-Gm-Message-State: AOAM530gP0Bp5cnaBhUnpsBGmH9zCDkLlc60QSGmkVOmVLoTnnM7Knrr
        q3LYp8eSfzvoAPu8X5fWV94=
X-Google-Smtp-Source: ABdhPJyDGxAbcxiFLfNu7YSLu396RFwNlslZuRnLduTDsNrnKJ6XZCRQeBgiugPyFJ3JOYUUUJA7hA==
X-Received: by 2002:a1c:f20f:: with SMTP id s15mr985323wmc.114.1589917891889;
        Tue, 19 May 2020 12:51:31 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5? ([2001:a61:2482:101:a081:4793:30bf:f3d5])
        by smtp.gmail.com with ESMTPSA id v131sm806864wmb.27.2020.05.19.12.51.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 12:51:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        glperkins@lit.edu
Subject: Re: [PATCH-v2] hier.7: Updating from FHS 2.3 to 3.0
To:     Thomas Piekarski <t.piekarski@deloquencia.de>
References: <33544f6a-5983-ed08-b2f1-a7a348c411f6@deloquencia.de>
 <8bbe0eae-b4a0-3b49-84a7-245b46eb9eff@gmail.com>
 <69e7cf2a-e0d3-bc1d-0bc7-81111cf80bbc@deloquencia.de>
 <CAKgNAkhnRiowDQmjuqLrgHbgTbR-EkjokZLJPP-+7PrHtTDirA@mail.gmail.com>
 <9ebe073b-0e66-3ccd-a815-974eae0f9318@deloquencia.de>
 <99ae2d82-e5a5-6511-a324-ee59da9642b3@gmail.com>
 <c1c52c68-5fa1-246f-06c6-2bbe647c65ca@deloquencia.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <06874f75-77b1-2a02-425d-ca6554a20fc7@gmail.com>
Date:   Tue, 19 May 2020 21:51:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <c1c52c68-5fa1-246f-06c6-2bbe647c65ca@deloquencia.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Thomas,

On 5/19/20 5:34 PM, Thomas Piekarski wrote:
> Hello Michael,
> 
> 
> On 19.05.20 2:55 PM, Michael Kerrisk (man-pages) wrote:
>>>>> What do you think about such rephrasing? Or should it be just deleted
>>>>> from the manual page? How have been such updates (where something in
>>>>> documentation is silently not mentioned anymore) handled in the past?
>>>>
>>>> I think it would be sufficient to say something like "present in FHS
>>>> 2.3, removed in FHS 3.0".
>>>> Shall I make that change, or do you want to revise youe patch?
>>>
>>> That is a good idea.
>>>
>>> Being new to the process I would like to revise, make the change and
>>> update the patch.
>>
>> Okay.
> Updated patch and description.
> 
> 
> Adding description of new directories (/run, /usr/libexec,
> /usr/share/color,/usr/share/ppd, /var/lib/color), stating
> /usr/X11R6 as removed and updating URL to and version of
> FHS.
> 
> See https://bugzilla.kernel.org/show_bug.cgi?id=206693
> 
> Reported-by: Gary Perkins <glperkins@lit.edu>
> Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>
> 

Nice work! Patch applied.

I don't where you came from :-), but if you want to tackle 
something else in man-pages, I'm happy to get more input from you!

Cheers,

Michael

> ---
> 
>   man7/hier.7 | 29 +++++++++++++++++++++++++----
>   1 file changed, 25 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/hier.7 b/man7/hier.7
> index dab9483d7..44c3139f5 100644
> --- a/man7/hier.7
> +++ b/man7/hier.7
> @@ -161,6 +161,12 @@ This pseudo-filesystem is described in more detail in
>   .I /root
>   This directory is usually the home directory for the root user (optional).
>   .TP
> +.I /run
> +This directory contains information which describes the system since it 
> was booted.
> +Once this purpose was served by
> +.IR /var/run
> +and programs may continue to use it.
> +.TP
>   .I /sbin
>   Like
>   .IR /bin ,
> @@ -186,7 +192,8 @@ It should hold only shareable, read-only data, so 
> that it can be mounted
>   by various machines running Linux.
>   .TP
>   .I /usr/X11R6
> -The X\-Window system, version 11 release 6 (optional).
> +The X\-Window system, version 11 release 6 (present in FHS 2.3, removed
> +in FHS 3.0).
>   .TP
>   .I /usr/X11R6/bin
>   Binaries which belong to the X\-Window system; often, there is a
> @@ -296,6 +303,10 @@ which usually are not invoked directly.
>   More complicated programs may
>   have whole subdirectories there.
>   .TP
> +.I /usr/libexec
> +Directory contains binaries for internal use only and they are not meant
> +to be executed directly by users shell or scripts.
> +.TP
>   .I /usr/lib<qual>
>   These directories are variants of
>   .I /usr/lib
> @@ -385,6 +396,10 @@ or
>   or
>   .IR /usr/man .
>   .TP
> +.I /usr/share/color
> +Contains color management information, like International Color 
> Consortium (ICC)
> +Color profiles (optional).
> +.TP
>   .I /usr/share/dict
>   Contains the word lists used by spell checkers (optional).
>   .TP
> @@ -421,6 +436,9 @@ same OS.
>   .I /usr/share/nls
>   The message catalogs for native language support go here (optional).
>   .TP
> +.I /usr/share/ppd
> +Postscript Printer Definition (PPD) files (optional).
> +.TP
>   .I /usr/share/sgml
>   Files for SGML (optional).
>   .TP
> @@ -523,6 +541,9 @@ Variable game data (optional).
>   .I /var/lib
>   Variable state information for programs.
>   .TP
> +.I /var/lib/color
> +Variable files containing color management information (optional).
> +.TP
>   .I /var/lib/hwclock
>   State directory for hwclock (optional).
>   .TP
> @@ -635,11 +656,11 @@ this directory holds temporary files stored for an 
> unspecified duration.
>   Database files for NIS,
>   formerly known as the Sun Yellow Pages (YP).
>   .SH CONFORMING TO
> -The Filesystem Hierarchy Standard, Version 2.3
> -.UR http://www.pathname.com\:/fhs/
> +The Filesystem Hierarchy Standard (FHS), Version 3.0, published March 
> 19, 2015
> +.UR https://refspecs.linuxfoundation.org/fhs.shtml
>   .UE .
>   .SH BUGS
> -This list is not exhaustive; different systems may be configured
> +This list is not exhaustive; different distributions and systems may be 
> configured
>   differently.
>   .SH SEE ALSO
>   .BR find (1),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
