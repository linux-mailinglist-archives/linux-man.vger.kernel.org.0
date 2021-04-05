Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 918F9354814
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 23:13:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232646AbhDEVNd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 17:13:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229626AbhDEVNc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 17:13:32 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94637C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 14:13:25 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id d191so6290731wmd.2
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 14:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BV7bcTq6mSTJYUKFnKwYlVdUoIUnlQOE3vsMPkwEsAw=;
        b=jiGU9Pk3/9OlBxvlGTgaTn5hassi8ggXwBK7Cbg/nIN2ife8dm7YGymxoZAsmQ/DI7
         SXZCKJsYRPfd1POCkcFTKVn+IMrc5GB7dXpjxuED+qI066t9ON6ZK/3W7G3XxUGMwnXt
         Ew/5chpUtN16W0Lwxgb60wCIfwyJty2CaSk+q6lfIX/ZUEMKrIzrFFHcUZuH3tAwJT2w
         EMtvNtLi1zFJHh9cvMtp5UQI/fNxNjoJeLO9blWO/8mZWbMWGk5pRLF62H/EqtXQ3Ock
         J7eGYBvssZ+jl8drkeK9nLL/DlLW9IureCU7vtuioiYWZfP9SnWi/nYbEAUwLez+GgnA
         yegQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BV7bcTq6mSTJYUKFnKwYlVdUoIUnlQOE3vsMPkwEsAw=;
        b=j5+TiY6zCbpLl2Q2WwJRBf1/neqO0gYtu9CTjIvQfVJlNZzSDQ2CkVuMpaxC5OsQij
         xJhhYmFQRyN4jHSQxHcc9l6JHZzQPGR1/c6Mf3wA6a3Gpq/FvQfFXxNgeJcMmBKqWnzK
         kw4Iln8IqD36d9BQFUo/1+vfWdUMwrQGOigPnKFrGEO6JQGT/JoZPq9wP5OuDNBcpPRI
         jKyUwlSug6DI4ZkUQ8Vupr8O+zvohWx4BUD7HgKG8YmhyYRBKcMcWadReCfbkjnY1TVz
         /8d7ib2CT+7AceRFFtz390nWHohrdqUN4rYPKBlfB1/OShUunOwRNoBdNaAFTr4bWV0e
         UGRQ==
X-Gm-Message-State: AOAM531cG0zKkLDkg1e5OtnYGAIlNIE46tPl4PYA/Y6s46NMkGwaf9MB
        H8N6Qgm+RSkdTnlYheLUh48=
X-Google-Smtp-Source: ABdhPJwr5wk1M40w1FdowlRvu2PV3QOk9DQQb/o2oVt+RybaIVfbApyJUdq6xv4QViORp6Sw7G6nsA==
X-Received: by 2002:a1c:49d5:: with SMTP id w204mr878239wma.51.1617657204394;
        Mon, 05 Apr 2021 14:13:24 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id v7sm698118wme.47.2021.04.05.14.13.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 14:13:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Peter Xu <peterx@redhat.com>,
        linux-man@vger.kernel.org, Mike Rapoport <rppt@linux.vnet.ibm.com>
Subject: Re: [PATCH 4/5] ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210405131307.2892-1-alx.manpages@gmail.com>
 <20210405131307.2892-5-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7560ffa5-cd0e-0d46-8558-abed963d0bac@gmail.com>
Date:   Mon, 5 Apr 2021 23:13:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210405131307.2892-5-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex, Peter.

On 4/5/21 3:13 PM, Alejandro Colomar wrote:
> From: Peter Xu <peterx@redhat.com>
> 
> UFFD_FEATURE_THREAD_ID is supported in Linux 4.14.
> 
> Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
> Signed-off-by: Peter Xu <peterx@redhat.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied. 

Thanks,

Michael

> ---
>  man2/ioctl_userfaultfd.2 | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index 9120bdf40..014c0b5c1 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -208,6 +208,11 @@ signal will be sent to the faulting process.
>  Applications using this
>  feature will not require the use of a userfaultfd monitor for processing
>  memory accesses to the regions registered with userfaultfd.
> +.TP
> +.BR UFFD_FEATURE_THREAD_ID " (since Linux 4.14)"
> +If this feature bit is set,
> +.I uffd_msg.pagefault.feat.ptid
> +will be set to the faulted thread ID for each page fault message.
>  .PP
>  The returned
>  .I ioctls
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
