Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F9032FA483
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 16:23:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405683AbhARPUr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 10:20:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405728AbhARPUk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:20:40 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68D66C061573
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:19:59 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id y17so16814428wrr.10
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ADjMuSOLLmxE9hQrUMzjyXtj+WD9HatDoojEHO0fAH8=;
        b=P+Y/GFnOUOoT+zIKY+AKPBDGvtY4EPwvvQSJ6y81NmiJpJ87lzLEj7YoC0DmWuq0GZ
         L9G7K5CiFqkhIuJVEUdI9HRA5gTh0oQNtq26fIh8x3wKWdlofiQgeyrtEpyPVYnmSEXf
         PoJKPAEga3l/WCzPPXjX2kCnuFgsFX1CVdvAihUlXZUSbmBjo/s9HkSgRJs8wUVoKIoe
         6y3btckP/qmGNsAxgyNJGCE6YjGH7mbpVYV9tCleLSxdMXfmu+VjFvLYyDEG7XzE7chv
         oz/bPos7OOJqCBZX6FuvZewPn/WBccQ/H+93lUM690oXgVgXh9z7KoSFRITubJvfNgaR
         SGjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=ADjMuSOLLmxE9hQrUMzjyXtj+WD9HatDoojEHO0fAH8=;
        b=fd9JUmR21d5QUMTv6EBGIbVnBUgo5BPi7CuMqzUwwFvZY2gKdgxRfD1IEMoO7lNy/1
         rTsj3qg/J/Ik9pv6QJBOrhjObuEf1wmEzFGngODSdAyP4GnkRLzTeQfj5i4WKdlMY5VV
         qs0r0n8VtQD+VPJbNfGLgu6c7mlYdGGklXg8CxIM1liOCSrMbDygYDEkXlJMc9fjyspM
         6f9FRL6Y3GRavxw1d+YarpQR08dANkvb1LHDAHD37iLCfuowWUDPT1aGBdq4l40ppRk7
         wDRG9N7X3+8Z5BElmSCRGBAxuic6AHDLWIOTdIbTVksvUMAIw2krucmUuRfVslk6phkV
         o8iQ==
X-Gm-Message-State: AOAM533CoYELP4AtRdO4YFb52dEN4BVrEtHR2C+7ifYavmP+CE8cTrbc
        uItvv9PXQg9AHFSNYflBf7hxH1clsbk=
X-Google-Smtp-Source: ABdhPJy2Ih7NSefvJtsIJPwFj0FGl0s7SO0EZtwvnqsDpSxRNQ34rVEAE3mrDoapYHlf8WqGTK8p5A==
X-Received: by 2002:adf:f6c9:: with SMTP id y9mr26771173wrp.121.1610983198205;
        Mon, 18 Jan 2021 07:19:58 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id r13sm30349567wrt.10.2021.01.18.07.19.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:19:57 -0800 (PST)
Reply-To: alx.manpages@gmail.com
Subject: Re: [PATCH] pipe.7: tfix
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210118091717.7042-1-jwilk@jwilk.net>
From:   "Alejandro Colomar (mailing lists; readonly)" 
        <alx.mailinglists@gmail.com>
Message-ID: <3bfc7e28-9663-40d0-a4b2-5ce9cefca01b@gmail.com>
Date:   Mon, 18 Jan 2021 16:19:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210118091717.7042-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/18/21 10:17 AM, Jakub Wilk wrote:
> Escape hyphens.

Hi Jakub,

Would you mind adding not only 'what',
but also (and especially) 'why' is does it?
I mean, 20 years from now we might wonder why we escaped hyphens.

Adding for example the following to the commit message might help:

[
$ man 7 man-pages 2>/dev/null \
  |sed -n '/Generating optimal glyphs/,/\\-/p';
   Generating optimal glyphs
       Where a real minus character is required (e.g., for numbers
       such as -1, for man page cross references such as utf-8(7),
       or when writing options that have a leading dash,  such  as
       in ls -l), use the following form in the man page source:

           \-
]

