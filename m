Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0D92354739
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 21:56:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232942AbhDET4p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 15:56:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236305AbhDET4p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 15:56:45 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A544EC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 12:56:36 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id o20-20020a05600c4fd4b0290114265518afso3325601wmq.4
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 12:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Si3fxEpjIN2Y97anpEb2aNO7Gujlt/p8D0XGJvEeO3o=;
        b=KL/PWmpw1t7I/NnLeKHmSPbnLB/08JYQvE3dMECia0Dux3iyauiXR449+7e30SvATg
         wZp3CcvObOcfhYdna8byor9cpoW1ENkFpDLTfy7e1sexdQDxIZ5RZkrc0WWyjRsX9shy
         My7/y222IQ8evXJFIFL1DHa3S04SvLiG4+coZAK9+Fjbf9g8a7UzQ7ubZcL87QVq9azy
         LRH8Eui5wEnLmqqlXr3YgkH3UEOT3pCcgAhxGU+I0qZCzHYUi3YBZMXaBhKW5LtIJQHS
         VOTK7B+48BBwl9GZieOd9V6UwMhKZpL/MtBFrxkw/vG96xPrjG4QrnRY6s7XG6YPKElV
         QjZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Si3fxEpjIN2Y97anpEb2aNO7Gujlt/p8D0XGJvEeO3o=;
        b=mEX9BXNr8T6EqE2NVPvFncaxvxKclwLjC7xwZm6RPlStwSr3AwzSRv3G+pwlGpa3Nl
         V55SI+/kkViGHWFT22ER/PQv1XIVmXvybKydq3MHpKeF4V2kTg0lJ7aqa/PNLD4Bvo56
         vH8yLzwobfTkHKFNUmhML4tDSGYnYI3F1pi4BK3HUj9bXHtDc3P5laFgQJZhdbDCUX/L
         CGaLnB5IMdB60nul8piM6YpgoJ9M7PvOTU9J/oezaUhdb98QMMA3QXNL0/endiO2v+Cn
         2tY8Y6szTjk3W/LXPDIYnCyI/Mx5q0yA0aNNZxtFXdEpAkl+UxFzWbJb0CbCITYpC1us
         1nhg==
X-Gm-Message-State: AOAM531CmLjm0g3L3KyAM0ba8oUWis8CEhqXCGJewu2doqvM+6Vkhi1T
        6Lm5x5gYKPLo2OMMStXa6u4KCMBmQ6w=
X-Google-Smtp-Source: ABdhPJwvkMNoypV2/gO/P0PWTPyTcvVpi2c0BYkf0Ktq0eP5zuWPLJ9ifdi6MKUgO1uoHKrlyVtKag==
X-Received: by 2002:a1c:4b15:: with SMTP id y21mr669843wma.94.1617652595384;
        Mon, 05 Apr 2021 12:56:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id n7sm29490508wrv.71.2021.04.05.12.56.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 12:56:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Peter Xu <peterx@redhat.com>,
        linux-man@vger.kernel.org, Mike Rapoport <rppt@linux.vnet.ibm.com>
Subject: Re: [PATCH 2/5] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210405131307.2892-1-alx.manpages@gmail.com>
 <20210405131307.2892-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b733e31a-f149-4d9a-9f08-101c62686b96@gmail.com>
Date:   Mon, 5 Apr 2021 21:56:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210405131307.2892-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex, and Peter,

Please take note below.

On 4/5/21 3:13 PM, Alejandro Colomar wrote:
> From: Peter Xu <peterx@redhat.com>
> 
> UFFD_FEATURE_THREAD_ID is supported since Linux 4.14.
> 
> Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
> Signed-off-by: Peter Xu <peterx@redhat.com>
> [alx: srcfix]
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/userfaultfd.2 | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index fa1b6514f..8245253c3 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -77,6 +77,13 @@ When the last file descriptor referring to a userfaultfd object is closed,
>  all memory ranges that were registered with the object are unregistered
>  and unread events are flushed.
>  .\"
> +.PP
> +Since Linux 4.14, userfaultfd page fault message can selectively embed
> +faulting thread ID information into the fault message.
> +One needs to enable this feature explicitly using the
> +.B UFFD_FEATURE_THREAD_ID
> +feature bit when initializing the userfaultfd context.
> +By default, thread ID reporting is disabled.
>  .SS Usage
>  The userfaultfd mechanism is designed to allow a thread in a multithreaded
>  program to perform user-space paging for the other threads in the process.
> @@ -229,6 +236,9 @@ struct uffd_msg {
>          struct {
>              __u64 flags;    /* Flags describing fault */
>              __u64 address;  /* Faulting address */
> +            union {
> +                __u32 ptid; /* Thread ID of the fault */
> +            } feat;
>          } pagefault;
>  
>          struct {            /* Since Linux 4.11 */
> @@ -358,6 +368,9 @@ otherwise it is a read fault.
>  .\" UFFD_PAGEFAULT_FLAG_WP is not yet supported.
>  .RE
>  .TP
> +.I pagefault.feat.pid
> +The thread ID that triggered the page fault.
> +.TP
>  .I fork.ufd
>  The file descriptor associated with the userfault object
>  created for the child created by
 
Thanks. I've applied the patch, but I made a few tweaks afterwards,
as per the patch below. Notably, I changed "message" to
"notification", since that seems more consistent with the
language in the rest of the page. Is it okay, Peter?

Cheers,

Michael

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 8245253c3..eb2c6d5f9 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -78,8 +78,10 @@ all memory ranges that were registered with the object are unregistered
 and unread events are flushed.
 .\"
 .PP
-Since Linux 4.14, userfaultfd page fault message can selectively embed
-faulting thread ID information into the fault message.
+Since Linux 4.14,
+.\" commit 9d4ac934829ac58c5109c49e6dfe677300e5e652
+a userfaultfd page fault notification can selectively embed the
+faulting thread ID information in the notification.
 One needs to enable this feature explicitly using the
 .B UFFD_FEATURE_THREAD_ID
 feature bit when initializing the userfaultfd context.


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
