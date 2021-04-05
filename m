Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BC0C354155
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:03:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233232AbhDELDf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:03:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232355AbhDELDf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:03:35 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FDD8C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:03:29 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id d191so5550375wmd.2
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5QxE4+ZNAtnklJjhT/3qWNNmae/Bomq8I6QQD4ZTyUg=;
        b=fLYmKidCsfssuAIqqBz5MZG4A2ow5l2kzQ6DOT9C23u6hxmGv5F034/JXoywgGX3Me
         2dkoocC7WDM2kiX0K+74A5o0OOU/xyUkwmex5jteCOZucTL9N7/+jADZPITlN0raCd0g
         0+FCOfhNvHKw38xLtlH7Kbt56ctddsAwQ/jOn8MX09DGPADrqcjKy64jsXsZGSDzLvsp
         ctE3GdRkhTjmcso2N6WQFReaaEBx4UPNjZ4EEdTYMAjtNFPsLMkyLnNSLv11QD/XSHLQ
         n/VlNMKFO+4TBzCf7BkB+12qWSBpIc5pFqvAqtFBAgGBIQwWhlTGhybcfXoDFks7e5Xa
         drqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5QxE4+ZNAtnklJjhT/3qWNNmae/Bomq8I6QQD4ZTyUg=;
        b=KHvONJo+XHzK8Dt6y0zzXi4jKwYvd05gLZz9+DrTB//gHCoOlnzIw3JdxA55+MG02J
         byeG1HbmjoxLkfTFkkWz3Ef3EDdBnZrQD2RRW7mRDJcTf1NJ7Og6ctOFy/v1Cz/EQoiN
         Krlm4P2bpPgbDl0iIy+4uOlgGCXsD72tYwuYJyYGXIsGSY6Ujmv49d7j6c2fsbrqUcJQ
         L4BAffUBaFqHBYjRShEoVJNt4LxeIEJPq3rIsiOC1V9vEfp7VFf49z6NVceYA7uAHbRc
         BcFBp0n7yEB9YBy0gJpffHqUJgZBYdaOvm85boDC3Qy/e4oRyJOV19AIL9keTWSU4aYc
         kY7Q==
X-Gm-Message-State: AOAM5338VGPXQ+69ikQqrFRbxhKnt2MWCboPAudLhswgCWKBmAIvrKJy
        oOtkL/re7otjoAQT/bOTAuU=
X-Google-Smtp-Source: ABdhPJy7eu+s0PhSy1Y1mAwqpBAJy9J3352VTnnCN6RCPAAzhLUowAkWqN/gzQCQ+HTM5KwYCf4GTg==
X-Received: by 2002:a1c:e38b:: with SMTP id a133mr5394121wmh.71.1617620608192;
        Mon, 05 Apr 2021 04:03:28 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id o7sm28122864wrs.16.2021.04.05.04.03.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:03:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 30/35] ioctl_fat.2: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-31-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9144f185-8a7e-6219-7885-f267bc9e333b@gmail.com>
Date:   Mon, 5 Apr 2021 13:03:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-31-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/ioctl_fat.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)


Patch applied, but "ffix" ==> "tfix".

Thanks,

Michael


> 
> diff --git a/man2/ioctl_fat.2 b/man2/ioctl_fat.2
> index 263738dad..8914505c7 100644
> --- a/man2/ioctl_fat.2
> +++ b/man2/ioctl_fat.2
> @@ -34,9 +34,9 @@ ioctl_fat \- manipulating the FAT filesystem
>  .BI "int ioctl(int " fd ", FAT_IOCTL_SET_ATTRIBUTES, uint32_t *" attr );
>  .BI "int ioctl(int " fd ", FAT_IOCTL_GET_VOLUME_ID, uint32_t *" id );
>  .BI "int ioctl(int " fd ", VFAT_IOCTL_READDIR_BOTH,"
> -.BI "          struct __fat_dirent[2] " entry );
> +.BI "          struct __fat_dirent " entry [2]);
>  .BI "int ioctl(int " fd ", VFAT_IOCTL_READDIR_SHORT,"
> -.BI "          struct __fat_dirent[2] " entry );
> +.BI "          struct __fat_dirent " entry [2]);
>  .fi
>  .SH DESCRIPTION
>  The
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
