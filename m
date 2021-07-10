Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAAC63C360A
	for <lists+linux-man@lfdr.de>; Sat, 10 Jul 2021 20:16:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbhGJSSp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Jul 2021 14:18:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbhGJSSp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Jul 2021 14:18:45 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A370C0613DD
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 11:15:59 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id p8so17350504wrr.1
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 11:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=q/JS6qm0BNtVg9JndociL53She6u8NxV5hTNwwt3bgw=;
        b=kqKch/rgb2DDzqd7D4sjfb1ZwiddDIWbdaZCz+pFLagUXIeHlkKAiqm+y8ve2gQ+sJ
         tGQIT5eq0Hy+bbILINtBBbtJ+PoaNfbzdH64wHNI4TuwuK20nxepo7BPI2xYHZBcJ56Q
         9s/5+TcYBAXAVRGT703Sd3V6yCJLJrHmzP+t66KhrtXSclNRIbguqjLJuAJdHf30kMoB
         NzFjp1dMTLEnhKeNPwxYJAZ0xVMwolc1wpIRcwT0pl6mKb03LEk8DwU0nk586fzYRlaC
         lzt6FSWI3RVnqqQ+SklTwm5EkViUuaO7bL9TIcIhx+IHvOVTL8ptJXOVeLFroGm7r/aH
         Tt7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=q/JS6qm0BNtVg9JndociL53She6u8NxV5hTNwwt3bgw=;
        b=tDNF2I0xyYx2OFmR9fmOkyYeJNuiFsBopAslLOY2YrhgeqAMz7vRnD08JlYgX3RMqI
         2XHvGjrmm9s9OIxzvI9aWO3bWGR7ccOD6jiCIfCP1LuzZFIvKNHxUPkLLdbq8wcGmm2I
         hPqHwbCJlxCod6dJtAszzXX8KASCA92Zgtiz4xmEUT2L0FDoyZHdInfWT5He91RAcV8c
         urKY0zpIIDmipRHjQ0C+bOtKEkSP3nH/bg7gyjXzhssWTpkQLojMcZSgrlwqOsDGMVWf
         JqOOr1UC8uppcyG9AkZkLXFiTwv0RFGDJ8o0UzSVTSz77jb1YKFOKFuacuYfddm4fjVE
         gEfA==
X-Gm-Message-State: AOAM530rV3/CGmw7FM1gMDmzKc6QRuHSgtjFZu7Z763qD14SuNF+weQ3
        x4ZyYAhXZrWs3xJBVuryZ3qWDczwnoU=
X-Google-Smtp-Source: ABdhPJwO3EiZJK8VMprND1Bly+Rbt+oC6ePu23blaTcW3Q85pYOuVQZBd+98R3iebnkqeguUuGIpaQ==
X-Received: by 2002:a5d:4fd2:: with SMTP id h18mr24288788wrw.289.1625940957884;
        Sat, 10 Jul 2021 11:15:57 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o14sm3134163wrj.66.2021.07.10.11.15.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jul 2021 11:15:57 -0700 (PDT)
Subject: Re: [PATCH] wait.2: Add ESRCH for when pid == INT_MIN
To:     Richard Palethorpe <rpalethorpe@suse.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20210708100853.17391-1-rpalethorpe@suse.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4bc36021-8d93-6af6-07ec-c388fcd2e4d1@gmail.com>
Date:   Sat, 10 Jul 2021 20:15:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210708100853.17391-1-rpalethorpe@suse.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Richard,

On 7/8/21 12:08 PM, Richard Palethorpe wrote:
> Please see upstream commit:
> 
>  commit dd83c161fbcc5d8be637ab159c0de015cbff5ba4
>  Author: zhongjiang <zhongjiang@huawei.com>
>  Date:   Mon Jul 10 15:53:01 2017 -0700
> 
>      kernel/exit.c: avoid undefined behaviour when calling wait4()
> 
> It avoids negating INT_MIN by returning early with ESRCH.
> 
> Signed-off-by: Richard Palethorpe <rpalethorpe@suse.com>

Patch applied.

Thanks,

Alex

> ---
>  man2/wait.2 | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/man2/wait.2 b/man2/wait.2
> index 5ae955b3f..63d872ee6 100644
> --- a/man2/wait.2
> +++ b/man2/wait.2
> @@ -455,6 +455,15 @@ was caught; see
>  The
>  .I options
>  argument was invalid.
> +.TP
> +.B ESRCH
> +(for
> +.BR wait ()
> +or
> +.BR waitpid ())
> +.I pid
> +is equal to
> +.I INT_MIN
>  .SH CONFORMING TO
>  SVr4, 4.3BSD, POSIX.1-2001.
>  .SH NOTES
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
