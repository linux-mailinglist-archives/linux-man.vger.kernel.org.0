Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DAC61B88E0
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2020 21:24:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726271AbgDYTYF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Apr 2020 15:24:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726261AbgDYTYF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Apr 2020 15:24:05 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06955C09B04D
        for <linux-man@vger.kernel.org>; Sat, 25 Apr 2020 12:24:05 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id t14so15647114wrw.12
        for <linux-man@vger.kernel.org>; Sat, 25 Apr 2020 12:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Tmqe/P32phXxqGsiCNhumT7piuGm91wlaIzTGmsQlFQ=;
        b=R1WSBoD/8nbplBATCw9Da2nSmFmILyjbfR+tbYbFaj87AGro2Tt/aFAYhf6vJavT0T
         jmxaTXt/E0Sg50vXxspNW0iE8/8EKSTSV1gKxW1ptSsqXdp23Ah4ThOxx5xGXUS80Nng
         xbl/FqFVfoneWyUQ9WBVVzleEYiLDqDr7giAOUcqSdd7QdBB+xF9Tx/PWTOLWqUSK7mw
         chY41/HuaEPvB9yPk5XGGHzHRZZsZ8ekAsjrCR7OWCZ1Sw30eHb0a22HKH7cO3f+xqR7
         E1PFTF0ZKS34WmUsyapZEokR9BzKZuO7pVYVOqAxncJepyO67OeA6DqCDYxqRnUcwIFC
         Ir7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Tmqe/P32phXxqGsiCNhumT7piuGm91wlaIzTGmsQlFQ=;
        b=JxpeooSLgYj3XKsVsUawezw6PzM0iCkEV0bgVnArcstdUhqtfjUq8TKmWsK5dIT2Fq
         XT5dTDa9ZSRLPwUxQghS67jzwZ7tSRQ1hu8daEciTdj+cj6jUUnoc4qGJlGClZ77adtd
         yNI5oeZMBgOQksA3Aru2xhqjDzeglGBfleCvvaXU0pHp7aCGT2PllSzEYouMl1QSEoSI
         +rhuS4d8fzMnxsu9Ow0gAdIm2P0X5O5CVypHi1oQi73mTGKEwx2tyym+NndO75cX4dr9
         vgPuXT/QQMxneY9t0VQlRw0+belhd/U9KMwfSsyMqo8a76/mfu8jaAAfBYDq1Rmij3mv
         yhfw==
X-Gm-Message-State: AGi0Puagq+/G2DkU32fpNs8HQ/jNvHIuTAIUC6zfNpBdfLHKQ+hfpolU
        AjpDhmHGKFuShY6s1bNTvlw=
X-Google-Smtp-Source: APiQypIxUSWVLneaA5mBfqB/5xtNLL+jp+EOjdUKItoUiSlnjocdUMwoTYBPBvF+kSzHInS/VYbb3A==
X-Received: by 2002:adf:e791:: with SMTP id n17mr19536070wrm.217.1587842643733;
        Sat, 25 Apr 2020 12:24:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:102:f8f7:1ff:c15b:512d? ([2001:a61:2482:102:f8f7:1ff:c15b:512d])
        by smtp.gmail.com with ESMTPSA id l5sm8146083wmi.22.2020.04.25.12.24.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Apr 2020 12:24:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Rich Felker <dalias@aerifal.cx>
Subject: Re: [patch] ptsname.3: Fix description of failure behaviour of
 ptsname_r
To:     Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org,
        Eric Blake <eblake@redhat.com>
References: <9623994.qWbdUN1Qb5@omega>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f01aae6c-ddd0-ba15-5d6b-cd25d0bc7b4c@gmail.com>
Date:   Sat, 25 Apr 2020 21:24:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <9623994.qWbdUN1Qb5@omega>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/26/19 2:31 PM, Bruno Haible wrote:
> Hi,
> 
> The Linux man page for ptsname_r, when describing the behaviour in the error
> case, is
>   - not consistent with the future POSIX standard (POSIX Issue 8).
>   - not consistent with musl libc.
> 
> Find attached a patch to
>   - keep it consistent with what glibc does,
>   - make it consistent with musl libc,
>   - make it consistent with the future POSIX standard (POSIX Issue 8).
> 
> Details:
> 
> glibc's implementation of ptsname_r, when it fails, returns the error code
> as return value AND sets errno. See
> https://sourceware.org/git/?p=glibc.git;a=blob;f=login/ptsname.c
> https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/mach/hurd/ptsname.c
> https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/ptsname.c
> 
> musl's implementation of ptsname_r, when it fails, returns the error code
> but does NOT set errno. See
> https://git.musl-libc.org/cgit/musl/tree/src/misc/pty.c
> 
> The proposal to add ptsname_r to POSIX, with text
>   "If successful, the ptsname_r( ) function shall return zero. Otherwise,
>    an error number shall be returned to indicate the error."
> has been accepted for inclusion in POSIX Issue 8.
> http://austingroupbugs.net/view.php?id=508
> 
> Therefore a portable program should look at the return value from ptsname_r,
> NOT the errno value. The current text in the man page suggests to look at
> the errno value, which is wrong (because of musl libc) and not future-proof
> (because of future POSIX).

Thanks, Bruno. Patch (finally) applied.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
