Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C5AF3A1F04
	for <lists+linux-man@lfdr.de>; Wed,  9 Jun 2021 23:29:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229639AbhFIVbi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 17:31:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbhFIVbi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 17:31:38 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05214C061574;
        Wed,  9 Jun 2021 14:29:42 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id v11so4947452ply.6;
        Wed, 09 Jun 2021 14:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZB+M+mDfzcdyIQ6TIpU0fAhnw5JTV6XLad+tNK8T4Zg=;
        b=HddxGIU38H3lTgI79wizFkCySsHHe7UpgEOaYus8+5EJP6X7Ca0h2+yKdIzBXvp14V
         PZNBaeLTQvhAxq44HPL7eGtY//7X24GcxvCflQqA5n92pD8E6jNi8hmz12Dqmp49ZKcQ
         NqRyUU54pzmB6ynibihD3UsPkwy5XdSqrOYmFbGBThId3AxDlHEHMAhJrvWVF4tniCtm
         gBI7pRT+4kEv1Ql3luRVviGpq2ccqHDu1tjiwt6CMGbVUbH7cPHXjnDSut/Dip1Hrh/E
         Jsf/s6lH7kheWNea0Jmvqk70NCFGXHo+19r84vehLgkwIKWil28+yU2wvefBxgV25dD/
         6AwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZB+M+mDfzcdyIQ6TIpU0fAhnw5JTV6XLad+tNK8T4Zg=;
        b=Y/DbY3dcgU67Itbd2GuqKKa1xEQNKrnswvhM+OKQwWYmuZX1ZvtVBYDwALo1cZMnNJ
         9OWmnhlonp94dRkar72jOscMwkLZCbnHrdd3qk7tNpGURFE1PLtaHKvkQMr8fRlZb0WA
         aeRG2Xcbqpvs8zlIIVgJziBMW7AfTvrpb88XQAOABgEUdZNSamwZXlSS0Q5J6lb4n84S
         bUY0I7ECRntqnh3gBwiNi7xg1MXkqLnCUdNgX102KzZDagylMdBAL8wFuC3ZnSphLi0C
         vDmaZWxeIyxPiQo3OR2K43/CbgN4AUAVvnjy+pIgxGCfNal7yiTCHghFfOr7AL53Joh9
         Bxng==
X-Gm-Message-State: AOAM531lywUpyDTZUgNdU2vnirI4Hi2kAMbVb6zl2nzezzo4CnoGyvKd
        0Vdk2ORaRfMwPyWYQ3cyMfM=
X-Google-Smtp-Source: ABdhPJyE1fSnoXmaejRec48ZVmM8QrdfKpF+py96FFwCjb7KiJO4l5STpa39IYx/a6wedGcnA45xrQ==
X-Received: by 2002:a17:90a:ad8e:: with SMTP id s14mr1626177pjq.198.1623274182403;
        Wed, 09 Jun 2021 14:29:42 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id l10sm2508577pjg.26.2021.06.09.14.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 14:29:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-kernel@vger.kernel.org,
        Pedro Principeza <pedro.principeza@canonical.com>
Subject: Re: [PATCH] kernel_lockdown.7: Remove additional text alluding to
 lifting via SysRq
To:     dann frazier <dann.frazier@canonical.com>,
        linux-man@vger.kernel.org,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        David Howells <dhowells@redhat.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20210607221943.78414-1-dann.frazier@canonical.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2aff4e76-a615-2bfe-33b9-bc2546420a17@gmail.com>
Date:   Thu, 10 Jun 2021 09:29:37 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210607221943.78414-1-dann.frazier@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Dann,

On 6/8/21 10:19 AM, dann frazier wrote:
> My previous patch intended to drop the docs for the lockdown lift SysRq,
> but it missed this other section that refers to lifting it via a keyboard -
> an allusion to that same SysRq.
> 
> Signed-off-by: dann frazier <dann.frazier@canonical.com>

Thanks. Patch applied.

Cheers,

Michael


> ---
>  man7/kernel_lockdown.7 | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/man7/kernel_lockdown.7 b/man7/kernel_lockdown.7
> index b0442b3b6..0c0a9500d 100644
> --- a/man7/kernel_lockdown.7
> +++ b/man7/kernel_lockdown.7
> @@ -19,9 +19,6 @@ modification of the kernel image and to prevent access to security and
>  cryptographic data located in kernel memory, whilst still permitting driver
>  modules to be loaded.
>  .PP
> -Lockdown is typically enabled during boot and may be terminated, if configured,
> -by typing a special key combination on a directly attached physical keyboard.
> -.PP
>  If a prohibited or restricted feature is accessed or used, the kernel will emit
>  a message that looks like:
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
