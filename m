Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBC4331C2C3
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 21:02:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229866AbhBOUBs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 15:01:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229764AbhBOUBo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 15:01:44 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DD4CC061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:01:04 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id n6so10390420wrv.8
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+qhcP7qpw9WEzArSo4dcQlSetVTWHEvrcAvQYyqEF5E=;
        b=FM63RqbtJt8QFnynjIR1RucYmlpmvafGtkfsuC0DTEZl6XH4AJTgGOhETRi6xKF/GW
         xI+4q/2ngbWEOxT5+160GdVE1uQIRtxXVdt2KSHjQ0lVhwYvYY7+pB6GW01G3kZVSVWI
         8gHi8JmLvILGiKW87aaNn3TQ30z7OG4EgvnGKDmipIrQ4CtQJ2uNrQxB0UZ+FaW1AhWh
         wUa9lWRGX72fVzHmtD3uCoXkpy5MYzsrN6yqqELKcVfBQycIXTcb0n6JdLAXP09ZEnfM
         zSGjFKvkg5/aT/zxPggQmSi5JgmsvySjBOlmU4KdQJQRD6gugBshZiNA550z9QmTaRow
         RqaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+qhcP7qpw9WEzArSo4dcQlSetVTWHEvrcAvQYyqEF5E=;
        b=lqKTe4QtNGZp4nn4lEvllttQpI7tkj1Co2yzybIMV8bYxmD2CfCr5Cc6FJojUQRB/w
         oxBEUaL6N5kXdJumnNRlUgxUjR65UubYzFJWzlPw6IV/XaobexVj/3pmipwrjtRGQ6vo
         5J6zCe2KzPhN3hsGwB/sINWAw3KtPzYaQDmQtDCRNHmrZQv0HNJ0KZatSS1tgKG5r9yE
         7pd0a/9WkW3fMzfIDRvuDpiMEHVZkM2TLnXhIpeOi4QbqXJh0YsGCh7c8wFUyuLKNKzD
         DyiavXMeGLhYBA5xdJDC9XfAjcprkG1DUBer4n1rQGp5DYuTzLlPJm8a2U3iXSZtFyqy
         AT2g==
X-Gm-Message-State: AOAM532sAhTD9yWdVhx0Mgw5vpeA8iLWtJMIMzk+o13TEwmc8lEFuZle
        zjzNfeEfdfq0t/b/zOyY+41yQ4oAkZy4gw==
X-Google-Smtp-Source: ABdhPJzx0VSHtxiBbvvcCH8a369peftM0qi/kncm/x36gjyda2LQEhVohPSUMshujCEhUMoLItdDOA==
X-Received: by 2002:adf:ea12:: with SMTP id q18mr19431496wrm.79.1613419263109;
        Mon, 15 Feb 2021 12:01:03 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id f8sm24484074wrp.65.2021.02.15.12.01.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 12:01:02 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] tkill.2: SYNOPSIS: Fix prototype parameter types
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215131522.450666-8-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b96a993d-3012-f5ad-1d32-657ed2364efd@gmail.com>
Date:   Mon, 15 Feb 2021 21:01:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210215131522.450666-8-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/15/21 2:15 PM, Alejandro Colomar wrote:
> All but the last parameters of t[g]kill() use 'pid_t',
> both in the kernel and glibc.  Fix them.
> 
> ......
> 
> .../linux/linux$ grep_syscall tkill
> kernel/signal.c:3870:
> SYSCALL_DEFINE2(tkill, pid_t, pid, int, sig)
> include/linux/syscalls.h:685:
> asmlinkage long sys_tkill(pid_t pid, int sig);
> .../linux/linux$
> 
> .../gnu/glibc$ grep_glibc_prototype tgkill
> sysdeps/unix/sysv/linux/bits/signal_ext.h:29:
> extern int tgkill (__pid_t __tgid, __pid_t __tid, int __signal);
> .../gnu/glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Thanks! Patch applied.

Cheers,

Michael


> ---
>  man2/tkill.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/tkill.2 b/man2/tkill.2
> index 4b4eae312..24636719d 100644
> --- a/man2/tkill.2
> +++ b/man2/tkill.2
> @@ -31,8 +31,8 @@
>  tkill, tgkill \- send a signal to a thread
>  .SH SYNOPSIS
>  .nf
> -.BI "int tkill(int " tid ", int " sig );
> -.BI "int tgkill(int " tgid ", int " tid ", int " sig );
> +.BI "int tkill(pid_t " tid ", int " sig );
> +.BI "int tgkill(pid_t " tgid ", pid_t " tid ", int " sig );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
