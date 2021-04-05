Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B02B354175
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:16:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232476AbhDELQU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:16:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229639AbhDELQT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:16:19 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85007C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:16:12 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id l18so12159948edc.9
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OlKeyuRiL55VPsSmErGDLQPRdUMYGnwOIVVeEC+OAx8=;
        b=ITirlrHZ3r+ntdYCx1ZSTjCehcLC9JdYy4p6lQMJU4d95pSPdlOcG3n5ftLuY9NZdR
         buG1/k+Fx1ybiyxulDJF5lhmP+ZnPm5blCy6lUTQHvXvauPxB9uYkxWle/J4/FXV6YfR
         YiKeMnDaLVYGgX1a8mX31nsoBgPJBs1TZd7x0m3lN3tM7TRB80R1a67X/Y0P2IS0ByMz
         +RF6jSdjPpCTyAn7+bBTQhpEf1pcguk4i5jxkTyd2GmIXl5OpfdIPzdDMWoxvVmeIVgM
         SNvh0Vl9lSJ1NOa3eTdy20kdC+5IIfqkyex9hMNO3Nvt9ljJwqya7G5hBK5mHxXt6oV4
         lFpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OlKeyuRiL55VPsSmErGDLQPRdUMYGnwOIVVeEC+OAx8=;
        b=Sd7isTuhzJlGrV/JK7HYfTDzc/Yfyhr2LgvO8nFMjiOADAMbnzh1vB112GxB3utoBN
         N/NRMl9xJPPL6d6D/+yuTF86565o9ntnev5zJAf9Upy2TaVClp6p9T5jzW2ZSS95B6gR
         a0sDwGkEAOvdgkc/oZln86U982L4e28PfQUTddO9iZf9uL88K15O/ZLaqcES7qLlCUs9
         mtZKDBc1nEJbOM1EPdDKJRyZwIQ3oBRYHOFt1nDPJ/povDxdTcbx2FNXQ8S5vRvyAqn7
         5TkZ54joSSf6YVNiJljs5s38rTCxwI/x0yZuME+rGIK+nMIsGgjLg/Ey4eoUiAWQ4Gb/
         Qsmg==
X-Gm-Message-State: AOAM532uuw/lnEeg2y76PXPx2juIJID5vCmWv6/2reQ9fdSFfwGhJ4/V
        suzZjhA2kVzyUQ9jsicUv8o=
X-Google-Smtp-Source: ABdhPJzHEeFLe5VPP/wz5mxYrvRGzUZwHtJPlnGxMajZiFR/iam+ZT5JKRpRxqtBDq6WubzkWgOt7w==
X-Received: by 2002:aa7:db9a:: with SMTP id u26mr11843504edt.292.1617621371108;
        Mon, 05 Apr 2021 04:16:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id ho19sm8418987ejc.57.2021.04.05.04.16.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:16:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 32/35] ioctl_fideduperange.2: Make clear why exactly is
 each header needed
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-33-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <019e8d7f-fea1-ff90-8f6a-327f2e4de7ab@gmail.com>
Date:   Mon, 5 Apr 2021 13:16:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-33-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Only the include that provides the prototype doesn't need a comment.
> 
> Also sort the includes alphabetically.

Patch applied. Again, some minor edits afterward.

Thanks,

Michael


> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/ioctl_fideduperange.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/ioctl_fideduperange.2 b/man2/ioctl_fideduperange.2
> index 1df0628d0..82c7fdc28 100644
> --- a/man2/ioctl_fideduperange.2
> +++ b/man2/ioctl_fideduperange.2
> @@ -25,8 +25,9 @@
>  ioctl_fideduperange \- share some the data of one file with another file
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/ioctl.h>
> +.RB "         /* Definition of " FIDEDUPERANGE " and " FILE_DEDUPE_* " constants */"
>  .B #include <linux/fs.h>
> +.B #include <sys/ioctl.h>
>  .PP
>  .BI "int ioctl(int " src_fd ", FIDEDUPERANGE, struct file_dedupe_range *" arg );
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
