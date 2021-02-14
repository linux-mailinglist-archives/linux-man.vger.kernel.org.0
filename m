Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DDC031AFB1
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 09:04:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229790AbhBNIE1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Feb 2021 03:04:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229884AbhBNIDS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Feb 2021 03:03:18 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C86E7C061574
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 00:02:37 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id r21so4869806wrr.9
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 00:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WlNwp/UsSzn/nxJfTEuR0ue3i1/m+DvJ25ytFQFiLlk=;
        b=lFe8HfVZPzmdyf3qbioLMe5OgoT/RBXdufnwe6PF2djSexQXSyVYxtxiqeBq7bvTeL
         5KAVzZ3v2BGqiWDsK+Qe5AJCLDfAFnI51V4DJUMzGA35EazYO6QH/fGiSowDCGt5zeFu
         d8v303sjhGqi4oDor7aPNesmog+zRCMwMKXmgziXBOWZnS7YimQ8zxw+R/e9un71mzQE
         F3OIHUAYPgCwVQ9HMkKk6oDEAqiXWIAx9oWdg6Yfw6HjjY1rkNt9fNzb3PcJi6VTi1MU
         P3aL0vBKBdH6/Zs92e8RJ11yNYsOQYLxe5lTGUovM11NtePc7hNWEjwzpD2izZYpsgM8
         Rabw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WlNwp/UsSzn/nxJfTEuR0ue3i1/m+DvJ25ytFQFiLlk=;
        b=SJ7Qw0GXZ+ZdYFL6dkH0MFduO9+1i7N+oaAHn+chrspHwzxY5VLKXIl+cO7EZ0sFrB
         nWWHDGTLECmjmOwQCbQLyvjR376JDC5rACrJO01ozXBU1Bci8RBovsSdlOZWUnUl+ixN
         P1nAP7ArASrsew4w3KTGsy6pWOPKeBbIfNJpi8zd3yzhZyvlLb2SZDd9a61lQYU9Sl5J
         hD0wACX/u5qyAGaG6Tc+UuDjGAxuWWeDTndKX2Inamwe6ok3SurgWgCI7p+iSkYrVPEO
         W0CT2M+BWux5e02xksLJQEoxODElLl7ls+bGRGPpq4VFdk3dYTqPFnTftZMUmuc+koUP
         hHsg==
X-Gm-Message-State: AOAM530Vaze6mGKFqoiFVFZWzGts4dlEYzP3QCRfs844GAb9rk/uVzUl
        6cKiogYmoaI9/8/q2RVNKDW4709V7vNYFQ==
X-Google-Smtp-Source: ABdhPJwI05AFObl07X4Tc9UzwdRBDOWEUS7V8zT3oVkqDP4IbH28I+5lSId9PqqBlibb7vQdjAdMgA==
X-Received: by 2002:a5d:49d2:: with SMTP id t18mr12702540wrs.224.1613289756492;
        Sun, 14 Feb 2021 00:02:36 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id 13sm20016377wmj.11.2021.02.14.00.02.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Feb 2021 00:02:36 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Palmer Dabbelt <palmerdabbelt@google.com>
Subject: Re: [PATCH] execve.2: Correctly the versions of Linux that don't have
 ARG_MAX argv/envp size
To:     Palmer Dabbelt <palmer@dabbelt.com>, alx.manpages@gmail.com
References: <20210214042909.18146-1-palmer@dabbelt.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <47e9a572-bab3-eed6-b0e9-d4b9ad3c5690@gmail.com>
Date:   Sun, 14 Feb 2021 09:02:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210214042909.18146-1-palmer@dabbelt.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Palmer

On 2/14/21 5:29 AM, Palmer Dabbelt wrote:
> From: Palmer Dabbelt <palmerdabbelt@google.com>
> 
> I just happened upon this inconsistent text while reading `man 2 execve`.  The
> code in question landed in 2.6.23 as b6a2fea39318 ("mm: variable length
> argument support").
> 
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man2/execve.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/execve.2 b/man2/execve.2
> index eb3d37e32..639e3b4b9 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -431,7 +431,7 @@ so that, even when
>  .BR RLIMIT_STACK
>  is set very low,
>  applications are guaranteed to have at least as much argument and
> -environment space as was provided by Linux 2.6.23 and earlier.
> +environment space as was provided by Linux 2.6.22 and earlier.
>  (This guarantee was not provided in Linux 2.6.23 and 2.6.24.)
>  Additionally, the limit per string is 32 pages (the kernel constant
>  .BR MAX_ARG_STRLEN ),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
