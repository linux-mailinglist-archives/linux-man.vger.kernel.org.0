Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80DA7200738
	for <lists+linux-man@lfdr.de>; Fri, 19 Jun 2020 12:48:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732450AbgFSKsO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Jun 2020 06:48:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732399AbgFSKsN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Jun 2020 06:48:13 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30BF9C06174E
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 03:48:13 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id a6so7266423wrm.4
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 03:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Qlb7cRqsae2Ls5Qd8KZugE5xRGqcMx5agK6zndI+aug=;
        b=kKQ0Df2qxmqjGbUnIU/sH3VbMZbn8y8AIhsLYP/SQj5AZEKhTewZ1ZKc7iCHmYhFAd
         Wc80Q/Zzfnad2QBKc0nihTsrtJnrxMD2aK6NhphL1Xh3VH65DEmkfRZByULpYUQxWZpQ
         FzFewj7zq3tvMmk0X1VNU78PjuDsmAQzC5f/5mFbQeCW/Jkxt3Fe5H2aAf0KFLXWZRW8
         hj9rnsYg9LMvZw/MaTJrYZKeEZPWyS0ZvuUTcgsXYv9V7kVYqZjEJDjpti6D6XbpCuSl
         B+lqSKN0RJcW3gMVTnc9olka7K3Moc41amSKpo7T18TCAh1mdIAMdY2Hmw0h+KO855EL
         Ns6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Qlb7cRqsae2Ls5Qd8KZugE5xRGqcMx5agK6zndI+aug=;
        b=iEhLVyRpRMQnymg17maieMvwncATmSxwLZNhyAxgyYEBM8wG37ZAgqlvVnaeTRnp9b
         b+x0BFL0l1uF8CQrwq9D+blyXHuep0OXrmHxVxQs/A6ZtoeefJGGl3rAoPuXEsp2snCr
         QFBYFzMBxKpLfns5uZnMBTrJJcobVnZN92/JV5N/PFiWObjxzYw8HkIgXi4bM217Me24
         SPRdl3h2xgXr3u3Y2QK7G0nM7A8i9aeVoj/dmYd1b1yePIPF5+hj74XWZYPlR/iG4H0B
         CoFTP5PBGyo7PMCPvajw2bu7f9HKcbpfK3vmObnuGOWJ1/flTUM6EUQDsbnJ0rzuZJwC
         lH9Q==
X-Gm-Message-State: AOAM531/S2WYSPBPsUWjJFOxYFhYeK4HzsZ2bZ4Cf0D2+YU/7B4j1JD1
        U3h4MsjPMH5nCa8AkytGFVjzA8olCWs=
X-Google-Smtp-Source: ABdhPJyfgPv33yXWvMEXeaA89+Nk9N9DmoifzCbv+zUqKJ33uwwZj0A2Hq8TMFixfBdKsGl17JmH+w==
X-Received: by 2002:adf:aa94:: with SMTP id h20mr3216158wrc.327.1592563691846;
        Fri, 19 Jun 2020 03:48:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id f2sm6309566wmj.39.2020.06.19.03.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 03:48:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: wfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200618212649.7889-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <20b8c5ed-0c8e-812f-4c09-074dfb723608@gmail.com>
Date:   Fri, 19 Jun 2020 12:48:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200618212649.7889-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 6/18/20 11:26 PM, Jakub Wilk wrote:
> Reorder full wordings to match the order of abbreviations.
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man7/man-pages.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index 6216e254d..eecba8996 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -837,7 +837,7 @@ when rendering a page with, say:
>  In general, the use of abbreviations such as "e.g.", "i.e.", "etc.",
>  "cf.", and "a.k.a." should be avoided,
>  in favor of suitable full wordings
> -("for example", "that is", "compare to", "and so on", "also known as").
> +("for example", "that is", "and so on", "compare to", "also known as").
>  .PP
>  The only place where such abbreviations may be acceptable is in
>  .I short

Thanks. Patch applied.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
