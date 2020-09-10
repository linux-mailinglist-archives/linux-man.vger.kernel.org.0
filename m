Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07A73264450
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 12:42:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726080AbgIJKm3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 06:42:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725933AbgIJKlQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 06:41:16 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC3E3C061756
        for <linux-man@vger.kernel.org>; Thu, 10 Sep 2020 03:41:15 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id s12so6119912wrw.11
        for <linux-man@vger.kernel.org>; Thu, 10 Sep 2020 03:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nB7YbvGOPpXOxqd9tx+WqgfbcbuiAu5YGwrzIqM/IPM=;
        b=rrXAXos3hoYeK8jxXX9muh2CbYv/xYntIqjq9IvZzBqoM14QRvWM3KKFJtWJH+pBAT
         b9uJ5mJ4KWITAoh+OrVPjosZXZfskl/sn2NMPlcvRSxEG2VUoLBZlGOrx6Fc2EI9df85
         F5xlPoujT9YI2g1Hz4L0rWcVgDnlCYmHvJ2kI6aGw/PoPgEajpYTzGOdPejluBm9kCt0
         TjGp+5DQUWNF+v997Ae+LShjS9wTSeaktHQLwKD6Xz6iJhkZCMUJPiT+kvgFCdR3+BHG
         yu/NCnCoaGDfkE+TYpxxUTS9QANeEKz/Ede8ZfghDba/w8tEhFLfXlYjrgSWKFn8pLg0
         CsiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nB7YbvGOPpXOxqd9tx+WqgfbcbuiAu5YGwrzIqM/IPM=;
        b=i4buQ3brsMrxqFpX0AjudsBZynoOGfMKD+c5HjtHKuOvfujadA+bNM8CBo/u1dRf/l
         lFspf5UjSHZHqXqdPZPid5TTMZuyUHHgD8YhRV8jsATvfz/AXAeFhNIKfFIH06+lLEXH
         EU8iN2jBkJsPqCmx9qwjmpCNORNBVirzPiF62SmOVysRFSxZzjurDFxRHXBujlpKcmal
         G1NlznJ8vmX7f2rWjg65gvy8bqulzvFGRoVx0XUQz9Bv4Ns9A0XihqJnWHxzd9B04uO/
         Wb77FhyYXk/yrrewuCrQwMJhy/rpxDvcyFjfQMChupoL1WKeHubuBdrWhAQuiNx7oOU1
         uiUw==
X-Gm-Message-State: AOAM5324YUSHY5NIpOtkNlSZXovQwSWvzURHZDKFExwICd7tradSrpyg
        GC8cGlNMRY+zV884WwwE4wUWXEk3Cgk=
X-Google-Smtp-Source: ABdhPJy4XJyc3Ew+sTEiwoZPkI77MT8OxHNKcNFFU6oIJB6RtNZ7UhVfZYpgsJuKNGeWR1vGAMcBgw==
X-Received: by 2002:a5d:62c2:: with SMTP id o2mr8132423wrv.418.1599734474264;
        Thu, 10 Sep 2020 03:41:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id k8sm3127691wma.16.2020.09.10.03.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 03:41:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] loop.4: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200910095634.5440-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <481f903a-0efd-5621-65ef-dfb07accfe35@gmail.com>
Date:   Thu, 10 Sep 2020 12:41:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910095634.5440-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:56 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks, Jakub. Patch applied.

Cheers,

Michael

> ---
>  man4/loop.4 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man4/loop.4 b/man4/loop.4
> index 30db9c612..73b23871d 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -227,7 +227,7 @@ in
>  .IR loop_config.info.lo_flags ;
>  and
>  .IP *
> -Eeplicitly request read-only mode by setting
> +Explicitly request read-only mode by setting
>  .BR LO_FLAGS_READ_ONLY
>  in
>  .IR loop_config.info.lo_flags .
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
