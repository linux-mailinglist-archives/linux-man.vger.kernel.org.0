Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D261F37789D
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:10:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229847AbhEIVLQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:11:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbhEIVLP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:11:15 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 258F0C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:10:11 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id i5so7113986pgm.0
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pkoPQvr2LgkZvacNr1Ekyn7Lo8/PEgDIvlBZQt5Ok0U=;
        b=s14liN7kLoO4eQdTge3Lbd62Kc30xXKCoEU8NdbFUIzWsBgAeX7+0VhrqBa8TGyDv6
         bKkJPLKYNDs9BoDf2YwFdrVr6/zvTOMEf2a6pHDs2/mRjkakANmHmAsoqvllytYPtsmE
         Hs4sio6vGIKcXN7Frw6s+/KjjHFbZ731NztaQg3eZKvuDN/MoAORPOSBu9EwnpeD3Wui
         6xfckEP7XDkGXgY2hrYp7LFP9fpS7q+vYfYRLreemcwErYGOLvndzHEuk3TDiqSsZMJK
         78lsKVUryRdCIK6/NF2LOT5ch/NIGBzI8AW/gmRUWbpH7EOEzGwUYCXthwo7QEA2BJUl
         3KTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pkoPQvr2LgkZvacNr1Ekyn7Lo8/PEgDIvlBZQt5Ok0U=;
        b=Ovhs8pdJ+ZCUzX2obLlKWZNU4DkNptqajlJAas9dpNkyDHCfO9MANJjYn29EtbTq1k
         yUhQwZUog9wkJe1/jWY0j0wSPxD2F25N4krigNZ5W3pvO/dKn+NErnEPclIH2naiooDf
         muCyHhnrHwMQXhUQHQ5rJPBJU6AsEtt8rpnajOkWauWxB9H6KpihW2Ix1n6/AKog+of/
         PUQRldUbOoldG4+YTFr60bNAZ/zIk8rFS11vocxNM9bkfEUGSi3ySga4pcwnfAreIF9O
         Y+ManUrRrp1CDxZk+5yCOLW43SvV9GZz/Wto3Ik+vZoMppMWMzrM1cpsC153vAp1zt1s
         QRZw==
X-Gm-Message-State: AOAM533t+q3ae7gr1J+MMUmXuMuXjdA/jKcsCN9TWBUo07DHYOulZnJe
        Ei7zdrXcRhSVakHELqQ5dRn6yNUvPLU=
X-Google-Smtp-Source: ABdhPJxM1XJ2NcOty3S5UioF4kwdK3IQhcUJ+ahi8IahyAdPuVdkZf2tUXTfRvSzq4Wy0faeQeucaw==
X-Received: by 2002:a63:af46:: with SMTP id s6mr15228693pgo.446.1620594610502;
        Sun, 09 May 2021 14:10:10 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id p19sm9329086pff.206.2021.05.09.14.10.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 14:10:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 00/17] Patches from others
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e9328c79-f69a-4c73-d9f5-68c316782c8d@gmail.com>
Date:   Mon, 10 May 2021 09:10:06 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 5/10/21 8:19 AM, Alejandro Colomar wrote:
> 
> Hello Michael,
> 
> These are the patches that I have merged from others.
> 
> Cheers,
> 
> Alex

These all look good, and I've applied them all.
Thank you for accumulating these in my absence!

Cheers,

Michael

> ---
> 
> Akihiro Motoki (4):
>   move_pages.2: ffix
>   semctl.2: ffix
>   fanotify.7: ffix
>   signalfd.2: tfix
> 
> Alejandro Colomar (3):
>   setbuf.3: tfix
>   sigwaitinfo.2: tfix
>   getopt.3: Minor tweaks to James' patch
> 
> Aurelien Aptel (1):
>   flock.2: add CIFS details
> 
> Borislav Petkov (1):
>   sigaltstack.2: tfix
> 
> Dmitry V. Levin (2):
>   move_pages.2: ffix
>   ptrace.2: mention PTRACE_GET_SYSCALL_INFO in RETURN VALUE section
> 
> Jakub Wilk (2):
>   Changes.old: tfix
>   exit_group.2, getunwind.2: tfix
> 
> James O. D. Hunt (1):
>   getopt.3: Clarify behaviour
> 
> Johannes Berg (1):
>   clone.2: tfix
> 
> Vishwajith K (1):
>   shmop.2: tfix
> 
> Štěpán Němec (1):
>   execve.2: tfix
> 
>  Changes.old        |  6 +++---
>  man2/clone.2       |  2 +-
>  man2/execve.2      |  2 +-
>  man2/exit_group.2  |  2 +-
>  man2/flock.2       | 25 +++++++++++++++++++++++++
>  man2/getunwind.2   |  2 +-
>  man2/move_pages.2  |  3 ++-
>  man2/ptrace.2      |  7 +++++--
>  man2/semctl.2      |  2 +-
>  man2/shmop.2       |  4 ++--
>  man2/sigaltstack.2 |  2 +-
>  man2/signalfd.2    |  2 +-
>  man2/sigwaitinfo.2 |  2 +-
>  man3/getopt.3      | 23 +++++++++++++++++++++++
>  man3/setbuf.3      |  2 +-
>  man7/fanotify.7    |  2 +-
>  16 files changed, 70 insertions(+), 18 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
