Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A87E5225BC7
	for <lists+linux-man@lfdr.de>; Mon, 20 Jul 2020 11:36:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728171AbgGTJgq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jul 2020 05:36:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726520AbgGTJgp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jul 2020 05:36:45 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53752C061794
        for <linux-man@vger.kernel.org>; Mon, 20 Jul 2020 02:36:45 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id a6so11505602wmm.0
        for <linux-man@vger.kernel.org>; Mon, 20 Jul 2020 02:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FEJYihSfm90nJ8zwhMQUmvM0pMdTKEmGUPUaCE2UJQ0=;
        b=mIifVzeTcIhU4nnYFZ1K4CNIeqcPI+GbqZfon8EqqpDIZK11TCONqcJNI9eoYGK3OF
         eBCYR0iKIA9J94uPdUeUigz5N8utwJYBr8FkTQoZF0bZz6AeXcM9rrIvT8aVuUNEUgSv
         roDFqtpehKgvBfaNZXUOGXejVmFB+mJIb0KjZBzh4hv9E2bamY3poL341llHMn3Akg5O
         d2auQs+kchdcVJRpdfd2324IH7LHHiHGptGx9HYoLfe5debkd5NovzlqfoJLmEUm8iBF
         ERVjo0PjdLEp0jCpI45nXEpnV0LVzw/0fXUxYTBahjtgUBeS8sglJFzGuq1hmrGJFVFv
         KPjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FEJYihSfm90nJ8zwhMQUmvM0pMdTKEmGUPUaCE2UJQ0=;
        b=oes1ryruf+ji06XxqZiBnAdCi1T74WAS8oz0+LTl5EnRyH5hD+xixC+27FFWB6JUI6
         hj79GtxmFHXDdDGx5Kl9yPsL9JT06M0L/lSAQeuB0Y/oYMsoYm0xYfFILcpy916RkTAh
         M16Am/vxiRlvh9pklVf2A1DBWItBs2dY3oGjOXl10OxAHJUl+H1VD1Dq/cfhFNZYOoRU
         fOweUqyjJfUZ+oCBDpBiQJDLgELA1GrGGCDrme1gQxPHwr+1bdULe/TxRtSfTLbGdkhB
         g+jyXh1M9+VB+L5Tz2I9kRfjoUBRzIRue927Do2vMDr5fXzorXjPHcUfVKT0Bp1tJ9uq
         Yyyg==
X-Gm-Message-State: AOAM530u94Z5HErVgddvD23SzMkLq5c4jUElBI8QiYrYNK/JB/Zsdsgx
        +kQ2CgeMzMOFasfiSG13ghZGs9no
X-Google-Smtp-Source: ABdhPJzS2LDEKcRHi8lQhVQLorJft1iYHXd3X3zvJ4ukyCOaA0vHHNvvovigRBEqKb+AbBbx1IfKbA==
X-Received: by 2002:a1c:48d7:: with SMTP id v206mr19980947wma.145.1595237803877;
        Mon, 20 Jul 2020 02:36:43 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id g14sm34503947wrw.83.2020.07.20.02.36.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 02:36:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] proc.5: use "pwd -P" for printing cwd
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200720061200.5449-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7617b408-a6e6-672b-4bd7-9a2c51738500@gmail.com>
Date:   Mon, 20 Jul 2020 11:36:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200720061200.5449-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 7/20/20 8:12 AM, Jakub Wilk wrote:
> "/bin/pwd" happens to work with the GNU coreutils implementation, which
> has -P as the default, contrary to POSIX requirements.
> 
> Use "pwd -P" instead, which is shorter, easier to type, and should work
> everywhere.

Nice catch! Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man5/proc.5 | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index 0dbc05228..55f425dcd 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -588,19 +588,10 @@ for instance, you can do this:
>  .IP
>  .in +4n
>  .EX
> -.RB "$" " cd /proc/20/cwd; /bin/pwd"
> +.RB "$" " cd /proc/20/cwd; pwd \-P"
>  .EE
>  .in
>  .IP
> -Note that the
> -.I pwd
> -command is often a shell built-in, and might
> -not work properly.
> -In
> -.BR bash (1),
> -you may use
> -.IR "pwd\ \-P" .
> -.IP
>  .\" The following was still true as at kernel 2.6.13
>  In a multithreaded process, the contents of this symbolic link
>  are not available if the main thread has already terminated
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
