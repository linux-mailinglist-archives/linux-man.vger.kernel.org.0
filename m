Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 657283541A4
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:41:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234141AbhDELlW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:41:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232755AbhDELlW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:41:22 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 648E8C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:41:16 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id u17so10132294ejk.2
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZgLsOVAf4AqzKY5QFPr6KQcLoJB0BlxYi6Sr7ULLWqI=;
        b=Lc7i0gjT6ZPU5lnOGr1thcP8YMGpV1181SkWIPWd6c03G2Cf3mMUGfq0eKtGF+cm/t
         gQPnQZb+Q0xRjS2+rFBPd4c99ddnOXA0MNQs57HQ5gMtKHd3fB/vStbsrG4Zkk4dfZTw
         2qwdx8K6z9lHhuF47da6mzTHZQLrPUUT24tgJ72eoehEL8FOjIN/yHy0zotrLjWyz7ch
         vDWiBWfcQ348MHmQ5Rh3Z/78lslsn3iBOtFSDAZWpZkiXnqUFpUoydemfbglQxBPZzMM
         lnZAG6GPX6d0dr4OUIIcKQyVOUMbpX14ecGQAUlBeXsbkUFdCWLsEtyAkr1Ja5bAm06x
         m4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZgLsOVAf4AqzKY5QFPr6KQcLoJB0BlxYi6Sr7ULLWqI=;
        b=G0qYQQicTDI/IOsVtbUKyWds2Cty922UNUFZO1fcJzceGS7Fj9Ge0DLdOE1E2gZVT/
         Xkt75fTPZ3B/jRyhH+t96mIbSMOiKjhi8zrSJHC2xN0cDzYqT0x/yRlYwvWJYjKVhIq1
         XJmNPa8k8Vb4/v2R8gG7ui7Knrw54OBXGkySzNJsM3Kaj78HSpllu86uKfgerInCmjYO
         FdpyJ9xXxC0oXSMA6JmVV/69kmR/i38+IeS/aVj0/hrkm5h8MYYO44/ngBfHNF/ceQNg
         7mHzQYA8MuPwnnrQ52XlFgNzK29yNUkRUKt4nxQwXfiWx8Xbh5lgsx2crnviiWafvVdW
         Fnpw==
X-Gm-Message-State: AOAM532PBlbUsbUhxjwv+DV72nDXVnvEYshRsFbQfFbuy7KLSteZVm+3
        4LJLKfSD8e8i9kyMsOjNYP8=
X-Google-Smtp-Source: ABdhPJzZ6zZflFnmeYBEkmiScXrOoSweg/c5z9lRRZ2+DZQ4cCRJ7UjeMFZPuHmQswgcD5mkvxqQgA==
X-Received: by 2002:a17:907:1b19:: with SMTP id mp25mr5386155ejc.154.1617622875156;
        Mon, 05 Apr 2021 04:41:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id h8sm10681562ede.25.2021.04.05.04.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:41:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 26/35] delete_module.2: Use syscall(SYS_...); for
 system calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-27-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e02a78e6-3f13-1659-907b-7f45fa4248b8@gmail.com>
Date:   Mon, 5 Apr 2021 13:41:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-27-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/delete_module.2 | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Patch applied.

Thanks,

Michael


> diff --git a/man2/delete_module.2 b/man2/delete_module.2
> index 174ef04d2..21c9e9d8d 100644
> --- a/man2/delete_module.2
> +++ b/man2/delete_module.2
> @@ -28,12 +28,11 @@ delete_module \- unload a kernel module
>  .SH SYNOPSIS
>  .nf
>  .BR "#include <fcntl.h>" "            /* Definition of " O_* " constants */"
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.BR "#include <unistd.h>
>  .PP
> -.BI "int delete_module(const char *" name ", unsigned int " flags );
> +.BI "int syscall(SYS_delete_module, const char *" name ", unsigned int " flags );
>  .fi
> -.PP
> -.IR Note :
> -There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR delete_module ()
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
