Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CA7435474A
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 22:01:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233320AbhDEUBv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 16:01:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234742AbhDEUBt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 16:01:49 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5597FC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 13:01:43 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id i18so8424613wrm.5
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 13:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=709rLGDSaauxkQfkhpAG8urx2/juL9NzA0V7srQ2Rk8=;
        b=VyOSH/wPjsKOFWVX2CN3lGdWYfl4ngmSE4hZADinVbi/xmFr0dvPzcKPQsBqt65+V1
         +yRI/8xKgeWiwnRB2WX+ysbTk4CrsZgnHTOvJYMA5EgmbYBizEVPSxk4SsDrBOzZnW+Q
         a3j6UJ3R1ahqZ0BEQhqfnjKuHYurH5tNhUOYKTFXmn9hQ7JRok1/DUwk5tWN9u/0Pb3M
         5Ih5qghRvSBnvqKs8LNK2vJDQd6x8kDQHj59g4OgnEWn4zksmRpocDEj4cWVLJMsSOY8
         STtbY9vN7xAF3HFwCeUuxG3X/xq5qjXMbgjgh6VtZtXuJ5uR2/FcX7GyyRKlS15cOxFd
         j9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=709rLGDSaauxkQfkhpAG8urx2/juL9NzA0V7srQ2Rk8=;
        b=q/niwmTZYsgy/14MTiYcnuGmspNdXsylG+kBNUvdZqNopoFgIDWqPwUxuXXHZTlSwR
         4pYLCcn/42aHMNlUEOVLi9Bhanbwq6L0f7wKeo0Io44wSqLuFqzV/9WLJZQfUZUC78XR
         SB4wuUwie0W+RoNefukQ9gPzh54bZ1CunOs9CnSNUxm8WdbHyr/WzUjfcD0YSyXaP5wN
         mdmmxMv82QpmzAVRucjQoNt8MJXQKH81htgiA3tY5t/wNsnE/d4J40/9lulOibrgAgfl
         /bhgXCGA/Xa69olkdfyvNN3L2/IOUNIBiI7MAxyzpdOS+vRI0iJtx1sPyYu3xzkLDg0v
         K0YQ==
X-Gm-Message-State: AOAM531FllCz59wFBmA3kAYKKN4lISW9KQwZiRrBWNfOaq4XXFEKU5li
        ACj4vzPrsQaqxpAV6mQ+NuM=
X-Google-Smtp-Source: ABdhPJx0Kv8WHiOqD7/6xMAa7eb3aS/RL9RKe4/jFhCqJmyubM8n/xhJnwmZuPLgxs+KSbGq4WpS4A==
X-Received: by 2002:a05:6000:2c8:: with SMTP id o8mr30874954wry.407.1617652902108;
        Mon, 05 Apr 2021 13:01:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id p14sm565002wmc.30.2021.04.05.13.01.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 13:01:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Peter Xu <peterx@redhat.com>,
        linux-man@vger.kernel.org, Mike Rapoport <rppt@linux.vnet.ibm.com>
Subject: Re: [PATCH 2/5] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210405131307.2892-1-alx.manpages@gmail.com>
 <20210405131307.2892-3-alx.manpages@gmail.com>
 <b733e31a-f149-4d9a-9f08-101c62686b96@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <17c949f2-617c-fd71-73df-5a58496ba2c4@gmail.com>
Date:   Mon, 5 Apr 2021 22:01:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <b733e31a-f149-4d9a-9f08-101c62686b96@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Thanks. I've applied the patch, but I made a few tweaks afterwards,
> as per the patch below. Notably, I changed "message" to
> "notification", since that seems more consistent with the
> language in the rest of the page. Is it okay, Peter?

Hmmm -- ignore this. For now, I reverted the patch below,
since it causes the following patch to break.

Cheers,

Michael

> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index 8245253c3..eb2c6d5f9 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -78,8 +78,10 @@ all memory ranges that were registered with the object are unregistered
>  and unread events are flushed.
>  .\"
>  .PP
> -Since Linux 4.14, userfaultfd page fault message can selectively embed
> -faulting thread ID information into the fault message.
> +Since Linux 4.14,
> +.\" commit 9d4ac934829ac58c5109c49e6dfe677300e5e652
> +a userfaultfd page fault notification can selectively embed the
> +faulting thread ID information in the notification.
>  One needs to enable this feature explicitly using the
>  .B UFFD_FEATURE_THREAD_ID
>  feature bit when initializing the userfaultfd context.
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
