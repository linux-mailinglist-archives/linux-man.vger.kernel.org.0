Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E42035416C
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:10:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233591AbhDELKP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:10:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232721AbhDELKO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:10:14 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C02AEC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:10:08 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id x21so12153730eds.4
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Q2xbNJukARq+VedCoE4Ye3l23GLZqaHV5I0EQQCdBqs=;
        b=rdbHQOaYxhwnDQrKzYfUwSRHAxGWvgUfEgOA/u4amKkae3MpzHIVn4hQ405e7vkEu8
         EIKrxjT9LAchNIvzOAeEhDc4Wi/NiWuCCbHLYoGdk/N/Yxl95fE7+h2rlP/bfxt16CxJ
         Cc5MEP9wX0dLo8AITWS+TRGqjx8rKbFz5G4MIbcHLCw7t4I3MmXCjW16z7z6EgKmBcvu
         4/NpyrmCT1POTkC4kVKtU2L5ph5ajgJQMIKj2Za3BpEiegTHpGkf2DebjbliUJ3K/xVD
         V5NMfHA4d2nT2qdaAHtqEVsuaFmGrv9vNd3CStEqRQ3twFgI8dv9Mlhy6rsBoiD2MGax
         em5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Q2xbNJukARq+VedCoE4Ye3l23GLZqaHV5I0EQQCdBqs=;
        b=uMTfC+mOAgGTWE4hR4aeVSQJhDuknWauZd05Ax5RUGG4KIppGnn+Z5yASF++1Alqga
         svLGQonydp5W7vCQrD0d2Kueu5njZTAz+MiPyI21onNB5hmNjgWlpp7RL+t8lz67F4Yh
         z7ksLcJDnXJUd0/sIclv3iafyrT0a7JSpcqVsN+7NWcAB48hUDSZY+wDJju92KHnezuR
         Ztua2WJ0FV2I2X0/281KVkWm3Wx0HCGlruKhgjs1FgwNg1FIK7ddXrjCp0vTK0KH98/J
         Nm/yXSpNDIHHrYW1QzUrg3ZdJu8udDKW+y95pd8G92eyN1zx4iDYdhPJ/r9OD7sOCDVb
         L/zQ==
X-Gm-Message-State: AOAM531y9/YgmwiKHGSx5uWx2NhfnewM4iVKBeXtoQ7Fiwy7bAMQ8Q+G
        NYRG54/yLZLT3H+JXGgmQvkSDSny/Mo=
X-Google-Smtp-Source: ABdhPJynNXNyVaqIdveybHUzV4qRjOLnk1pD2WoRMG7hCceT4hg6JukNTsK+/diO+SL8pJXtSQGu0A==
X-Received: by 2002:a05:6402:3049:: with SMTP id bu9mr31323824edb.104.1617621007590;
        Mon, 05 Apr 2021 04:10:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id a19sm1830401ejy.42.2021.04.05.04.10.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:10:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 35/35] ioctl_getfsmap.2: Make clear why exactly is each
 header needed
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-36-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e4f167cf-7d5c-f957-04a3-c0130c9afbef@gmail.com>
Date:   Mon, 5 Apr 2021 13:10:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-36-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> <linux/fs.h> doesn't seem to be needed!
> Only the include that provides the prototype doesn't need a comment.
> 
> Also sort the includes alphabetically.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied. Again, I did of editing afterward.

Thanks,

Michael


> ---
>  man2/ioctl_getfsmap.2 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/ioctl_getfsmap.2 b/man2/ioctl_getfsmap.2
> index 4ff1c8a90..f87fb5c7a 100644
> --- a/man2/ioctl_getfsmap.2
> +++ b/man2/ioctl_getfsmap.2
> @@ -25,9 +25,10 @@
>  ioctl_getfsmap \- retrieve the physical layout of the filesystem
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/ioctl.h>
> -.B #include <linux/fs.h>
> +.RB " /* Definition of " FS_IOC_GETFSMAP ", " FM?_OF_* ", and " *FMR_OWN_* \
> +" constants */"
>  .B #include <linux/fsmap.h>
> +.B #include <sys/ioctl.h>
>  .PP
>  .BI "int ioctl(int " fd ", FS_IOC_GETFSMAP, struct fsmap_head * " arg );
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
