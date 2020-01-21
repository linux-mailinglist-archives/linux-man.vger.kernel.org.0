Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A9E60144636
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2020 22:05:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728896AbgAUVFm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Jan 2020 16:05:42 -0500
Received: from mail-pf1-f193.google.com ([209.85.210.193]:33612 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728799AbgAUVFm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Jan 2020 16:05:42 -0500
Received: by mail-pf1-f193.google.com with SMTP id z16so2136812pfk.0
        for <linux-man@vger.kernel.org>; Tue, 21 Jan 2020 13:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XWdXp6XAmEDIO+McYbFd/FBTzJRDLJ+RysdlKyAJCpk=;
        b=LMQHr1uvwImgYD1jTmhl7+RQsglMBshwiI3xWV47cC6CuET+QYO8qKTCBF+YftPJT4
         Kvipbinmro0/EMjZp+qCDif7zY6EmiqPaNVoi6Jf7luTyjWYhmrIY6/FCjJCixVuiAkj
         JBDFrDE1KJ3E5eq3Zvr2I9amUWcFJ/7iXrkV70Kxu19YNq9jbz+yqYCCGkMCda3eM2fd
         gW5WnvFBz3HTDqWdD9dFd2nGFQ/Ahi02U8/DO4iTLgJvS+IObB+m3j0y6y6IPkVBL7yv
         yNDEWF4n5+3mT94bDOrVHlw5qTRCfRQ7ugG67v4MVpJb+40Wt5moD/h5CXgPueXjTfFU
         BPfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XWdXp6XAmEDIO+McYbFd/FBTzJRDLJ+RysdlKyAJCpk=;
        b=O7KsqSdPb/xNWRL/+aRWrBYXVBvTDvZaquhaanCl4idBhPbe7gLQyz2mN/8AXKjV2+
         xGY7pjVMmSJEESNUKPqCmHlKh3d3pwAM4y8uRSQwDoQWODvOxDCww+qQeWoWfIaMwHHl
         UanBOTxWI/WjvCM0CejmRTlB6T/JW4scGLAnwIZJI4Zzn1Gl4+30w5Svs4R9cSHnEdll
         7GZ5JELLLa7O9yDwlTHZQJF+gA8cl1vXUakVY6/XOb2ynbQBLJ/UQRKAufO56nDMD4wp
         K2MtgCs78HJNp0eV2iHjGzM13b5OApJi9SVhWjFVhBdkNpYtPHjBSsUx1k15P2FgyHAa
         D8sg==
X-Gm-Message-State: APjAAAUgipmdOeX0wT/ueb9076G8gTRKlymUNy6arED+kD/iP1cSGwrS
        Qn04/dzscs98D6D8VPQPf/0S5vXQ
X-Google-Smtp-Source: APXvYqyPy1AZzu79uNMZDik8uVbO+jonFLwx0ZfgmXuD5xeUgTcQgV6zQEk4RHk8geer3CiN2gnwqw==
X-Received: by 2002:a62:5447:: with SMTP id i68mr6442928pfb.44.1579640741437;
        Tue, 21 Jan 2020 13:05:41 -0800 (PST)
Received: from [192.168.1.72] (122-58-99-230-adsl.sparkbb.co.nz. [122.58.99.230])
        by smtp.gmail.com with ESMTPSA id i11sm363290pjg.0.2020.01.21.13.05.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2020 13:05:40 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] userfaultfd.2: add EPERM error
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1576649587-20008-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4c28c97f-2c81-c915-2615-a5d69a3e592a@gmail.com>
Date:   Tue, 21 Jan 2020 22:05:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <1576649587-20008-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/18/19 7:13 AM, Yang Xu wrote:
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man2/userfaultfd.2 | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index 8d0a66ed9..2b432f043 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -440,6 +440,11 @@ reached.
>  .TP
>  .B ENOMEM
>  Insufficient kernel memory was available.
> +.TP
> +.B EPERM
> +Unprivileged user(without SYS_CAP_PTRACE capability) uses this call when
> +set unprivileged_userfaultfd to 0. It was introduced since Linux 5.2.
> +.\" cefdca0a86be517bc390fc4541e3674b8e7803b0
>  .SH VERSIONS
>  The
>  .BR userfaultfd ()

Hello Yang Xu,

Thanks. Patch applied (with some tweaks).

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
