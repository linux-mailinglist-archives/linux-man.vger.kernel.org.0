Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB5F031ACAE
	for <lists+linux-man@lfdr.de>; Sat, 13 Feb 2021 16:47:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229714AbhBMPrO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 10:47:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbhBMPrN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 10:47:13 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA9A7C061574
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 07:46:31 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id lg21so4408364ejb.3
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 07:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QoKr2ujEcT0JimHR/LDC9bx9yqPqMue9VybC3gyFtmI=;
        b=jGQ8rhc46z5n6/xtib2F8lq2+aSMoXN0J50xwa6JNJBCKrAvhFYByNZYI4TGKLIKcR
         LoJVKx57Utjd57hQMSvadGFUqR+mOUhBJffKqVWLaUZW8DdLJmjt6R/bfzv0STnHKe2r
         YKaLXhG0CHjC61tpuj/LB5TXZU4gcntOn2ym2q/rvqhUK1bGJgCOJzcUNERClc6lwV0v
         O2xRHmdekgO36a4TE1DWjwu6FSqvadliDflK3rT/xo0FRUUDRq8OyOuEQXAVyln/2pHQ
         yVKXch2HkKx7JCgQUDMq4NUaW7nvGtsh7XUNMtarDJM7rH4rSuB/ShdibtrvvhWXO+RQ
         3paQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QoKr2ujEcT0JimHR/LDC9bx9yqPqMue9VybC3gyFtmI=;
        b=sj67es4ZI3pgwXmv7ZwLWEbO9VIGkWtBTGc8UdaF3TntkXUFanPIqf1+sIbvI3USrP
         cAtKA0IlXxK6n+4PkF8kAu1q3VGl/Ra3BPLD0SNPqZo7J+73Dc/XLJGsxFDvVklUGSu8
         Ho0Lmph/ogVeK6uakWsesTlLsl9gVltmPQpn+EJKEi+pZHcktOiAvSHqBE2AKkNcqK94
         rx+YUvJr1rztGH6hAyZ8bqb/DNEa99Gf9JJWJRgfyJWmdrv8dj9tBz+h+URRCeP/0vxA
         F7EK71O5WO5X2fAEGs/wNa/vEP1Jga3suFskNJjmlPzkxTPpgbC08dN2Td5GkUEsfEpD
         NEAA==
X-Gm-Message-State: AOAM533iZU9WHFrfEaTYFM4hkTld2C9PPZRVxi/9N6l4xnkiEVI4r/85
        O2xOuWoYv/CwOb7y7WWu7eO8xy8nrxRQAQ==
X-Google-Smtp-Source: ABdhPJxH4NeSlZaD25KG7DF+N0AUmJ3KeDYQOCPFHsv3Jume+VgooXOyFYdUtXpsoJGruDXJ7THgNA==
X-Received: by 2002:a17:906:4ed6:: with SMTP id i22mr2720896ejv.84.1613231190325;
        Sat, 13 Feb 2021 07:46:30 -0800 (PST)
Received: from [192.168.178.63] (dynamic-095-118-040-212.95.118.pool.telefonica.de. [95.118.40.212])
        by smtp.gmail.com with ESMTPSA id r16sm7832916ejc.112.2021.02.13.07.46.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Feb 2021 07:46:29 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] process_madvise.2: Add note about missing glibc wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210211174454.48112-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <03db241c-5b1a-94df-5dc0-9ae574183ebf@gmail.com>
Date:   Sat, 13 Feb 2021 16:46:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210211174454.48112-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/11/21 6:44 PM, Alejandro Colomar wrote:
> Glibc bug: <https://sourceware.org/bugzilla/show_bug.cgi?id=27380>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/process_madvise.2 | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
> index d33c32f63..9dc90ced1 100644
> --- a/man2/process_madvise.2
> +++ b/man2/process_madvise.2
> @@ -36,6 +36,10 @@ process_madvise \- give advice about use of memory to a process
>  .BI "                        unsigned long " vlen ", int " advice ,
>  .BI "                        unsigned int " flags ");"
>  .fi
> +.PP
> +.IR Note :
> +There is no glibc wrapper for this system call; see NOTES.
> +.\" FIXME: See <https://sourceware.org/bugzilla/show_bug.cgi?id=27380>
>  .SH DESCRIPTION
>  The
>  .BR process_madvise()
> @@ -218,6 +222,9 @@ Support for this system call is optional,
>  depending on the setting of the
>  .B CONFIG_ADVISE_SYSCALLS
>  configuration option.
> +.SH NOTES
> +Glibc does not provide a wrapper for this system call; call it using
> +.BR syscall (2).
>  .SH SEE ALSO
>  .BR madvise (2),
>  .BR pidfd_open (2),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
