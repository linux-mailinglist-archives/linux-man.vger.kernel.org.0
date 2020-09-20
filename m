Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A323C2717CD
	for <lists+linux-man@lfdr.de>; Sun, 20 Sep 2020 22:19:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726156AbgITUTv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Sep 2020 16:19:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726148AbgITUTu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Sep 2020 16:19:50 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D329C061755
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 13:19:50 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id y15so10502660wmi.0
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 13:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gFUhIraxKJs6eKpagIDMMBdjkIPO8vTyHgoDTFEqPJ0=;
        b=T68efC7Du1kbKDEeUzXEkDjoFdSCh1mcm/XSbqQ1G171jw3xRA73mXG9Zs6R0839Km
         ctUUPYC8rsg76v36M3NmYFFCTJAY+xHb0PALvN+Rapn52gL9I0xlA/fTFZC+BtvqBgtH
         n/URd86FZrcc4SxKUacGObDeSrcoxps/14WI/SoPjVtlGJkeXo+XUPdIkzVsfER9vgEj
         ZiwcUOWjloeFYU8aFBVMD3iUnEvliBEgC9PpIAtn3H3U0r343HYRki6IaxLJx6boBvlS
         t/ps8feV4RnRKsmyUrTxAqJCx7GN4JBb4hKhN3i4zHLBfYXkvDItQ9GX7rLas4hpf4pm
         LB4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gFUhIraxKJs6eKpagIDMMBdjkIPO8vTyHgoDTFEqPJ0=;
        b=LZKOztSQaFr6X7hNbcUMwIeUWsqPo+X5I/joEGQbTKFP2ydxGAyY6rn01AEIUCtusa
         jiV35yAL08AIgKwNjs2DOmbX+sAAt/Jl4QWv5cH0/bl+GdW/pbCJHabafrg9jfY4Qyy8
         OtLZMuXvC0FQOxbFcJA21dw1HKje37oZ2S6tUhp/4WpkM3vcwijMiIinhn1w5VWU/ZOV
         lmmr7eS6nWMlNwAVNYntBQCYSaRO7FXhn57t4plldS8BU2TOl4FYt6Q9hgsGIFiFMos8
         88wseZuk8cL5QyrdjXdr3xE9TPyLHFnzSz3Kc9/bESchItUTMZvnu1utTZ2HMiSRRY38
         ZMyA==
X-Gm-Message-State: AOAM533Ff4amBpGMfSQGWPkpErHSOAoP2J3w9gla2QTDItVX6HlMtPqw
        X0/MP0MIZ70jDm+h1NKGHTp+LcsTRJk=
X-Google-Smtp-Source: ABdhPJxr+iEH0QjIt2u2D1gAV4ixkdB5TesfNVciA3Qg9Xj13IMtlQTCr5+FegCjBGN55zhP/LBToQ==
X-Received: by 2002:a1c:5685:: with SMTP id k127mr27635248wmb.135.1600633189028;
        Sun, 20 Sep 2020 13:19:49 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id a11sm15802529wmm.18.2020.09.20.13.19.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Sep 2020 13:19:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 8/9] system_data_types.7: Document siginfo_t
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <a5e4490c-b796-c13f-fb74-75ebc7dbe321@gmail.com>
 <20200920180551.63608-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b4541b7f-7e03-f69a-d3f5-b746066ff1ab@gmail.com>
Date:   Sun, 20 Sep 2020 22:19:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200920180551.63608-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/20/20 8:05 PM, Alejandro Colomar wrote:
> Note: There are a few members off this structure that are
> not required by POSIX (XSI extensions, and such).
> 
> I simply chose to not document them at all.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hello Michael,
> 
> Clearly I needed the weekend!
> Here's the patch as it should have been.

Thanks! Patch applied. Some notes below.

>  man7/system_data_types.7 | 39 ++++++++++++++++++++++++++++++++++++---
>  1 file changed, 36 insertions(+), 3 deletions(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index a7955f331..080f0057f 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -213,6 +213,39 @@ See also:
>  See also the
>  .I aiocb
>  structure in this page.
> +.\"------------------------------------- siginfo_t --------------------/
> +.TP
> +.I siginfo_t
> +.IP
> +Include:
> +.IR <signal.h> ;
> +or
> +.IR <sys/wait.h> .
> +.IP
> +.EX
> +typedef struct {
> +    int             si_signo; /* Signal number */
> +    int             si_code; /* Signal code */
> +
> +    pid_t           si_pid; /* Sending process ID */
> +    uid_t           si_uid; /* Real user ID of sending process */
> +    void           *si_addr; /* Address of faulting instruction */
> +    int             si_status; /* Exit value or signal */
> +
> +    union sigval    si_value; /* Signal value */
> +} siginfo_t;

Some minor white space issues in the above structure (blank lines,
misaligned comments); I fixed them.

> +.EE
> +.\".IP
> +.\" FIXME: Add a description?

Generally, I think we always should have a description, even if 
very short. I added one, mainly in the form of a reference to
sigaction(2).

> +.IP
> +Conforming to: POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR pidfd_send_signal (2),
> +.BR rt_sigqueueinfo (2),
> +.BR sigaction (2),
> +.BR sigwaitinfo (2),
> +.BR psiginfo (3)

That list is "just right"; thanks.

>  .\"------------------------------------- sigval -----------------------/
>  .TP
>  .I sigval
> @@ -239,9 +272,9 @@ See also:
>  See also the
>  .I sigevent
>  structure
> -.\"and the
> -.\".I siginfo_t	FIXME
> -.\"type
> +and the
> +.I siginfo_t
> +type
>  in this page.
>  .\"------------------------------------- size_t -----------------------/
>  .TP

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
