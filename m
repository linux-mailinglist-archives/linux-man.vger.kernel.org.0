Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 149DA212128
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 12:26:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728485AbgGBKZ4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Jul 2020 06:25:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728465AbgGBKZy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Jul 2020 06:25:54 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78CF3C08C5C1
        for <linux-man@vger.kernel.org>; Thu,  2 Jul 2020 03:25:54 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id d16so16404338edz.12
        for <linux-man@vger.kernel.org>; Thu, 02 Jul 2020 03:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jx+ILdgllbGL8WxiaMynOHdtpQoQQZaIvHzQ/mcl7aU=;
        b=uuAzC8EhmVwUUa5WgwNQ0loEzFcoGzZnjIRb78YtDpWdStVxky/fd32rjvK1geUyHs
         zFXISVh9fhDZI5UXz2iipyvAJvvwMM88xPPmEbCErqR07XuKMD89WZXCzy6aCfhUGYCo
         5e9wHe/pt0d6Ex4tCBdsgLbGcqXHpwfCz2hvyIugESdXayLNeBkGAO7ntCfo91KdeOl5
         C++qUxX6akiTdUqlRI7LsLKRZgsKc8+hsmBfZBIqyivyp1gmjfdL4LzoQWRxcXLJJYzF
         FDIUT88Q0VNPUsyLkkOE1GhvCi6i5uIqtRJjz983pJBaI3AIbHLkS1ApXnmwb5dsRQiY
         oKIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jx+ILdgllbGL8WxiaMynOHdtpQoQQZaIvHzQ/mcl7aU=;
        b=oWNNzIFKi11CstpKQd6xOyaMA8narNk7nl6ecsphCqV+jfhjUf0XiBwfodRME+DH2Q
         2DhDe7VMEZHuzQc+BvRxgyEK9i10frWgm+CpcLoJzEZBtsBGArx9hlrkafGPZ2BQSaep
         Pa15kEABEHnEhhMFoEBnTw0LaadOsuAxLcj+L10QA++X7g57Kr7b2G1ggG5zUL5Du4NW
         oGz055SbkKC+QyPQVGyBCMgdqI4fAXRdNdjsvFBxz3EXzUaekdFw3YUGeJ2zgZ3FGFwa
         5avC4LjwervhsxLfaLHeyNq6G40ye9byn9rQfjssDg6qFUfXd3fl3ns51LkwLacmSwEP
         4teQ==
X-Gm-Message-State: AOAM531Z7wrqc6fZ8GvmARFA8K72pRbAUojKdCFh+TCJOUvbARQmkt1r
        ZZ2axkGHYM0+vruIHqMDa8sQ+Wt3
X-Google-Smtp-Source: ABdhPJzDI6r9XFeR2vUtC++IBX+sHpmIdDP0unWb5HWEyVErfiUg1NIQ+EtFjxuaCvv+sT62lF4Ijg==
X-Received: by 2002:a05:6402:3064:: with SMTP id bs4mr34631976edb.350.1593685553135;
        Thu, 02 Jul 2020 03:25:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id d22sm6455194ejc.90.2020.07.02.03.25.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 03:25:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man1/*: ffix, change '-' to '\-' for options
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200701220553.GA24941@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5dd303e3-e94b-fb45-4f9e-f9dee58046ea@gmail.com>
Date:   Thu, 2 Jul 2020 12:25:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200701220553.GA24941@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/2/20 12:05 AM, Bjarni Ingi Gislason wrote:
>   Change '-' to '\-' for the prefix of names to indicate an option.

Patch applied. (And thanks for splitting these patches into
sections; it makes the patches smaller and therefore easier 
to review).

Cheers,

Michael

> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man1/locale.1       | 8 ++++----
>  man1/memusage.1     | 2 +-
>  man1/memusagestat.1 | 4 ++--
>  3 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/man1/locale.1 b/man1/locale.1
> index 587795728..5506354bd 100644
> --- a/man1/locale.1
> +++ b/man1/locale.1
> @@ -58,7 +58,7 @@ the behavior is as follows:
>  .BR \-a ", " \-\-all\-locales
>  Display a list of all available locales.
>  The
> -.B -v
> +.B \-v
>  option causes the
>  .B LC_IDENTIFICATION
>  metadata about each locale to be included in the output.
> @@ -66,7 +66,7 @@ metadata about each locale to be included in the output.
>  .BR \-m ", " \-\-charmaps
>  Display the available charmaps (character set description files).
>  To display the current character set for the locale, use
> -\fBlocale -c charmap\fR.
> +\fBlocale \-c charmap\fR.
>  .PP
>  The
>  .B locale
> @@ -195,8 +195,8 @@ in the shell profile file so that the custom locale will be used in the
>  subsequent user sessions:
>  .PP
>  .EX
> -$ \fBmkdir -p $HOME/.locale\fP
> -$ \fBI18NPATH=./wrk/ localedef -f UTF-8 -i fi_SE $HOME/.locale/fi_SE.UTF-8\fP
> +$ \fBmkdir \-p $HOME/.locale\fP
> +$ \fBI18NPATH=./wrk/ localedef \-f UTF-8 \-i fi_SE $HOME/.locale/fi_SE.UTF-8\fP
>  $ \fBLOCPATH=$HOME/.locale LC_ALL=fi_SE.UTF-8 date\fP
>  $ \fBecho "export LOCPATH=\e$HOME/.locale" >> $HOME/.bashrc\fP
>  $ \fBecho "export LANG=fi_SE.UTF-8" >> $HOME/.bashrc\fP
> diff --git a/man1/memusage.1 b/man1/memusage.1
> index 9292fb8f0..ce50e6f16 100644
> --- a/man1/memusage.1
> +++ b/man1/memusage.1
> @@ -55,7 +55,7 @@ can also be intercepted.
>  can output the collected data in textual form, or it can use
>  .BR memusagestat (1)
>  (see the
> -.B -p
> +.B \-p
>  option,  below)
>  to create a PNG file containing graphical representation
>  of the collected data.
> diff --git a/man1/memusagestat.1 b/man1/memusagestat.1
> index 411622446..a1c40cd86 100644
> --- a/man1/memusagestat.1
> +++ b/man1/memusagestat.1
> @@ -31,7 +31,7 @@ creates a PNG file containing a graphical representation of the
>  memory profiling data in the file
>  .IR datafile ;
>  that file is generated via the
> -.I -d
> +.I \-d
>  (or
>  .IR --data )
>  option of
> @@ -41,7 +41,7 @@ The red line in the graph shows the heap usage (allocated memory)
>  and the green line shows the stack usage.
>  The x-scale is either the number of memory-handling function calls or
>  (if the
> -.I -t
> +.I \-t
>  option is specified)
>  time.
>  .SH OPTIONS
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
