Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DABE228E49F
	for <lists+linux-man@lfdr.de>; Wed, 14 Oct 2020 18:40:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731108AbgJNQkP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Oct 2020 12:40:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726908AbgJNQkP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Oct 2020 12:40:15 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE6C3C061755
        for <linux-man@vger.kernel.org>; Wed, 14 Oct 2020 09:40:14 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id z22so137141wmi.0
        for <linux-man@vger.kernel.org>; Wed, 14 Oct 2020 09:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ybwORFFGZ3p1fJpXGe/mZ2gSct7rkhD93udRHXTmMyE=;
        b=Z3bVU2FqDMH+qYGRPpF8Xi/uyJQJVZbuXTSIlZuXqU4Dmuzo165ik/S71o2OMLYH7R
         ss+7XqHjFFB05R61lL/FUNJe0Cvk4KkOQl1n3ODfQ88dWITWyy0seDvtKrMUpN8AjXii
         WwYHrvKvzrt4WG2cahR8th4yFaeUgD0LXImMogE46VHit2spuRI0ksHmVVksmfyBXzB/
         VWvCRNWsSxm8EZyrzdmTouXKGQL+TAPrRzVTxfqmjqweBoLpJcUa4ftdtcOMALuLVSDJ
         RGvD+c1E9ciMrLnzSLwX1MGJnyS4qpHNtpq0sZoDj+A8zGVBU9Wf/bSqoOjrblCD+ipu
         pQQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ybwORFFGZ3p1fJpXGe/mZ2gSct7rkhD93udRHXTmMyE=;
        b=GG0nciAon74kPsk26/xX+SMU0ZAjdTY+wGye9T+Uhytodh/umh+w8Ei5Q4+bl2vUSC
         /7LSw8Jc5RaukLx2Is9fWGBQKzdMDmqEhSMlEBEpuDE+oiSq1ijXgHD4/0sDj3nBVhZI
         dFQaoxA6VBkVXPlclaHrJPSjRlJgkNQjRDZ11IJs5wlT3FvpwBDQ/9mh7817V6k0TowV
         jn6f6xrDHCUjcqcMiLSkpmAp6zXxgB+HVdlN1WW5PMJMJj8+gyNyRdlNI5l5QqMPmDS2
         YB1xRYDaPvGdL9gWKsXcRaX6ib+TBis9wdHlFfWcZ1+G5f8mT4cwCGFGCTprlc01PQ1v
         WdKg==
X-Gm-Message-State: AOAM5317u2enm+pmZoUDQb4D0Xq0rnXdDTlFAw3V70QRj3NGjMHEcV8Q
        RabFhHmQtj9NUDm4b0ovJsw=
X-Google-Smtp-Source: ABdhPJza+vf8+kxJVk2iycCZmEW/e1kt6CPpEQJ1VTUOI6YzkpD3CsxtXKObuNqutgOhyssWIQUbpw==
X-Received: by 2002:a1c:5685:: with SMTP id k127mr271851wmb.135.1602693613409;
        Wed, 14 Oct 2020 09:40:13 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id z15sm6416772wrq.24.2020.10.14.09.40.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 09:40:12 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] regex.3: wfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201014122414.66000-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <35fd6c8a-4e55-6cb1-9cdf-3deedc1697f4@gmail.com>
Date:   Wed, 14 Oct 2020 18:40:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201014122414.66000-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/14/20 2:24 PM, Alejandro Colomar wrote:
> The wording was incorrect:
> 
> It stated that 'eflags' may be the OR of one or two of those two flags,
> but then a third flag was documented
> (which according to the previous wording could not be used?!).
> Moreover, the wording also disallowed using 0 (i.e., no flags at all),
> which POSIX specifically allows;
> I tested the function with no flags and it worked fine for me,
> so I guess it was a problem with the documentation,
> and not with the implementation itself.
> 
> POSIX ref: https://pubs.opengroup.org/onlinepubs/9699919799/
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> I was working with the example, and the documentation was a bit weird,
> so I want to be sure I'm doing it right before sending you the example.
> Please review that this patch is correct, which I guess it is.

Hi Alex,

I'm sure your fix is correct. The wording "It *may* be..." was I 
think intended to imply that instead of a mask of one or more of
those bits, it could be zero. But that's an imprecise way of
saying what is better said by your patch.

I've applied the patch.

Thanks,

Michael

>  man3/regex.3 | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/man3/regex.3 b/man3/regex.3
> index d4f7a09e7..a7e04f7b5 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -136,11 +136,7 @@ are used to provide information regarding the location of any matches.
>  .I eflags
>  may be the
>  .RB bitwise- or
> -of one or both of
> -.B REG_NOTBOL
> -and
> -.B REG_NOTEOL
> -which cause changes in matching behavior described below.
> +of zero or more of the following flags:
>  .TP
>  .B REG_NOTBOL
>  The match-beginning-of-line operator always fails to match (but see the
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
