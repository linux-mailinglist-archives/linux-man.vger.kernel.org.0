Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA4F33205AE
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 15:28:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbhBTO2T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 09:28:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229657AbhBTO2S (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 09:28:18 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2C67C061786
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 06:27:37 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id k13so19369419ejs.10
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 06:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4K77Yy6UaDRsKiamC9OJQAsMYTMEQVjkVwDzFltp2ys=;
        b=lLglvFs/7PmkRyVClT0rBdubnVRxaLfRb8OimruoiEDzGkjiErwFXmOUPE9pf2q4bK
         WQr0DRLuaP7AMnRTrJdjolBm6sJc8D+E6w+dibmWF/mFUGmBMx+5PphQa4Zy5DEMqins
         uHJRLEtk5xKpgXW8se/awbt1iLyfTxDF3Fj8KAMrzr4RsJKhSXNqu0dQ+vALnRl2ACFx
         o07SrdpZpB8arZtj5G9bvIGwikboD1DHOurzP8xqXbWQWwqnXYynpAbYLZutAkKvQKlv
         D7M84Susk+AflG+JalCTpcBjr0tY4X4HS/LckBCnHfq5EBcKIfeCfTi2/iaN8+z03w8X
         jwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4K77Yy6UaDRsKiamC9OJQAsMYTMEQVjkVwDzFltp2ys=;
        b=CHx8Hv5EMfCSkXnbHKYK1k4TOz4s9cZFvcyf4pJ/BjKnEnoPkidByXX9NsDfU9qVOS
         Fgxpza8+ZH9rY7IqryHk44SEKihSps9eOwczyPXzuS+aFTQFswo+lHH11a44pokEWEb3
         h7pDb5ZKfisqgudO5MsVPuq3ur7tTwZiRY6jRCzJW3YbJNQgw6UbGDLkU72Ar+36bTye
         7XW1Bo/N9sRqXwAtRgb4IQqI8yswSmibfNjdgkXkMj0UKpHe/D/SA3BiAgVrUsux345d
         1oFV9njLsZAPEgGE1QUfSFzKF3GzEw4P4ZDJ8I0FxFjmJafd2b+W/Zi4DAG6tAsSqZc6
         LsuA==
X-Gm-Message-State: AOAM530uzvrDScZb7MJUzpvA9mVIgTqDkT8hZelDraR++Da2q+wZCOix
        iZF/OY100JDC1v9ByQUe0fc=
X-Google-Smtp-Source: ABdhPJz6n2MritOx/QQ+BJ3/zIpGNNdPpuy21/XgFztmxkpPTRMCXAzBFwAEFzCoM7JNIeUqumUEqg==
X-Received: by 2002:a17:906:7119:: with SMTP id x25mr10395619ejj.362.1613831256436;
        Sat, 20 Feb 2021 06:27:36 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id l2sm7559323eds.51.2021.02.20.06.27.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 06:27:36 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] ptrace.2: tfix
To:     edef <edef@edef.eu>, linux-man@vger.kernel.org
References: <20210219234906.117356-1-edef@edef.eu>
 <20210219235421.120078-1-edef@edef.eu>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <33560819-8f85-98b3-c1ee-996190440807@gmail.com>
Date:   Sat, 20 Feb 2021 15:27:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210219235421.120078-1-edef@edef.eu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/20/21 12:54 AM, edef wrote:
> Signed-off-by: edef <edef@edef.eu>

Thanks. Patch applied.

Cheers,

Michael


> ---
> I seem to have forgotten my Signed-off-by in my original email,
> my apologies.
> 
>  man2/ptrace.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index 17e415ba2..5245338ba 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -1052,7 +1052,7 @@ structure contains the following fields:
>  .IP
>  .in +4n
>  .EX
> -struct ptrace_syscal_info {
> +struct ptrace_syscall_info {
>      __u8 op;        /* Type of system call stop */
>      __u32 arch;     /* AUDIT_ARCH_* value; see seccomp(2) */
>      __u64 instruction_pointer; /* CPU instruction pointer */
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
