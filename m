Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F6352DF5B7
	for <lists+linux-man@lfdr.de>; Sun, 20 Dec 2020 15:48:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727474AbgLTOsZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Dec 2020 09:48:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727251AbgLTOsZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Dec 2020 09:48:25 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B122CC0613CF
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 06:47:44 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id t30so8142436wrb.0
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 06:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ew7qqkCLAelfdxWMVgMl8JObME5y3Tll8BRJ91apTYw=;
        b=qKlyDP3253fIWL0xHOOOd/7Omn6K4RURyD2r5Dq9m0ODLzqGitfJy1vtytX90lhv2c
         J/ImcESzPlupJZDh3GjIjbS/zOgyieU+q8iS9Ak6tCumyA0sFh24JxJb3ZNYFtZ72fAJ
         O2/XCkh0y5sP+y/jFHpBkK0aSVy1yRDIjCN8zjVzSU0v90EPY1RvU6WX0Yo/RBGjApfo
         y148HzrzzZ4IatKM6WeM+5WUV/rMtcw7LO0nKI0T5UIMK0fwnGb8vdyWxSturPfAp7pj
         cbZGprhkB1OD23sfPGXVcAlJsFXRazeLAvMrkdRkDjnvSIwOylK1Ue1S4zyro/C+uW+U
         tJ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ew7qqkCLAelfdxWMVgMl8JObME5y3Tll8BRJ91apTYw=;
        b=Zl+fimyv3z4tmLBC5cT+QMyoYWmbwMYm3mh6pTYRKVNMzzVCXD72xoohIw2PrfSMZt
         xrSX97qlp1alkpBJSpX4m9g/0gmKGjvpoSRArg9TTmYUB46tTvWD2ldrtQdlWQnFnyRz
         ywN5H/TdnEyrr2YZIymKaH6+dALtpr6T+quYYlzBuYg+9oYg6SAQOVc6STbWe0exvRT7
         1kCjuP1jccVUbrCvn1LiUyGPA8ccES5LHWLbTbEW/K5NmNN5tGfdvgZuxhRBLELsS0V3
         AuFswaHhnp3uLJrtBITYj6VF0QzJkO0WW0nvcw8twuqvUngTVHkBBLoG6/s6H8NZg7o+
         RFYg==
X-Gm-Message-State: AOAM531iwGn1U2q7dsXkjYUfDjMepQTYoK+taeqJWJWDMjyYizvJA0Ge
        p3S50uAVYctsC6+bSRsO41+axy7shr3TRQ==
X-Google-Smtp-Source: ABdhPJzfbi25jb1u4n3pRigQW4WJltidGVI3/o9wMkPzaP6Gzjjzk0s5dS0cT0Je/g4gfAsniWoYwA==
X-Received: by 2002:adf:f891:: with SMTP id u17mr14162464wrp.253.1608475663499;
        Sun, 20 Dec 2020 06:47:43 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id r7sm14997591wmh.2.2020.12.20.06.47.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Dec 2020 06:47:42 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stephen Hemminger <stephen@networkplumber.org>,
        "David S . Miller" <davem@davemloft.net>
Subject: Re: [PATCH 3/3] filesystems.5: wfix: ntfs: remove FAT comparison
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201218153036.25244-1-alx.manpages@gmail.com>
 <20201218153036.25244-4-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3354d6f2-be51-243d-d042-3a07bfb5df11@gmail.com>
Date:   Sun, 20 Dec 2020 15:47:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201218153036.25244-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex and наб

On 12/18/20 4:30 PM, Alejandro Colomar wrote:
> From: наб <nabijaczleweli@nabijaczleweli.xyz>
> 
> The main point I was driving at with this patch was to fix
> "Microsoft Window's FAT filesystems" (i.e. FAT filesystems which belong
>  to Microsoft Window, which is decidedly wrong).
> 
> FAT32 first shipped with MS-DOS 7.1, as part of Windows 95 OSR2,
> but it's a (relatively) simple logical extension of the previous FATx
> filesystems (16 and 12 as we know and love them today,
>  I don't think the PC ever saw 8), hence the "VFAT" driver name ‒
> calling FAT-anything a Windows filesystem would be a flat-out lie,
> calling it a Microsoft filesystem would be, uh, facetious.
> 
> NTFS (as part of Windows NT), on the other hand, is wholly different
> WRT the scope and feature-set (it does borrow some layouting from FAT,
>  but reading NTFS as FAT doesn't get you very far, or much).
> 
> The replacing bit is also questionable, especially in a.d. 2020:
> while it is true that you cannot install NT on FAT (after a certain
>  point? my memory ain't what it used to be), and must therefore
> replace your existing FAT partitions with NTFS during upgrades;
> Windows NT 4.0, the last product to be NT-branded came out in 1996,
> i.e. you could not install Windows on FAT (and, therefore,
>  upgrade it to NTFS, replacing it) during my entire lifetime.
> 
> Indeed, in $(date +%Y) we live in a post-NTFS world ‒ putting NTFS in
> the same class as FAT beyond "is a filesystem" is a joke.
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied. I cleaned up the commit message a little
(removed leading white spaces, formatted to 66 columns as per the 
man-pages norm).

Cheers,

Michael

> ---
>  man5/filesystems.5 | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index 71be05230..7f2e02096 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -166,9 +166,8 @@ you need special programs, which can be found at
>  is the network filesystem used to access disks located on remote computers.
>  .TP
>  .B ntfs
> -replaces Microsoft Window's FAT filesystems (VFAT, FAT32).
> -It has reliability, performance, and space-utilization enhancements
> -plus features like ACLs, journaling, encryption, and so on.
> +is the filesystem native to Microsoft Windows NT,
> +supporting features like ACLs, journaling, encryption, and so on.
>  .TP
>  .B proc
>  is a pseudo filesystem which is used as an interface to kernel data
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
