Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61EB97E3B58
	for <lists+linux-man@lfdr.de>; Tue,  7 Nov 2023 12:52:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234218AbjKGLww (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 06:52:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232147AbjKGLwv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 06:52:51 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB9DA10A
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 03:52:47 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40842752c6eso42669835e9.1
        for <linux-man@vger.kernel.org>; Tue, 07 Nov 2023 03:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699357966; x=1699962766; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WYNXgu4aRIDlAkdVizIHU8Qcq8icvRzLVhjKGtP02aI=;
        b=M0Q76GRTv6z2kHBqBDl1rYEorDD6LP/oP6F0HFCYtlGPnPP0aWk1wp0DtHd05UsX4I
         3DGhbV+bm029W2YWzbjc7Xvea0J5DVaz72v+xLTabe/w6RrTWzsQK22oSGDuvJKA718S
         KMXmUnwKeSw/CYBwJ3XjOjMK0TNbH0N9M3uoiDWuUtx+q6a+06gU+A7/RMHIJSaccoss
         cfFwdU8XZO1VQcnIZi+Gq1WiPNvO0vuRwIhHLfQbWrjrJj+VGh9FagDKv/lNTWQ7aHQC
         j6xUNEYR8V5zgbFpboF7YrGq6RH1vz7S1Kt9RpQ7zg+957dV1XYTOUw/IBhXLMklV/BR
         zXLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699357966; x=1699962766;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WYNXgu4aRIDlAkdVizIHU8Qcq8icvRzLVhjKGtP02aI=;
        b=odw5+aiky8+ni8MoQv+FTzeU/usjN7pkgzjumBXDLdMzzGf++xdzyjfqhB43D3KdnW
         VXK7O8zSnzGv/Q0cri57TZpmmzcwcr8RoylfGvzWaAuzGhHaE6PW7wk/d1aXpss8zugf
         DZwVzNBTz1iA//gteIqBXNNMHnlmwsk4tW6ZEprkUxPtnLE2i4cJjPg54mG5VTeQZH1N
         bakb+r8+/tQeUYBDFb8m5wlyfqcqwT7Z8GwM1BdkzdwVMTRAcif1x7SfKRWG2e53LqwA
         R4ITLh5BFw7kF/O8ftoDmyAEoLnJpYVnPO01Mivi4aghV1OaKrta+TZ6f7x2sGAzzvO3
         r6yQ==
X-Gm-Message-State: AOJu0YyjVuOYxbycShsalEYSefocfCT27FZyv4l4ojGz39Uqk+7g5vrr
        sVqf5TkCezOBI+oD74CbRSQBOw==
X-Google-Smtp-Source: AGHT+IF6rJuLk2VbgTbRjYvCpAGEDQYel5Etb+6EVnwiZT5AySsMgKfIa2qIkFpb1JF3fWsetc2j8A==
X-Received: by 2002:a05:600c:524f:b0:404:6ed9:98d1 with SMTP id fc15-20020a05600c524f00b004046ed998d1mr2640801wmb.41.1699357966085;
        Tue, 07 Nov 2023 03:52:46 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id l3-20020a05600c4f0300b003fc0505be19sm15551066wmq.37.2023.11.07.03.52.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Nov 2023 03:52:45 -0800 (PST)
Message-ID: <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
Date:   Tue, 7 Nov 2023 11:52:44 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From:   Jonny Grant <jg@jguk.org>
Subject: Re: strncpy clarify result may not be null terminated
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian> <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
Content-Language: en-GB
In-Reply-To: <ZUgl2HPJvUge7XYN@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 05/11/2023 23:31, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Sun, Nov 05, 2023 at 09:16:25PM +0000, Jonny Grant wrote:
>> Michael, what do you think about this documentation suggestion I have made. Interested to hear your opinion.
>>
>> Should the man page follow the C spec description of the strncpy function and how when it copies the arrays, it may leave the resulting array of characters not terminated, and warn about this pitfall.
>>
>> C99 had this, and it is still there in latest C23 draft - worth clarifying on strncpy(3)?
>>
>> "7.21.2.4 The strncpy function"
>>
>> "269) Thus, if there is no null character in the first n characters of the array pointed to by s2, the result will
>> not be null-terminated."
> 
> What ISO C has said and continues to say about strncpy(3) is the actual
> harmful stuff, which has led many programmers to believe strncpy(3) was
> useful at all for producing strings.
> 
> The problem I see with what ISO C says about strncpy(3) is that it
> treats it as a string-copying function.  If you treat strncpy(3) as a
> string-copying function, then it is really broken and should be removed
> from libc.
> 
> However, its functionality is still useful for those cases where you
> don't want a string, which is the only reason I didn't mark the function
> as [[deprecated]].
> 
>>
>> Note, I'm not using strncpy myself, it's a documentation clarification proposal.
> 
> I think it could be useful to add a note that one should first read the
> CAVEATS section and string_copying(7) and only then read this page.
> 
> 
> diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
> index 239a2eb7e..c7bb79028 100644
> --- a/man3/stpncpy.3
> +++ b/man3/stpncpy.3
> @@ -37,6 +37,12 @@ .SH SYNOPSIS
>          _GNU_SOURCE
>  .fi
>  .SH DESCRIPTION
> +.IR Note :
> +These functions are probably not what you want.
> +Read CAVEATS below,
> +and
> +.BR string_copying (7).
> +.PP
>  These functions copy the string pointed to by
>  .I src
>  into a null-padded character sequence at the fixed-width buffer pointed to by
> 
> 
> Is this scary enough?  Do you think this would tell readers to never use
> this function unless they know what they're doing (and even when they
> think they do, they probably don't)?
> 
> Cheers,
> Alex
> 
>>
>> Kind regards
>> Jonny
> 

Alejandro,

We see things differently, I'm on the C standard side on this one. Would any information change your mind?

With kind regards, Jonny
