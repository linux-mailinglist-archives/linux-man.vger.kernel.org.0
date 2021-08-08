Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF2CD3E3CC0
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:37:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231576AbhHHUiC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:38:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbhHHUiC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:38:02 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F1B7C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:37:43 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id j1so24710984pjv.3
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HqOaiH9KDQtI90q03nbqew9f7mMmchRtlc+i9xSBFTA=;
        b=LfE/aMivz1S13AxxEQXd3NSLCVsu/lk2Q1irKBhQIMTkCZCK5iR9qCeTUNUpBVaquW
         YLp/UFhIKd7XBzZO1/hENIo4iiRwpQfC0wcdBUd/lSV+vmEOmTYxEAgHKvlvd8FPdajU
         KBKe9Mg69gMeonqKPHU4kDZml1pIH9hSYobhpQ6Q3EEmMYxR6ymv4dsjS5ofvJscLZmN
         KBdLg11zbOOwV4tkAntRJtnyW/opx7kpSde1z0BNs26k96R80AXqmFcFLlRrs+/YcSY6
         +D5P68CzRMXIU14XxVyK6co6YDGOY57TWQEGWB1nQqhM0aIOhSNncIPCubPSDtUiU6Dn
         D43A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HqOaiH9KDQtI90q03nbqew9f7mMmchRtlc+i9xSBFTA=;
        b=RVJcKsmYGgxb9CncI+oHpq2AUPRxDoi8LeSLrVdxXcPOa/BJ2M1igvmHV/a+ML5UAJ
         8JrhCC5SbFl7xEiATeRVe/8fYDM4K9tld1X7mCJoxz1S/BQAMgA7RiNMcd/Yw3pPpg9B
         wU1HCXy0s59v6VVegg5zvxBbOnJXY7mHrUYN+Brbs95Lan0S7KpM8+lgok+/bHKDkNYH
         N5GRuXxflpnStl1Ph3yRqi8SmBCHHoxdUcdLsWbQqW5wsS/a51Raf0cVcbhGii/r/sBY
         qZR4+JZZMcp6iywBd3DAkJ0xh/A2CTQ5/UBE/6QcD8avAneLADwzQ16ufHGziFFAX74Z
         jrZg==
X-Gm-Message-State: AOAM530grQUiC+ASmeaWJqj76iOfbwbA49tkp/nY+KXJNZmHa3TRpgS4
        SuWRJAUWldfD2b8ukw6wq5Fb2sCXolU=
X-Google-Smtp-Source: ABdhPJx7aNMvzvy71mD0I31QxGcMd5WZ+8cVr+PrPsNTG3fsLjIO/UFXyMbFmYUm4cxldiHRyikmTQ==
X-Received: by 2002:a17:90a:116:: with SMTP id b22mr5882844pjb.97.1628455062518;
        Sun, 08 Aug 2021 13:37:42 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id b190sm15914890pgc.91.2021.08.08.13.37.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:37:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 13/23] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2,
 TCSETSW2, TCSETSF2
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-14-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8afbd9b4-9473-f5fe-bee5-bee313f8b50f@gmail.com>
Date:   Sun, 8 Aug 2021 22:37:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-14-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pali and Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: Pali Rohár <pali@kernel.org>
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael


> ---
>  man2/ioctl_tty.2 | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index 46294e63f..967b5c4c7 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -77,6 +77,35 @@ The following four ioctls are just like
>  .BR TCSETSW ,
>  .BR TCSETSF ,
>  except that they take a
> +.I "struct termios2\ *"
> +instead of a
> +.IR "struct termios\ *" .
> +If struct member
> +.B c_cflag
> +contains
> +.B BOTHER
> +then baudrate is stored in struct members
> +.B c_ispeed
> +and
> +.B c_ospeed
> +as integer values.
> +These ioctls are not supported on all architectures.
> +.RS
> +.TS
> +lb l.
> +TCGETS2	\fBstruct termios2 *\fPargp
> +TCSETS2	\fBconst struct termios2 *\fPargp
> +TCSETSW2	\fBconst struct termios2 *\fPargp
> +TCSETSF2	\fBconst struct termios2 *\fPargp
> +.TE
> +.RE
> +.PP
> +The following four ioctls are just like
> +.BR TCGETS ,
> +.BR TCSETS ,
> +.BR TCSETSW ,
> +.BR TCSETSF ,
> +except that they take a
>  .I "struct termio\ *"
>  instead of a
>  .IR "struct termios\ *" .
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
