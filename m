Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E6FF36C05A
	for <lists+linux-man@lfdr.de>; Tue, 27 Apr 2021 09:43:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230255AbhD0Ho2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Apr 2021 03:44:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230461AbhD0Ho2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Apr 2021 03:44:28 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FADFC061574
        for <linux-man@vger.kernel.org>; Tue, 27 Apr 2021 00:43:45 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id y124-20020a1c32820000b029010c93864955so6458160wmy.5
        for <linux-man@vger.kernel.org>; Tue, 27 Apr 2021 00:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Xr0xW185bQow0sszVhygfq7939g4AaovrhmrGqq+BjM=;
        b=WhVaOImpCxObvjikbjT+BG6ljGOgciAqfBLRrs+GgZesW4RrtRnVGp2f4gAFvzojf+
         cxgHBCLbFHPSLRiJg0fKcdqkTUXL8OYgUivsbx4yErxb+HHViyESxMWWMMFTk7kZhLUK
         vKNb9BXTahdDXSyXr9g784YBCJB9auTxfhwpMnX0lO7RrJ5ZOmIHv2vl8L1txC4NeXJr
         7ssEZfcZboYJHWWyK91i3ffXmBSPUdM7EnzqxIf6SEBIyTRtgeH6Vv+XzqVm40PYFQhB
         vHHOe+OHYtFhDagVhhKjhx1GHfUsIjClrtWOx3xuRTh8nP+3x+MPBshUnZwse+M4vqN9
         Grdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Xr0xW185bQow0sszVhygfq7939g4AaovrhmrGqq+BjM=;
        b=k8DToLz6qjoffbTQaXv/5aUfAeDhC1U8rGngLQW6WbEpNKbwqwkaac7ScXoXI4BLUj
         NEI6zTC1DZSuE1GE/pWgGE/jR3SeMI+j7CB8l42gehq+gpZl/L6wNZvyWQHd8KgUhb96
         NRqGJ9t33C3wYN4KInmwHgTPIa+4ZH4GI5TNmq9cIgq/K/ffBByOe7t6r42hIsNdhFnf
         G14WdhEeBLSUtkkXqvmWFFkhs24vqSFQiJcjDqDvMzYZTCtpe9dLKQ3YQmhrCvGOr9vF
         VgT63fRqJ98OgMkP8Simah/GgG9OXa6ZU/IDRtMRYJafP0uahlgqktlHHxKAmCmRQClc
         bOlg==
X-Gm-Message-State: AOAM533MXmU86zADhN8qSLNNUTKNLCvxREtapu9dFnTlLRUcpBAghKDN
        Do3s+l84xPNVE/ByAkOaXSu5IZltyqE=
X-Google-Smtp-Source: ABdhPJwdzysiwr5mAcFshqvpXbvn28lZ1C1NIFsxCfMjh2qwIvoSLciBc1Wpxia1baExirml3xCTAA==
X-Received: by 2002:a1c:f20f:: with SMTP id s15mr2934792wmc.61.1619509424036;
        Tue, 27 Apr 2021 00:43:44 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id z18sm2920682wrh.16.2021.04.27.00.43.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 00:43:43 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH 2/2] exit_group.2, getunwind.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210426185813.3952-1-jwilk@jwilk.net>
 <20210426185813.3952-2-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <81c80583-c217-08b8-09ad-e36d9fd0857d@gmail.com>
Date:   Tue, 27 Apr 2021 09:43:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210426185813.3952-2-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 4/26/21 8:58 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied.  Thanks again,

Alex

> ---
>   man2/exit_group.2 | 2 +-
>   man2/getunwind.2  | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/exit_group.2 b/man2/exit_group.2
> index b512927d4..d197f1f2e 100644
> --- a/man2/exit_group.2
> +++ b/man2/exit_group.2
> @@ -28,7 +28,7 @@ exit_group \- exit all threads in a process
>   .SH SYNOPSIS
>   .nf
>   .BR "#include <sys/syscall.h>" "       /* Definition of " SYS_* " constants */"
> -.B #inlcude <unistd.h>
> +.B #include <unistd.h>
>   .PP
>   .BI "noreturn void syscall(SYS_exit_group, int " status );
>   .fi
> diff --git a/man2/getunwind.2 b/man2/getunwind.2
> index 2c44506c7..403bd7770 100644
> --- a/man2/getunwind.2
> +++ b/man2/getunwind.2
> @@ -31,7 +31,7 @@ getunwind \- copy the unwind data to caller's buffer
>   .nf
>   .B #include <linux/unwind.h>
>   .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> -.B #inlcude <unistd.h>
> +.B #include <unistd.h>
>   .PP
>   .BI "long syscall(SYS_getunwind, void " *buf ", size_t " buf_size );
>   .fi
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
