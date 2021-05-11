Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD4AF37A3F7
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 11:46:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231271AbhEKJry (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 05:47:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230434AbhEKJry (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 05:47:54 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78D60C061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:46:48 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id o127so10736291wmo.4
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 02:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Vqyh+ob5tS9yHHjRQiAGC179WC9gCuTY8vpQ13Zq+nU=;
        b=K3YYZJHg7DTHcTPFgEeji9TWYXchP7CjEJwk2RdpD68zLNMXIXTgvzejgYfZi59rDA
         AiKhaUSl37McTyuU/YEF+uFSpiWofKDq/3+wbqMOOJeJOO+c7svzSeI2gFAY4CAiFZZe
         ju3c0zR4WXwDAYg50tuoIJLaHZqJJ60JuCe8CO0FmxaDtPjs4jNLNdYaBqDmcm7T3u8a
         3fQV9IPbPvZpWJqhyjkoYAduDR90oUTRa6bmD2mEGFzeQCGnes6l2dMOZBnvG/Ed1zPz
         uVMouerPD02tnjmPA7aw5WQQZgiEZdzrP9ytsQ8ptH81agKFgp8/ak2SupxoNafqAKT6
         FOrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Vqyh+ob5tS9yHHjRQiAGC179WC9gCuTY8vpQ13Zq+nU=;
        b=GUZMTQgza6+b9zfehzy2iHk5UKqKjXycXHUSkpL1jFR7/5J2wODNxAZZYg6wM373eT
         umZlQaH5E3uiw69t/U99fDCuDGaMkytdyfF5vwVevRK5O09lI7dd64YL1zpeQF/9yOJi
         bkjINLhY/0I1Yw5+8VvQBwe0IKWEZBAy3nuC0IRTXN0h8RZSETBV7kVIT+RhMOf6x77Z
         jqmXe64uWZRb4eRa6j7+S9EIZ7w6Ys1qZm06Uj6qsxaedQtEZZ534WZDTVpp2Cn24v+h
         3Xdvz+27HDB7uN5DIkHPCE9StrL2x3TvIyUzD/qgBZSTRb5db0bHkHZaBv3yUzdbn98N
         xuUg==
X-Gm-Message-State: AOAM530Lu66Nf7FJGY1R8o33fbEyWNWlxNjUsBOeEFrLrLzLthW4eje0
        x/IOddZsX86yG7C6dcrTq1M=
X-Google-Smtp-Source: ABdhPJzVYR9dyWYlWEiqoB8AXU8U20mJGdmdKf+mfbzU77H0Snmq9o9oZa1J9zzYueuqiI0fLrM8NQ==
X-Received: by 2002:a1c:7c1a:: with SMTP id x26mr4447943wmc.22.1620726407321;
        Tue, 11 May 2021 02:46:47 -0700 (PDT)
Received: from [192.168.43.70] ([46.222.232.120])
        by smtp.gmail.com with ESMTPSA id j13sm27065155wrw.93.2021.05.11.02.46.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 02:46:47 -0700 (PDT)
Subject: Re: [PATCH 2/5] ttyslot.3: tfix
To:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20210511092913.98202-1-amotoki@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6fcb144a-6d27-d5c9-3f71-27d4131dd5cc@gmail.com>
Date:   Tue, 11 May 2021 11:46:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210511092913.98202-1-amotoki@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Akihiro,

On 5/11/21 11:29 AM, Akihiro Motoki wrote:
> Signed-off-by: Akihiro Motoki <amotoki@gmail.com>


Patch applied.

Thanks,

Alex

> ---
>   man3/ttyslot.3 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/ttyslot.3 b/man3/ttyslot.3
> index abd3299e7..8a1f020c9 100644
> --- a/man3/ttyslot.3
> +++ b/man3/ttyslot.3
> @@ -30,7 +30,7 @@
>   ttyslot \- find the slot of the current user's terminal in some file
>   .SH SYNOPSIS
>   .nf
> -.BR "#include <unistd.h>" "       /See NOTES */"
> +.BR "#include <unistd.h>" "       /* See NOTES */"
>   .PP
>   .B "int ttyslot(void);"
>   .fi
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
Senior SW Engineer; http://www.alejandro-colomar.es/
