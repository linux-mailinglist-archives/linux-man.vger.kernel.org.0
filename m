Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9DBD2A7B02
	for <lists+linux-man@lfdr.de>; Thu,  5 Nov 2020 10:51:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725827AbgKEJvr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 04:51:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725308AbgKEJvr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 04:51:47 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D604AC0613CF
        for <linux-man@vger.kernel.org>; Thu,  5 Nov 2020 01:51:46 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id c16so937933wmd.2
        for <linux-man@vger.kernel.org>; Thu, 05 Nov 2020 01:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6Sn2eung7Lpd9rICfZ27da0Z3rrZxQbaty2xPkTmsaI=;
        b=mzYO4dLPWkDV7RDhq5amHymQ1mXYu1/5Boga/bLmpMpd1cct5Cncrgzbx9chT1TReY
         8nu+seUSXtKtIbFN7eVs9uFvqHc6A1l/n0rTOY2kJ8buO2TjDyX6fCmYv78vHrU6uCtP
         Cyw2fauveZmrTUCM1ZqmDWIknpBnOv5jVLwvKQwdFNtMJIwIPJdn78GM/pSbLBI3/+Ee
         +N+qqPGOSuoHYflwu95Fp/ZcwF6gdwOvc9ElkO1SyLb5/ipd5gBL/l5M7CRIXPmSB0wM
         IhN8U38+ZFl9O7qoRpT4oGZkkJRIEj+obI2YHkgj3saxIxTScrE6DL26MjOWZORU+3tG
         ugYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6Sn2eung7Lpd9rICfZ27da0Z3rrZxQbaty2xPkTmsaI=;
        b=rpxVhr9ykmoxKBUkZxwFzJNeaQo27rUv4piR08KPu2nfgwHu6Vtosgq1Xobm+Ng8MN
         ypQpD2koLrGJexWyqJGjT+UqvC7fpTtmEoFSmx+RovOUo6a9xgh9viFo7u+VSGvSVAQr
         jze0v666J/YD3qqBR7N3vPmhl0karQu088bNH8Gi7lStEBr2cZFm8Nv5cMraeWiVtCjc
         oRYatc5Vevt5gVotD5yRzRm8lgx+1unr7hmEajA9FSZogL9gkXV88cFDy6UmpYC5EFfn
         cvTv8PpNWlWlGu/XBJJmX3f/9OKCOAsase12InDDBJMoJbo0/ovI456Jq8x1HH/j6Cq8
         KOlw==
X-Gm-Message-State: AOAM533paotxrRlk6u50jbAgpThCbTVvJfP+SIvwcxNEc9m/ooJ5FvAm
        DlGzTukaaAv8y6Tw+zVpy5Wza+fiXjvzwg==
X-Google-Smtp-Source: ABdhPJwUK5kRR6zhZjdCXIDcoNm8LCzbvaYxpVk7zdKWsJ9RM7QzN3S9S5gYx4TkqAqDcn2Xj5Bcsg==
X-Received: by 2002:a1c:e087:: with SMTP id x129mr1769401wmg.2.1604569905434;
        Thu, 05 Nov 2020 01:51:45 -0800 (PST)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id l11sm1679364wro.89.2020.11.05.01.51.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 01:51:44 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] strerror.3: tfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201104163509.5795-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <de7e87c2-a438-7375-f491-b4efc3338b05@gmail.com>
Date:   Thu, 5 Nov 2020 10:51:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201104163509.5795-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/4/20 5:35 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks for catching that Alex! Patch applied.

Cheers,

Michael

> ---
>  man3/strerror.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/strerror.3 b/man3/strerror.3
> index 1b95014ee..72b4d3994 100644
> --- a/man3/strerror.3
> +++ b/man3/strerror.3
> @@ -252,7 +252,7 @@ T{
>  T}	Thread safety	MT-Unsafe race:strerror
>  T{
>  .BR strerrorname_np (),
> -.BR strerrordesc ()
> +.BR strerrordesc_np ()
>  T}	Thread safety	MT-Safe
>  T{
>  .BR strerror_r (),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
