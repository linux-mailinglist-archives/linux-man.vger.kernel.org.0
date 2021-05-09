Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EF5C377937
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:19:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbhEIXUx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:20:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIXUx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:20:53 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C78ABC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:19:48 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id b15so12369012pfl.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AmbhPeJbXGasaT6EgdeZymGlnRuPJ1bIyxwKLWP9Leg=;
        b=ef7H1QWxU+dSqWFMuhtHIetBv/4liFdD1gIGi0jckdlN+ha/x1XtS7Ex9f9Senk8BJ
         UhV0wbvt2WXYT/QyWr44kJYCNY3oA5jEyfL4hHo8IbE+bGksbfBZJ4r1NmTmTlYak3yP
         JkuTYDLhroX2h4tqCuOYDXWtQG8PuKJ9ABzXN1HzDIj0j113pqLmUQ0R63I+i96v82IZ
         KLyG1BqA0mWT1WO0RtotBGsIdgIchGbPF1zke/e9n8K87FZ7W6oJcqshUSdvom7vQLoc
         QPXM4NZxwzVDeWfZ9xQy59sqnsLiGF8olFai9WJhTSUrX2mpa2Q261a9ympSMfZhSCvK
         8CdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AmbhPeJbXGasaT6EgdeZymGlnRuPJ1bIyxwKLWP9Leg=;
        b=sNYycSecKadHnXaFyJjB9gL1VtHX/27yQkD3OvurLZESaWMWItRlOYPP4XDUe52j3+
         eSct4Nckl5CHG+t7BpyJx3w1AviWAtEdC/59GuxF7kIwkZucFNLDiJovsjgR37zxiQin
         h8oZSY5f4FjmDfa/vgc8p7qp8t1MEP8K/iBPbhLLInzDgoEL37Aqd35m3cVclRLcb0uN
         21PKgBUbKnzWvV0r1U+VbZIq3Xt99Rynl79IjaWIX4YPY6M0FC0XCOQGTwz4x/bsgGEz
         eqNOpJi+hKPfzMoHwMkaW347g5Ci2LZIgbCD7ju28747+LnILEyU0mt5KwrHddrsrnbQ
         /gsw==
X-Gm-Message-State: AOAM531/z16DF6dLF4QfRNdOvtCpJ77Yo5kzF0xPKI7/ECqFewBmiTQY
        /3W3ARsSP73y7uTkodQ+SmhzvGgeCsA=
X-Google-Smtp-Source: ABdhPJyMVJn2IAsyPidKkoxOzGL1NF396w6ty1Gs2LqanQEHvGnm0f+qOXyvRJ+RVROvkFGnrEczfg==
X-Received: by 2002:a05:6a00:7d7:b029:28e:5a59:25f9 with SMTP id n23-20020a056a0007d7b029028e5a5925f9mr21735656pfu.24.1620602388245;
        Sun, 09 May 2021 16:19:48 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id l10sm9134334pjy.42.2021.05.09.16.19.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:19:47 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] sched_get_priority_max.2, open_memstream.3: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-13-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c620a2e9-65a3-1834-96b4-bb3be60eec0f@gmail.com>
Date:   Mon, 10 May 2021 11:19:44 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-13-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael


> ---
>  man2/sched_get_priority_max.2 | 2 +-
>  man3/open_memstream.3         | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/sched_get_priority_max.2 b/man2/sched_get_priority_max.2
> index 8a857f6e7..2afd88681 100644
> --- a/man2/sched_get_priority_max.2
> +++ b/man2/sched_get_priority_max.2
> @@ -80,7 +80,7 @@ thus it is a good idea for portable applications to use a virtual
>  priority range and map it to the interval given by
>  .BR sched_get_priority_max ()
>  and
> -.BR sched_get_priority_min
> +.BR sched_get_priority_min ()
>  POSIX.1 requires
>  .\" POSIX.1-2001, POSIX.1-2008 (XBD 2.8.4)
>  a spread of at least 32 between the maximum and the minimum values for
> diff --git a/man3/open_memstream.3 b/man3/open_memstream.3
> index ba6cbfa75..ea1489cb8 100644
> --- a/man3/open_memstream.3
> +++ b/man3/open_memstream.3
> @@ -110,7 +110,7 @@ l l l.
>  Interface	Attribute	Value
>  T{
>  .BR open_memstream (),
> -.BR open_wmemstream
> +.BR open_wmemstream ()
>  T}	Thread safety	MT-Safe
>  .TE
>  .hy
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
