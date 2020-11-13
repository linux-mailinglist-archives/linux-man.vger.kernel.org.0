Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 812892B182D
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 10:24:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726181AbgKMJYh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 04:24:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726160AbgKMJYg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 04:24:36 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F834C0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 01:24:36 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id p22so7468534wmg.3
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 01:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=M9ydXP5kQ7o2qDtL5UqghguORzUUqmX4yWGlFs0hDJY=;
        b=phQ16UzudbGxhy+IbSqInK4lw3WGM31fRg0p2uj4/IgGFtC6P4FyCGBybcPRTECZKh
         kX2GK7DesuGl7LKCWlOEOLWWYaCdQm9thB+16Jvz9WxptrcXs/TiYyUJfp2K8+kCuUnz
         YFy7LXW3+8jTNIkclT+9I8i1nEBSORBaZM88TZGGzitx3HvZrdxPOMcyO6fmcmfzz53u
         8aJ9hKMSJLk5JMogZuzpTIUHv7EsOHv6l1LNbj56Pz9k70mURO3a37FSvLzSdL7IB3R+
         yrYvYconOI1/JHraH8txTNbf5ZR2zSz0auHfV1XDSr/OezVD1EUH1MY4TGqG8MrfxsBj
         O6kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M9ydXP5kQ7o2qDtL5UqghguORzUUqmX4yWGlFs0hDJY=;
        b=V8ZfTed8m2jWCaokI/YYI2o6L5Fb2czn5VxCKYa0oXit8zKb6W4HNj69hq3qlNs6Tf
         XfIU4GHK7mKqpmnSGImYl5Baa//yPA39Eu3tP1DajpMszGHjdYvigwfS4u6g+fJ6lmGM
         fuLzzVUHzmaCmeTNnR2n2U9cv4dlZOHeaW4t09dB0M/qsAGfiqJRMZ4MxoOfJBzwtKiG
         +SiESuOdqDEZ1Vz0LJiqkQLjWA8sdbCLMs10Km3QW1DhyX0roXrsC2FF4kKC67s2HXHp
         XeVDIU+ddmY6hFz8aGcPLdDVwUQ8vvwSG+l7Rn5jpZnzqgQvTh4ySunN/vkMWlmlglps
         ZtRQ==
X-Gm-Message-State: AOAM5326IyidH6ILzOGCVVouZu7tg4Ca1KFJRERtFKLw/Tmr6SYVUSnr
        s/pH1RcqbuGlhbpn8TsxxSE2wFEChgw=
X-Google-Smtp-Source: ABdhPJwsQhtFDopdLJ6R/UpLHhSM5hDLtR5PWc1uOxK9FyAdEp0P+lcg7U63KJcy7PH22SCNZSqk+A==
X-Received: by 2002:a1c:dd06:: with SMTP id u6mr1597366wmg.155.1605259472151;
        Fri, 13 Nov 2020 01:24:32 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id p4sm10469544wrm.51.2020.11.13.01.24.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 01:24:31 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] io_setup.2: SYNOPSIS: return long
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201101135957.90237-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3e4eee64-9c31-26c9-8bd0-a2cb9f782183@gmail.com>
Date:   Fri, 13 Nov 2020 10:24:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201101135957.90237-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/1/20 2:59 PM, Alejandro Colomar wrote:
> The Linux kernel uses a long as the return type for this syscall.
> As glibc provides no wrapper, use the same types the kernel uses.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
> 
> Hi Michael,
> 
> Please apply this patch after "s/io_contexxt_t/aio_context_t/".
> 
> Cheers,
> 
> Alex
> 
>  man2/io_setup.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/io_setup.2 b/man2/io_setup.2
> index f9860fda5..1a89de220 100644
> --- a/man2/io_setup.2
> +++ b/man2/io_setup.2
> @@ -11,7 +11,7 @@ io_setup \- create an asynchronous I/O context
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "int io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
> +.BI "long io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
