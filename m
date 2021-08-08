Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB123E3CB7
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:32:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230201AbhHHUcW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:32:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbhHHUcW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:32:22 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E074AC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:32:01 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id a8so24662297pjk.4
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vzTD15mb4wj/PKw7sKhNs+JMCE54AbWA05+Mvi23ojM=;
        b=eDIOPLqLchkD34r795Zx7g5LZhVoA8nk0IJBSZ344PPH3+1eQF9gDaLP/BZx5UgxkQ
         cqeZiPjb9JPAT8JcTy3ArrBzU0SSkz/o2TPkQ2wYCsJeuA622B85ekhMyfToOf85Q6UM
         fHyvx2LnL5Ucbo8wj8bZdNq6v8STYdnlW7kfJrLrsutJ6k+8VXb260dGrBEZO6VEtkWN
         mTPRT11yUhWm72m7Cm4FZO332NBZxLcdmlw4qsg5I+e4NZDK7nuN0u2ShZTtQUowwxcz
         1ysyJHiBGI4jsHt/P8GElX4FrlLO4kCnbREBhTnGkCeBBx2WgT19fPkabF1zzxZX/Tqg
         RHWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vzTD15mb4wj/PKw7sKhNs+JMCE54AbWA05+Mvi23ojM=;
        b=NDoyf4mgEJ6iUWRdeA9IaJm1E+6YxD3KiYeeGXXCYv1Jc7v9zQnovVxHytSeyF8wYR
         xwCVSJecIVPnaX2v56jPmS3sv54a34b9UUvus5rXziddBMQKBF233cl5N3R9V/aQcNVp
         B6apOy6D4iWkY0hhiFOzU8kQW0YuU42mztq+EnxucHm6FfYpccc9HjJQcjms+y7R6XNU
         uErS8XB9xgW/waWKGp0K15y1ogZD/wMsKD3QYFud0ZgA9my5Egf0wzxD9ep8DaxgW4Hc
         fKB/B1ZM42nC3UVblqJYZ55zLCbpB/ridjEd/W0fVZxhE2JgNx9t0QnEx3uw64w9uP3f
         yiiA==
X-Gm-Message-State: AOAM531e+ckqAbShgWvZEXunZBfOIKykJ8vqNg+fLl91AxItDdITfMlV
        XyqGiZdFXMIOaSpL57xVagHDZQIawAA=
X-Google-Smtp-Source: ABdhPJzmGkmoSO5w7PQ+VTHyj5Nurvg8iuqZGY9NBe8GaJKbhdsDN+TcQMI/2zWmdUxgSNXhXcgObw==
X-Received: by 2002:a17:902:e313:b029:12d:2a9:4bb7 with SMTP id q19-20020a170902e313b029012d02a94bb7mr7058137plc.45.1628454721283;
        Sun, 08 Aug 2021 13:32:01 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id d22sm19765796pgi.73.2021.08.08.13.31.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:32:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 12/23] termios.3: Use bold style for Bnn and EXTn macro
 constants
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-13-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3a0c556e-9519-3a09-ca0b-2df15735d6ff@gmail.com>
Date:   Sun, 8 Aug 2021 22:31:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-13-alx.manpages@gmail.com>
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
>  man3/termios.3 | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index 01c209944..b7cdec507 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -1068,8 +1068,14 @@ and
>  are nonstandard, but available on the BSDs.
>  .SH NOTES
>  UNIX\ V7 and several later systems have a list of baud rates
> -where after the fourteen values B0, ..., B9600 one finds the
> -two constants EXTA, EXTB ("External A" and "External B").
> +where after the fourteen values
> +.BR B0 ,
> +\&.\|.\|.\|,
> +.B B9600
> +one finds the two constants
> +.BR EXTA ,
> +.B EXTB
> +("External A" and "External B").
>  Many systems extend the list with much higher baud rates.
>  .PP
>  The effect of a nonzero \fIduration\fP with
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
