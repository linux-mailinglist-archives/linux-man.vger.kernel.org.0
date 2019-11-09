Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0DF26F5ED8
	for <lists+linux-man@lfdr.de>; Sat,  9 Nov 2019 12:55:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726485AbfKILzo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Nov 2019 06:55:44 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:53607 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726252AbfKILzo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Nov 2019 06:55:44 -0500
Received: by mail-wm1-f68.google.com with SMTP id u18so1073665wmc.3
        for <linux-man@vger.kernel.org>; Sat, 09 Nov 2019 03:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=g/cXSqr/XmZ2zn1LA4ozP35/FBTz4/8i6+rNMIv+tyk=;
        b=unRM7/68dC36LpYXiRd7Irnk5g5Zg07b+almIJ5yUcTlsOoTb0mEQL55BtqSfW0gYW
         LMxac1PuSpnsc0DXQ/tApI8xX34OHIDpbtyvjQg4apO31+IYKIKCOuJbSjxQTllHpIBi
         XQRgGXaKze5tPUDc0Xru6qheMFX+C+wV5LlOuwLNZZW0Faz3RdATcBJYKll9LDXXMfvO
         KM9570VJtMNtwGKJTDAHwD6az+RXO+FyafG4JdWdF9KGMKMDCd1+jrrWIonOiOlOw7a+
         wcWRYqtCwF0gUq8Z2cXKnE65Im5DA8kNWr8s6LUbCwXcxmftYgCfquNLBSGH5CFfimGL
         zF6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=g/cXSqr/XmZ2zn1LA4ozP35/FBTz4/8i6+rNMIv+tyk=;
        b=m5aZB1ezNwQTYBV+yJYTjZ4I6XPHfJxFwIY/8icge8XMICwZ4l7ph8Go/viiHU1qSc
         ycKjjaIEuuYaynKdKG4RopSsgSN6v2M/z2/bzcFYk4/AU8S101tTZPB8KZBoheMcID6I
         ggjjlWPD3UDsvPhWFDgR1fwaIVfHfwT4boAYiSKNXtjMVuaLgV1EI782HvSf2JAAhRxu
         OL4ZUEgPUBIXepjJP9rUu4sws3ohVoy0yqWICtwY7I6CMeiuu/dro/SbQWuE0cQ2HifB
         NMvGFOu1rwQfJNuXwJZRUunFQbhjXKCR1rhcYMUzPSvU4Hw8L95aJodFwQApk43LOyD8
         E+9w==
X-Gm-Message-State: APjAAAXUILW913EQJDSuxAr36jaZBQOvV9zZgag+ER6bI1qzo1q/4tjn
        eZ8FxB36lnuMs9bwZuZFtMxiQ4dQ
X-Google-Smtp-Source: APXvYqzU382vINIUBKMb2GNiCEb0QEAjYkJAdojJYxK6Bhk2x5x/LafnmrxGHFEe9r7LvsInfFwIRA==
X-Received: by 2002:a7b:ce11:: with SMTP id m17mr13367205wmc.113.1573300541885;
        Sat, 09 Nov 2019 03:55:41 -0800 (PST)
Received: from ?IPv6:2001:a61:25f7:501:a05a:4985:4904:9989? ([2001:a61:25f7:501:a05a:4985:4904:9989])
        by smtp.gmail.com with ESMTPSA id v8sm13301492wra.79.2019.11.09.03.55.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Nov 2019 03:55:41 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] clone.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20191109085046.704-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e4af85ae-a712-4a4b-c9e8-ab13c7569140@gmail.com>
Date:   Sat, 9 Nov 2019 12:55:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191109085046.704-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/9/19 9:50 AM, Jakub Wilk wrote:
> Remove duplicated word.

Um -- wow. That was quick! Patch applied.

Thanks,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man2/clone.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index 02422b82f..db1ab586a 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -78,7 +78,7 @@ context are shared between the calling process and the child process.
>  For example, using these system calls, the caller can control whether
>  or not the two processes share the virtual address space,
>  the table of file descriptors, and the table of signal handlers.
> -These system system calls also allow the new child process to placed
> +These system calls also allow the new child process to placed
>  in separate
>  .BR namespaces (7).
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
