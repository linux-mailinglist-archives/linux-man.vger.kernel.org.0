Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00709297344
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 18:11:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465168AbgJWQLY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 12:11:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S465155AbgJWQLY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 12:11:24 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8745C0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 09:11:23 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id t9so2523485wrq.11
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 09:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JVwEC044/uUeg8kNSQXIa6YGwb5w4Hdiw3SXh+H6ul4=;
        b=UVFH9uhQ4e6YkG7qmvGehCoUJX0JbokwwfSfJigKzUQID/yc4fk6ZA+avRrwnIM9vr
         ry8ppY7psdpV7l3zjVjVPafvrM+4KU+Ib0/503YmNgQNe2ehHmBsClEnTCmWBw7NsaAz
         Dlxii7+NZu9t6KEGQZBhbGeLWYUYA+PJ4Be7S0GcrD4ZzjUQcEmPdYhsMUSdXbLZp9Ao
         PAmaTAFSfn36VdRjhTqkr1Yp0hzUmrPGXab/ryX/Gk+IJ97HoHLvCbBJDynzXzjbihjX
         IdUji2k1GyxSH687RonTSw9qC3dRExM3zCsYvHjj+XtTk0iIcCJhguT6k1wKt16d3/jo
         sPvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JVwEC044/uUeg8kNSQXIa6YGwb5w4Hdiw3SXh+H6ul4=;
        b=VgHW7Ls5Z3aXJTEEK3As7qiaxufw12VW+FvHZapXBaiCn1MXZGydI3mfHsjqirXHNB
         NbVx/JQl9ZoXd9M60J2ooMb+bHTgm5HA6yL+eMC8LhBzRMAeMzlZo5BWArBSA3VlJHxk
         PDNPN6jNW1iurlgG9eiEYamnQ23DcwuozUHuupQwIrV9KZiaIIoIvNB1+SOZbqQO5ToC
         RwYLEwk5NcKXD52aE4pyL9h7/HktEOVk6308hOdRCbucv+kkLOUtI+3zrNjefTdD2LpH
         38JQOjUb6VkncnqI7SXp8QETwcry2gKJuwJP4+FKOg8nPw7heoDlSrGed5kXQyzmLp5c
         WJig==
X-Gm-Message-State: AOAM533f4n/VBpkObfA6xJHWZt952VYViMarWpJFTjAwkLRYL/5B1DwE
        7lTv3Msm0zC5Nnhl7XAXsOY5irLIJRM=
X-Google-Smtp-Source: ABdhPJzya1h8pGJYCDB6GzF7cDB9ejbNknmuusr+skHItLHMMavn0oL6vHSYdkcJAjvGbFxFjGhEDA==
X-Received: by 2002:adf:ef02:: with SMTP id e2mr3261154wro.381.1603469482279;
        Fri, 23 Oct 2020 09:11:22 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:597:6d00:9446:7902:22d6:6f78? ([2a01:e0a:597:6d00:9446:7902:22d6:6f78])
        by smtp.gmail.com with ESMTPSA id g14sm4082964wrx.22.2020.10.23.09.11.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 09:11:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] slist.3: tfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201023074041.68893-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e76a6a0f-49f7-340b-ae10-134bae510367@gmail.com>
Date:   Fri, 23 Oct 2020 18:11:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201023074041.68893-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/23/20 9:40 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
> 
> Hi Michael,
> 
> I missed one of these it seems.
> 
> Regards,
> 
> A
> 
>  man3/slist.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/slist.3 b/man3/slist.3
> index b54c05da3..c0182f804 100644
> --- a/man3/slist.3
> +++ b/man3/slist.3
> @@ -99,7 +99,7 @@ named
>  .IR NAME .
>  The argument
>  .IR HEADNAME
> -is the name of a user defined structure that must be declared
> +is the name of a user-defined structure that must be declared
>  using the macro
>  .BR SLIST_HEAD ().
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
