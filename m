Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 14DFC1A4241
	for <lists+linux-man@lfdr.de>; Fri, 10 Apr 2020 07:34:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725844AbgDJFex (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Apr 2020 01:34:53 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:52448 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725839AbgDJFex (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Apr 2020 01:34:53 -0400
Received: by mail-wm1-f66.google.com with SMTP id t203so1390120wmt.2
        for <linux-man@vger.kernel.org>; Thu, 09 Apr 2020 22:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Bw0MybbwG/1A2Z24Z67AO8iO0zbWX72A2K3y1co1/xM=;
        b=vApNA2AcghMnugKs26rezjssXCohszX1n4WnCx4X+il9FCjuzjAxKSkaztvfn99/eR
         Qskw6O6tg/anf2NM7SETvsT6Il3SS0k31rmx4kItWlniyiFZaUIujKENsQV8QDLYeTjN
         pu/1/fxGb+j2EU2KvoCQ14O/oTaTiNauIa8EbkDKhAOfCf03xjeoSOtwf1YlrKb1L7y1
         rxoVcq8xhwfoqqKzqe5752Jk5G1pQVbvLIAvR2uvQhGAdbiQuZQClguEEbW+QbW+4qaI
         sKb9CzO5CHGgijRazua6sx8uMObRmydfsvJxjAIzglJnCC4Ab0ekk/0lcZieYHh6wSti
         lzuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Bw0MybbwG/1A2Z24Z67AO8iO0zbWX72A2K3y1co1/xM=;
        b=DjkrH9BXiIr6Gz4TrNCDBK7gNxadMVoHDGbRUAy+K5yzs9zulZvTkpkeOkKgx560jV
         y7e35zuIGG3j8jiqWkib+KmagFpq+eigRGhihjz1I57VmSVdsvNCurmFNgAJ8aha2eB+
         +pfZTwcVY2VxoilkLSPvRSNYjR5MoZE2TNG3vCtWHspniDdtGSg7SalkljPpyMIhKz/F
         W7jKydTs3+C6XyMsg1JC4wKgHkExuY4RGVUZCFoUq6aKqFurd2QxRaMkEy46vigVX5OG
         ex10/zUg78jc49Cky6+tsYZGP+R+q7M4m5oG7h0uokPYlQ4goQkdoeszhgJ0xfbbG5l3
         71kw==
X-Gm-Message-State: AGi0PuZmMJYh9NWTNsdglRuJEeNvRArAbuqvZk9nA/5Bslz7Ol4gM0dS
        TRWj9jjJwl+MmbvfqmBTxfYBXvZU
X-Google-Smtp-Source: APiQypIUWEaHIyJIjXxTLCtuYZ3Y7Hljmjkg3fWD5DzPZe0qS97T9lAVZfpNgpf7Y6tED73SGkwIPQ==
X-Received: by 2002:a7b:cb81:: with SMTP id m1mr3270657wmi.1.1586496890837;
        Thu, 09 Apr 2020 22:34:50 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id w5sm1422942wrp.30.2020.04.09.22.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 22:34:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] proc.5: clarify cmdline mutability
To:     Mike Frysinger <vapier@gentoo.org>
References: <20180919182142.3054-1-vapier@gentoo.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d370b5dd-48f5-8bac-c22e-14a0fb9e16fd@gmail.com>
Date:   Fri, 10 Apr 2020 07:34:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20180919182142.3054-1-vapier@gentoo.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mike,

On 9/19/18 8:21 PM, Mike Frysinger wrote:
> From: Mike Frysinger <vapier@chromium.org>
> 
> The cmdline file is a window into memory that is controlled by the
> target process, and that memory may be changed arbitrarily, as can
> the window via prctl settings.  Make sure people understand that
> this file is all an illusion.
> 
> Signed-off-by: Mike Frysinger <vapier@gentoo.org>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man5/proc.5 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index c07ebf06bfa8..93b8c7d26bf3 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -435,6 +435,18 @@ that is, a read on this file will return 0 characters.
>  The command-line arguments appear in this file as a set of
>  strings separated by null bytes (\(aq\\0\(aq),
>  with a further null byte after the last string.
> +.IP
> +If, after an
> +.BR execve (2),
> +the process modifies its argv strings, those changes will show up here.
> +This is not the same thing as modifying the argv array.
> +.IP
> +Furthermore, a process may change the memory location that this file refers via
> +.BR prctl (2)
> +operations such as
> +.BR PR_SET_MM_ARG_START .
> +.IP
> +Think of this file as the command line that the process wants you to see.
>  .TP
>  .IR /proc/[pid]/comm " (since Linux 2.6.33)"
>  .\" commit 4614a696bd1c3a9af3a08f0e5874830a85b889d4
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
