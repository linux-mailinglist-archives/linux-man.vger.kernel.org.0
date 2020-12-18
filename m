Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1B692DE542
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 16:01:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727255AbgLRPBN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 10:01:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726713AbgLRPBM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 10:01:12 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63E93C0617B0
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 07:00:32 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id m5so2471666wrx.9
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 07:00:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VpF+Kxewj0vGk5yIXx5XPK+LOS3NNAV7pipNDgIzABI=;
        b=hOtjP8i+I8Y8eYt1RSQGQMNiZjnPGF3VV1Sv9pyUUo+fQhDP/OlbhA3fgFPOrvHzqT
         Tj7+mQ9H71rRTshrvPOTLd3bgV56wGPtyIRovnjHMcY3hbWCvYXy7uoVAtN16Le46DkT
         tMcDdzXtHDS+jMdNKW13Z35X9rqpZ8ibd4WZG4u3YqoT16IbdsjlTIqW8ckpscE/ev7Z
         hwoyZw583wrKUvYNGXHkKySYY7jDQ9tzF8ilJ7iXly12j9Y/6IF8fk3PcEETaM60aHvY
         kxm5DzKqz8HaD5GhN/BbWVAJzkbZ8uOA2+z9OwRHxS+OruN7wGZ4sIy0xbKrOSNcvzx0
         sq9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VpF+Kxewj0vGk5yIXx5XPK+LOS3NNAV7pipNDgIzABI=;
        b=S6/XtKpgUXzvUqn3dUiRTtIlMLfrPWifm7dt9l9Z5MgX3CwVGkCTIT62C5VZ0v1Pks
         Iqk/Sf9Suy5ULDcXukti3tpFL4QWE26RvTUewBEE6dGvk+z7K9fIiCgKuoX3Zg+KtOqZ
         hfVwKX/CHNHhaRfA3IzODkt332iYE4lZ8Oihapodft5C9kYwYLFA6W6zz9rWLeiBT2N2
         FC5ow9mXGFSs66WOVULefQObAqhnptKfR5fHM+dFLkuWVp6noSq3NAyK4Kcgh9Ead/XY
         u8/nWAhEqOKgdelwmQtrteQnMnVPnBslw6BTEHeu/NLC1fxvCvdvGcpg+V56v1HVWlAG
         N20A==
X-Gm-Message-State: AOAM533p7EYE2H5oWyOpUty/ALx2CBkoA4CVJq/0bx5A9L7hDS1JcyRR
        V2N08rAyULS71hqOcKgJXoM=
X-Google-Smtp-Source: ABdhPJxH5tPdj1KpmIBnjH+5Vo6cjDSvKWPRe2oQuoaSRwXHneDozNj3VSRzhMOPnYrI9Ll4ui9UeA==
X-Received: by 2002:adf:ce82:: with SMTP id r2mr4896090wrn.181.1608303631185;
        Fri, 18 Dec 2020 07:00:31 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id i16sm13589300wrx.89.2020.12.18.07.00.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 07:00:30 -0800 (PST)
Subject: Re: [PATCH] filesystems.5: rephrase NTFS description to avoid awkward
 (and wrong) possessive of MS Windows
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
References: <7b8f5a9ada6202a3f9882e06a0a3ca9c193c9000.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
 <9374ff73-4562-c5c1-29e9-c347730f49a0@gmail.com>
 <20201217175234.gxngpbu2mhll2fdz@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0441300c-03c0-4279-3a25-47b65233b0d1@gmail.com>
Date:   Fri, 18 Dec 2020 16:00:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201217175234.gxngpbu2mhll2fdz@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ahelenia,

Thanks for the background!  You're completely right :)

I added your explanation as part of the commit message; it was very
informative.

Patch applied!

Best,

Alex


On 12/17/20 6:52 PM, наб wrote:
> On Thu, Dec 17, 2020 at 05:17:51PM +0100, Alejandro Colomar (man-pages) wrote:
>> I don't know much about MS,
>> but AFAIK, it was MS who designed FAT32.
>>
>> I'll quote Wikipedia, although it may be incorrect:
> These are good points, though the miss some of the depth of this issue.
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
> the same class as FAT beyond "is a filesystem" is a joke, but in my
> haste and pursuit of a small diff I didn't consider the above.
> Please see below for updated scissor-patch.
> 
> Best,
> Ahelenia
> 
> -- >8 --
> Subject: [PATCH] filesystems.5: reword ntfs description, remove FAT
>  comparison
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>  man5/filesystems.5 | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/man5/filesystems.5 b/man5/filesystems.5
> index 301c8fb83..3727d7a7a 100644
> --- a/man5/filesystems.5
> +++ b/man5/filesystems.5
> @@ -169,9 +169,8 @@ filesystem was removed from the kernel in 4.17.
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
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
