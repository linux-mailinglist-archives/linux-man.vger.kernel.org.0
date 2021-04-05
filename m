Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22E70354158
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:04:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233221AbhDELEl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:04:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232355AbhDELEl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:04:41 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98F4FC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:04:32 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id a6so4592860wrw.8
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gv32WaGCZiOYTMYoQFX/+iQcrfdxarDA+s2FE6lktyA=;
        b=Q+R792Mt7zbOBW51FvlHONptpsu4rLxzR0IW4XryKSdq2r+X2W5RabmI9R2tKPvOkt
         2lu81DQo3b0vXb8dWQ4wRb8X6Ejf1a3LQIGUzaRcr4d8lZvJP8gft0ujEkT8l0nn+9Nm
         v1AKrD5ZSST2aTd04574qaMJEXhQucgNiVuKVxXm8uO74l4Nb2WWJNoZ+/b3gH+5ztB2
         FlZyxYOxfeuuPBf5Ti7ZmTGtxL0zJgltPdP6LFyiZqeDCzJi4KL5uUoRfuBeSdyuT0OU
         L5Mor1PCE4iNmIPuyAvUm+FogKfNw6RtnOn1hZQlVBbyXzbLf30WIfSTWYdf7fUu/gkH
         4NlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gv32WaGCZiOYTMYoQFX/+iQcrfdxarDA+s2FE6lktyA=;
        b=H5hwjrPkVbFyqaEUBWuQf8FoifiLbWnb1F+AfPfWX+RN6IF7d2NJ7LYSQ0BmclhWbS
         xBViJBfKmXQzsARPGmpcDRirLhMgTJyG8Q3+ILaQNFI1GNkZDfGdXlyCuL2jZ3ZtmEY5
         cNEmn+yYpeX+6nWsHdjh8qd8tZEltYEj8zPvrFI85tyrWK9Pxh0bXPBAVggSGMtu2prf
         ryAJWQK7wdNxngN25ZlmEvGHVq+5m+SjRSu8dpiIQxf1m58K29fx0N3G9XhQOY6zrF8z
         oqU2kVBFNRaVXoTJXmjFm1wZ98/PHCvIIoWp1jxTUWHrDrUl4JOFn9Qe7td9kKSSBLAy
         r54g==
X-Gm-Message-State: AOAM5333giw7SpkRe5Ddr8w/IvwagalZVMBynjg4AsSK8paORVW6+kwu
        PsfOfNt0BPtr5ShQvJwdjV0=
X-Google-Smtp-Source: ABdhPJzcLw6DHVDeGGg5HpILCDfmwq9aZJXCjpMjBPSn0tMhd7B96yommxFsBI7SNe9v8QtXTdHa/w==
X-Received: by 2002:a5d:550b:: with SMTP id b11mr29069804wrv.313.1617620671411;
        Mon, 05 Apr 2021 04:04:31 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id y12sm2210095wrs.65.2021.04.05.04.04.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:04:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 34/35] ioctl_fslabel.2: Make clear why exactly is each
 header needed
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-35-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1753f8e6-28f7-b64e-a869-8b4b4c03d815@gmail.com>
Date:   Mon, 5 Apr 2021 13:04:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-35-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Only the include that provides the prototype doesn't need a comment.
> 
> Also sort the includes alphabetically.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Patch applied.

Thanks,

Michael


> ---
>  man2/ioctl_fslabel.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/ioctl_fslabel.2 b/man2/ioctl_fslabel.2
> index af17256f0..30435e1e9 100644
> --- a/man2/ioctl_fslabel.2
> +++ b/man2/ioctl_fslabel.2
> @@ -25,8 +25,8 @@
>  ioctl_fslabel \- get or set a filesystem label
>  .SH SYNOPSIS
>  .nf
> +.BR "#include <linux/fs.h>" "       /* Definition of " *FSLABEL* " constants */"
>  .B #include <sys/ioctl.h>
> -.B #include <linux/fs.h>
>  .PP
>  .BI "int ioctl(int " fd ", FS_IOC_GETFSLABEL, char " label [FSLABEL_MAX]);
>  .BI "int ioctl(int " fd ", FS_IOC_SETFSLABEL, char " label [FSLABEL_MAX]);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
