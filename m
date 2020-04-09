Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CC79D1A3B43
	for <lists+linux-man@lfdr.de>; Thu,  9 Apr 2020 22:25:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726814AbgDIUZN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Apr 2020 16:25:13 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:41890 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726623AbgDIUZN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Apr 2020 16:25:13 -0400
Received: by mail-wr1-f66.google.com with SMTP id h9so13509836wrc.8
        for <linux-man@vger.kernel.org>; Thu, 09 Apr 2020 13:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MR2QP+E0qpvOkro+yjGs1Gtl8EXFWCrvkLWu6dI3eqw=;
        b=Tgt49ZNE04/LLVG4aXHIjmldBGC4NeJy+y8Vr6bNjd7HxSckJXVLhrhiaRjCaVG2eO
         kw7thl+vwt+5x+vehVlJ85TCMIXKX3wJX8Afk38hWKBS6iMYaX3FjSNFLlxdYy1vH1y/
         4YQ9FoHi71PJUo1owQvvvBLaHicV0t8i1Cz1UKOkNHW3Ndvl0BQuQadv26TTCUbcV5Mg
         yKpDhPDZQftXZ5j282vVkLtbTH52VH8wJSipFndSU++j6Z/Y66eUaq1+Exf7oG/Sc+9S
         K7XNNcnjStY9/Y4/I3HykkBjJoR/ERRv2tThzvCttUwus8YEPHivz5GZr2rtMy6zouo+
         cXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MR2QP+E0qpvOkro+yjGs1Gtl8EXFWCrvkLWu6dI3eqw=;
        b=CKYM28rrOM3LUJQt/P7e06B5TkXPnvbzZ2xNF3TI3En9tW2new01+y9/oAifcFV5N/
         siyNjf/BHv50jYGtxs0I8l0a/FQf8vSn/k/jF39IDCWf3x3+t1MCiK/dlsrN/05Oln+B
         41a/6/foEDTosYyavsqCtGZKyAbknZqGw8Cm4qjnJVo5VKojHhOxRhgAKXeLxYgsUExD
         5T0dhy71/BrXzADzxazJqYQKYqQ2rXTOPJnwSUUSjFDqw7XjkQKqnSo+c7xw0nja1r+Q
         UsJb18BWNke4o46UPE3+UaW2n2vyH9ZBpu09uQc9UsCAeMWtGLpproby+xbe+HuGAI8y
         ewGg==
X-Gm-Message-State: AGi0PuaJsy+f/JHcze4VKQXOff73XNkAtARpagKESW8vQJvYPKAemvHY
        4UK4GpKkz3hwFtNEIEQc15lamp/x
X-Google-Smtp-Source: APiQypLx83++uLAshaMAGokvcmdU0fPaMMiFd59umRXq/Rik7yjC3Sgs8ujtWceqmLYDG0KPjCLOJg==
X-Received: by 2002:adf:cd8c:: with SMTP id q12mr939139wrj.419.1586463910475;
        Thu, 09 Apr 2020 13:25:10 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id h81sm5439417wme.42.2020.04.09.13.25.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 13:25:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Document kernel bugs in delivery of signals from CPU
 exceptions
To:     Zack Weinberg <zackw@panix.com>
References: <20191223173146.6924-1-zackw@panix.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9a9a850e-eba9-bb38-df25-f963537c366b@gmail.com>
Date:   Thu, 9 Apr 2020 22:25:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20191223173146.6924-1-zackw@panix.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Helolo Zack,

On 12/23/19 6:31 PM, Zack Weinberg wrote:
> signal.7: Which signal is delivered in response to a CPU exception is
> under-documented and does not always make sense.  See
> <https://bugzilla.kernel.org/show_bug.cgi?id=205831> for an example
> where it doesn’t make sense; per the discussion there, this cannot be
> changed because of backward compatibility concerns, so let’s instead
> document the problem.
> 
> sigaction.2: For related reasons, the kernel doesn’t always fill in
> all of the fields of the siginfo_t when delivering signals from CPU
> exceptions.  Document this as well.  I imagine this one _could_ be
> fixed, but the problem would still be relevant to anyone using an
> older kernel.

Thanks. I've applied this patch.

Cheers,

Michael

> ---
>  man2/sigaction.2 |  8 ++++++++
>  man7/signal.7    | 40 ++++++++++++++++++++++++++++++----------
>  2 files changed, 38 insertions(+), 10 deletions(-)
> 
> diff --git a/man2/sigaction.2 b/man2/sigaction.2
> index 8ee878672..10d1c4882 100644
> --- a/man2/sigaction.2
> +++ b/man2/sigaction.2
> @@ -1020,6 +1020,14 @@ handler.
>  See the relevant Linux kernel sources for details.
>  This use is obsolete now.
>  .SH BUGS
> +When delivering a signal with a
> +.B SA_SIGINFO
> +handler,
> +the kernel does not always provide meaningful values
> +for all of the fields of the
> +.I siginfo_t
> +that are relevant for that signal.
> +.PP
>  In kernels up to and including 2.6.13, specifying
>  .B SA_NODEFER
>  in
> diff --git a/man7/signal.7 b/man7/signal.7
> index d34e536f1..a9fe076fd 100644
> --- a/man7/signal.7
> +++ b/man7/signal.7
> @@ -796,16 +796,36 @@ Linux 2.4 and earlier:
>  .BR nanosleep (2).
>  .SH CONFORMING TO
>  POSIX.1, except as noted.
> -.\" It must be a *very* long time since this was true:
> -.\" .SH BUGS
> -.\" .B SIGIO
> -.\" and
> -.\" .B SIGLOST
> -.\" have the same value.
> -.\" The latter is commented out in the kernel source, but
> -.\" the build process of some software still thinks that
> -.\" signal 29 is
> -.\" .BR SIGLOST .
> +.SH BUGS
> +There are six signals that can be delivered
> +as a consequence of a hardware exception:
> +.BR SIGBUS ,
> +.BR SIGEMT ,
> +.BR SIGFPE ,
> +.BR SIGILL ,
> +.BR SIGSEGV ,
> +and
> +.BR SIGTRAP .
> +Which of these signals is delivered,
> +for any given hardware exception,
> +is not documented and does not always make sense.
> +.PP
> +For example, an invalid memory access that causes delivery of
> +.B SIGSEGV
> +on one CPU architecture may cause delivery of
> +.B SIGBUS
> +on another architecture, or vice versa.
> +.PP
> +For another example, using the x86
> +.I int
> +instruction with a forbidden argument
> +(any number other than 3 or 128)
> +causes delivery of
> +.BR SIGSEGV ,
> +even though
> +.B SIGILL
> +would make more sense,
> +because of how the CPU reports the forbidden operation to the kernel.
>  .SH NOTES
>  For a discussion of async-signal-safe functions, see
>  .BR signal-safety (7).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
