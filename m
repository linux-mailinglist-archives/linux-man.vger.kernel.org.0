Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3A80AEAA56
	for <lists+linux-man@lfdr.de>; Thu, 31 Oct 2019 06:25:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726575AbfJaFZR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Oct 2019 01:25:17 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:56001 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726552AbfJaFZR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Oct 2019 01:25:17 -0400
Received: by mail-wm1-f68.google.com with SMTP id g24so4472454wmh.5
        for <linux-man@vger.kernel.org>; Wed, 30 Oct 2019 22:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UDO0mIg1xmtlKwce7Y5s8JMhqo8lp1JNNgKB+3EFYJs=;
        b=kRskl6O1BscDJI6Y5MkUcBqD7Xa4K3mFJcyFB2YfsIYGUgpcPXOt+MuBNUxizmehRM
         Jc7Vk6fMp6FgMcXEuQSye4aMF8+mC77ziFMrDV5mt1xewa1grMQRHrYtqC2e36uqdsQM
         V6TJCdVeXKmFFqB4sPj6emYd7c5jvN4OrQZNOZTnDJykJqDJukWuA9mMZY3twSPrxFSy
         qmfMdQ1hlvkXs8OkjAdDtr28wx/Xn6TcsMznKeB5DPADcIOVlSmpGDl+ofv3XhPOVkqO
         gm+oXsXlaGFBLPUqSRnJtO7kC0jVTcGmkyQRMCPoiMSH3zQ85Xzl/W4QiNrVUX/llsPr
         DOOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UDO0mIg1xmtlKwce7Y5s8JMhqo8lp1JNNgKB+3EFYJs=;
        b=rlUfqCbxer9bsj9PgFF6mjLdsG/ksHvaQC3FpKUQkTQpTqMloZiS6U1DX6QXUJ9Tjb
         gVPowqONxUiaOoRpeBdcwNle2wlKTOJgmLdH4GmZJhA+clA/cUK3IhzM7XvZQXkpx0xm
         Jidt/rY0ozmnKZ3y4VQoa0PPKwCh/5jjDq/ZM1zRbmqnVQBaB0U81B+eOIGettCHBUO+
         pZntA7o/psnPnmI/GvzmXnJGkL+rZLHdwZdwzGD6k2PFNvW+IMO4bCso2XySKt23NwR5
         UtPMtJ0T8Y85GDmwlEa/YyhySIEcicjkV3EuXukUMyG1gGbZj8WjFdcAgbB3Q/4yZrJ2
         eknw==
X-Gm-Message-State: APjAAAV7c/ICxMJmP3hkuHY0OnwC87FcW9eK/KU7vS5c9ta7B0urmXKe
        nv2ARNu6EbGf7cEJCnzBhtShP9+IJ5E=
X-Google-Smtp-Source: APXvYqyNGA0sngTWx5eJCzLac8i0xrcbO7+db6KN/DzwjkPS36Wfvl55Zs9FGnPW3Bp06WaJj69xNw==
X-Received: by 2002:a1c:6854:: with SMTP id d81mr3245776wmc.75.1572499515634;
        Wed, 30 Oct 2019 22:25:15 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65? ([2a01:e35:2f38:d7b0:e8b5:a4a9:346b:8c65])
        by smtp.gmail.com with ESMTPSA id x127sm2823245wmx.18.2019.10.30.22.25.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 22:25:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] copy_file_range.2: tfix
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1571714423-12086-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8979d26f-9abd-3592-6390-823eda85bea4@gmail.com>
Date:   Thu, 31 Oct 2019 06:25:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1571714423-12086-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Yang Zu. Patch applied.

Cheers,

Michael


On 10/22/19 5:20 AM, Yang Xu wrote:
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>   man2/copy_file_range.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
> index c6ae11a8f..9ed0cc31a 100644
> --- a/man2/copy_file_range.2
> +++ b/man2/copy_file_range.2
> @@ -177,7 +177,7 @@ specified data types.
>   .I fd_out
>   refers to an immutable file.
>   .TP
> -.B TXTBSY
> +.B ETXTBSY
>   Either
>   .I fd_in
>   or
> 