I'm also wondering... are there any other places where this patch would
also be needed?

Thanks,

Alex

> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man7/pipe.7 | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/man7/pipe.7 b/man7/pipe.7
> index 21c8fa79b..c3210320c 100644
> --- a/man7/pipe.7
> +++ b/man7/pipe.7
> @@ -163,7 +163,7 @@ but is provided on many implementations.
>  .SS /proc files
>  On Linux, the following files control how much memory can be used for pipes:
>  .TP
> -.IR /proc/sys/fs/pipe-max-pages " (only in Linux 2.6.34)"
> +.IR /proc/sys/fs/pipe\-max\-pages " (only in Linux 2.6.34)"
>  .\" commit b492e95be0ae672922f4734acf3f5d35c30be948
>  An upper limit, in pages, on the capacity that an unprivileged user
>  (one without the
> @@ -175,9 +175,9 @@ The default value for this limit is 16 times the default pipe capacity
>  (see above); the lower limit is two pages.
>  .IP
>  This interface was removed in Linux 2.6.35, in favor of
> -.IR /proc/sys/fs/pipe-max-size .
> +.IR /proc/sys/fs/pipe\-max\-size .
>  .TP
> -.IR /proc/sys/fs/pipe-max-size " (since Linux 2.6.35)"
> +.IR /proc/sys/fs/pipe\-max\-size " (since Linux 2.6.35)"
>  .\" commit ff9da691c0498ff81fdd014e7a0731dab2337dac
>  The maximum size (in bytes) of individual pipes that can be set
>  .\" This limit is not checked on pipe creation, where the capacity is
> @@ -202,7 +202,7 @@ Since Linux 4.9,
>  the value on this file also acts as a ceiling on the default capacity
>  of a new pipe or newly opened FIFO.
>  .TP
> -.IR /proc/sys/fs/pipe-user-pages-hard " (since Linux 4.5)"
> +.IR /proc/sys/fs/pipe\-user\-pages\-hard " (since Linux 4.5)"
>  .\" commit 759c01142a5d0f364a462346168a56de28a80f52
>  The hard limit on the total size (in pages) of all pipes created or set by
>  a single unprivileged user (i.e., one with neither the
> @@ -220,7 +220,7 @@ no hard limit is applied.
>  .\" The default was chosen to avoid breaking existing applications that
>  .\" make intensive use of pipes (e.g., for splicing).
>  .TP
> -.IR /proc/sys/fs/pipe-user-pages-soft " (since Linux 4.5)"
> +.IR /proc/sys/fs/pipe\-user\-pages\-soft " (since Linux 4.5)"
>  .\" commit 759c01142a5d0f364a462346168a56de28a80f52
>  The soft limit on the total size (in pages) of all pipes created or set by
>  a single unprivileged user (i.e., one with neither the
> @@ -238,9 +238,9 @@ The default value for this file is 16384,
>  which permits creating up to 1024 pipes with the default capacity.
>  .PP
>  Before Linux 4.9, some bugs affected the handling of the
> -.IR pipe-user-pages-soft
> +.IR pipe\-user\-pages\-soft
>  and
> -.IR pipe-user-pages-hard
> +.IR pipe\-user\-pages\-hard
>  limits; see BUGS.
>  .\"
>  .SS PIPE_BUF
> @@ -342,9 +342,9 @@ Portable applications should avoid reliance on
>  bidirectional pipe semantics.
>  .SS BUGS
>  Before Linux 4.9, some bugs affected the handling of the
> -.IR pipe-user-pages-soft
> +.IR pipe\-user\-pages\-soft
>  and
> -.IR pipe-user-pages-hard
> +.IR pipe\-user\-pages\-hard
>  limits when using the
>  .BR fcntl (2)
>  .BR F_SETPIPE_SZ
> 

