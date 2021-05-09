Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 660B637794E
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:33:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbhEIXep (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:34:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhEIXep (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:34:45 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CAE6C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:33:41 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id fa21-20020a17090af0d5b0290157eb6b590fso9214605pjb.5
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0vT39SL9666iaMpqCkDcKDco1w4J/OAEbVSGaY7H38M=;
        b=iVXxIGD+jiKf2yyP9OBZN+CEHtCPrZ8zRUKRoAJhoq+yV56nR5cz+dh1Isr0YydepF
         lpHHbNammSBqh9/FX4+7pYsvD06V/nbKoLHLuKOVsXivmtMgicW275XalIn9p510Om+p
         fa6pZ3yWYvXgX+AqiGOsNRhUNmMbun7yTdcOxucQfkcetE9j7YHcFHf/QQMJnawIPWg7
         VsZ2lAMPXV7DiQfx1ReOyj5Wn+qNy4wi91DWXctdqVr5WtB/MwOqLQ09wB7cxdRSHDSn
         GUdiGLVaZZ0gHFJSTFjlt3l3vc6PqHH4qZuNzD+3/w1YMMgLlbICjy/Qxyo3P6vxI6vS
         bMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0vT39SL9666iaMpqCkDcKDco1w4J/OAEbVSGaY7H38M=;
        b=WPzAAUmT82MYlmDe1mJao2lGB6j/AKDpheUEDhxjV/WSkSrs4NfhcWYmfuLuRrH9SK
         ABqN+KHi91ljVP7uGSMAYWK5OWOV1JM3Nou4A31KvoGEIm09+AquaZDuEJE1QaulXYrs
         tBO2WnOWPkuOJy6a/7Olor+4J7XJ7hdml4VyfD+RClJXJWlOrz+9/Q113uJWZmym/Xz2
         sDAX/wPDUKKq9nL6Vr78bDhSbB4PPJYuGFcyJkXbV9BJVTXhOA3DsFVM+8NwYy708jjO
         T8ZtnjgpHBzFSQb833oHHAfvycs0oAfwtQxzQs42xOT4SRRJLMNvF2T+nKFnKxuObqm8
         PiAA==
X-Gm-Message-State: AOAM530mQ6opUnPN3aBfy1/iPlIP9LXI5wggMueLed9yg+dWBDzeuRMp
        Wob7Jg+6G8ox4bG7/k/N5+WlmlIG7xY=
X-Google-Smtp-Source: ABdhPJxRaG9tYL7LatUB/gwZrDUf4TM6TXvCTgqERyRFHx+5T0OPdrAIDi7cLaVvQWmLJXET5rGRAQ==
X-Received: by 2002:a17:90b:3116:: with SMTP id gc22mr24301709pjb.212.1620603220863;
        Sun, 09 May 2021 16:33:40 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id f1sm16741896pjt.50.2021.05.09.16.33.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:33:40 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] scripts/bash_aliases: Fix error messages
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-27-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <17b023dc-d9a7-e3d6-909c-5313871eb0e4@gmail.com>
Date:   Mon, 10 May 2021 11:33:37 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-27-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Fix the error messages to clearly show that both dirs and manual
> pages are accepted, and that more than one argument is accepted.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Applied.

Thanks,

Michael


> ---
>  scripts/bash_aliases | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index 7b1b7da9c..a14026bda 100644
> --- a/scripts/bash_aliases
> +++ b/scripts/bash_aliases
> @@ -126,7 +126,7 @@ function man_section()
>  function man_lsfunc()
>  {
>  	if ! [ -v 1 ]; then
> -		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
> +		>&2 echo "Usage: ${FUNCNAME[0]} <manpage|manNdir>...";
>  		return ${EX_USAGE};
>  	fi
>  
> @@ -148,7 +148,7 @@ function man_lsfunc()
>  function man_lsvar()
>  {
>  	if ! [ -v 1 ]; then
> -		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
> +		>&2 echo "Usage: ${FUNCNAME[0]} <manpage|manNdir>...";
>  		return ${EX_USAGE};
>  	fi
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
