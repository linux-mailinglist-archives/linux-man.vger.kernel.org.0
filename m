Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 070892EEF08
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 10:03:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727706AbhAHJCX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 04:02:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727582AbhAHJCX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 04:02:23 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83E2DC0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 01:01:42 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id cw27so10458793edb.5
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 01:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mBS5a6PpxYsDtS5QMxDUTShzP8TNoueUulWWPlPk7tU=;
        b=fiWI289EGYRyVKVz1CCRl35haMXzqlBCHTop8YLUa98ElZpmqt7sMLF2L0d+uajNSJ
         aEPyM+Di1j15WmnmTaE1PmfXQqe8uIPkaUnZ4ICjcKyYWMN1DIY3KWHfry8oCrKXYKBy
         teIORMryOFmEmuNZ5MUF3de0eyBB5QX1zPQ8Fwr4FCHMZjJlTG5iQdkqhtrNwxjO0lWn
         WCQoEdxp96hMiOwJshGcX99nM69uYxafDrRJeYGjZtrv4HRE9ps8StAF2p8nZ+FZj59v
         IYpvFnd5KwolINC8tYu816J1EmimU8I7KohqUMM0NGiDp7dmn17EmVP46CGJppE3GfCG
         Gc4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mBS5a6PpxYsDtS5QMxDUTShzP8TNoueUulWWPlPk7tU=;
        b=Ox8nllfS+H4gCFB2qPPGXhgQB3dzluJwZPGzq9PHRQVoJm7uYtLbmWtftyjERAUJmY
         gtuzOtAt/uY2SIev3VDIZaOG2cHq2KH2AhVZiMPTFAXH566pZVXjZV1xR9ZRgo1+PfG/
         4edaAa32fmNEn0VpB+V8ckGWXfls5xnkBzf7IQegAq/7gO/mQHFKc3AhdGG8JsNWpIvS
         vqwtc7YAk45AFleo7F47gZS1VuK6o27llclzmz6hl7wDJMzgVuWEtduxd8KcWHb6yuAf
         /uOHveppN1RLHX+V4ukWLj3OMrzBnCGN5yIZQgN4BnLalLnYNPP8yJ1FHccDpBRk2bLn
         8O0Q==
X-Gm-Message-State: AOAM5308xXtChcPgvtjuIGTbllHI9EuXcXB7HHDvrTsmeOUr121+5PNf
        S0XA2rQKHBUrwbvxMhGN7q3o9uNgZwA=
X-Google-Smtp-Source: ABdhPJzwfB04BBVwCL0tnWA/9ggIg9j49r6ad8y8kCwGobj0qK6qqXPsCcyTPLbjh6rm+z2be13g4Q==
X-Received: by 2002:a05:6402:1d13:: with SMTP id dg19mr4494675edb.111.1610096501004;
        Fri, 08 Jan 2021 01:01:41 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id j20sm3286660ejy.124.2021.01.08.01.01.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 01:01:40 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] msr.4, veth.4, packet.7, sched.7, unicode.7: Remove
 redundant .PP
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210107161923.3871-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <93231063-b12f-1b47-784d-a597438c8696@gmail.com>
Date:   Fri, 8 Jan 2021 10:01:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210107161923.3871-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 1/7/21 5:19 PM, Alejandro Colomar wrote:
> .PP and .IP are redundant just before .SH or .SS.
> Remove them.
> 
> $ find man? -type f \
>   |xargs sed -i '/^\.[IP]P$/{N;s/.*\n\(\.S[HS]\)/\1/}';

Thanks! I've been fixing these as I spot them. This is better, 
of course. Patch applied.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man4/msr.4     | 1 -
>  man4/veth.4    | 1 -
>  man7/packet.7  | 1 -
>  man7/sched.7   | 1 -
>  man7/unicode.7 | 1 -
>  5 files changed, 5 deletions(-)
> 
> diff --git a/man4/msr.4 b/man4/msr.4
> index 9feb78a4b..38e4e8e18 100644
> --- a/man4/msr.4
> +++ b/man4/msr.4
> @@ -56,7 +56,6 @@ to load it explicitly before use:
>  $ modprobe msr
>  .EE
>  .in
> -.PP
>  .SH SEE ALSO
>  Intel Corporation Intel 64 and IA-32 Architectures
>  Software Developer's Manual Volume 3B Appendix B,
> diff --git a/man4/veth.4 b/man4/veth.4
> index b73976099..2e41a33d7 100644
> --- a/man4/veth.4
> +++ b/man4/veth.4
> @@ -98,7 +98,6 @@ NIC statistics:
>  16: ve_B@ve_A: <BROADCAST,MULTICAST,M-DOWN> mtu 1500 qdisc ...
>  .EE
>  .in
> -.PP
>  .SH "SEE ALSO"
>  .BR clone (2),
>  .BR network_namespaces (7),
> diff --git a/man7/packet.7 b/man7/packet.7
> index 45c1bc75c..05a34dbeb 100644
> --- a/man7/packet.7
> +++ b/man7/packet.7
> @@ -550,7 +550,6 @@ In addition, other errors may be generated by the low-level driver.
>  is a new feature in Linux 2.2.
>  Earlier Linux versions supported only
>  .BR SOCK_PACKET .
> -.PP
>  .SH NOTES
>  For portable programs it is suggested to use
>  .B AF_PACKET
> diff --git a/man7/sched.7 b/man7/sched.7
> index 6285b3179..f554fc289 100644
> --- a/man7/sched.7
> +++ b/man7/sched.7
> @@ -686,7 +686,6 @@ that is, no CPU time is set aside for non-real-time processes
>  The default value in this file is 950,000 (0.95 seconds),
>  meaning that 5% of the CPU time is reserved for processes that
>  don't run under a real-time or deadline scheduling policy.
> -.PP
>  .SS Response time
>  A blocked high priority thread waiting for I/O has a certain
>  response time before it is scheduled again.
> diff --git a/man7/unicode.7 b/man7/unicode.7
> index d8dbf4be1..871740972 100644
> --- a/man7/unicode.7
> +++ b/man7/unicode.7
> @@ -190,7 +190,6 @@ and
>  .BR wcwidth (3)
>  tells, how many positions (0\(en2) the cursor is advanced by the
>  output of a character.
> -.PP
>  .SS Private Use Areas (PUA)
>  In the Basic Multilingual Plane,
>  the range 0xe000 to 0xf8ff will never be assigned to any characters by
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
