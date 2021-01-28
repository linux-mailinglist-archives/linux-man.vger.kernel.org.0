Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6372307534
	for <lists+linux-man@lfdr.de>; Thu, 28 Jan 2021 12:52:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbhA1Lvg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jan 2021 06:51:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbhA1Lvf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jan 2021 06:51:35 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7CACC061574
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 03:50:54 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id l12so5099414wry.2
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 03:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KISPIkILODva/eXCjcfmSY7k5V/g4sT8VfQXVjsV8f8=;
        b=MLt8saZLvwaEWNjZev5eHv7cCBI0Gh4oyeoObN3jcKzGimD0xW/u+Kr9mTLuQD6gS8
         pow/Cnse6B8YKy9LiUZQeS1qZGzpP/LPqJny2AehjqG0mPsGtfKalHS8xZKc00TnUx5Q
         J7Ns1Xh82mRX/T+OEhsmNMlJQcHRpG4fOL0fJEYQfVvt1sxTntijPwZpsZOa+/PId+EW
         Ivr69idR8kaHPO4swDbOrRTeN/Hfq2R9x6YL7hGsHLhGnwvcKj8g/YKhjDkXCpyBCqNR
         OPE5w+JwqMeOznFPO3Hmy+0UC2++Q5gWwqQg31FHLpCbeGaQePoAHKolbMA0nQYMazdx
         +4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KISPIkILODva/eXCjcfmSY7k5V/g4sT8VfQXVjsV8f8=;
        b=j9pdN4hTfLsRlKV2sNiE4keJEVbF6uW1ob50zIYdk8oC5c+beyMLdaO3cBiCXE2FBg
         bYGSS2t59e8Zn3HLRHKhIDOPZZ8bah6nhlns1mV1aJvpej/Nf8QjZJi87ih8GbMyClHd
         8Q0hjRqH/9EUh1BifAh0KlvRskAAeOJknBKepwME1Oy/8E1P2VP4UUaHgqiZzd+a1ozQ
         yGDOOBpc54sTssa3DqFXv86CBOyI5+iBxXRrbnZB89VQvWm4tfvlmY73fXXYYgn2doIY
         hveGizIkOcWvAeh9cZcEFJVljF9BiNFHcR9a/1qAy4uWzLTy42eORpWwpGf8UbXFzTLH
         lGMA==
X-Gm-Message-State: AOAM531BgYa0ADAWOj3J4Xb+I0Rgho9aQGH2IXEwQ448z05NRFI8LTSe
        ki8Jp7yIzu6wnZ2QUb4r38A8UF1r96I=
X-Google-Smtp-Source: ABdhPJy0poAUoP3NwXJUVbgTzFC5fQuSDSxtGjbTu94dhx0ENOyHaRjwxEZIe5mwwVpnOY1EgdD+vA==
X-Received: by 2002:adf:dfc3:: with SMTP id q3mr11961508wrn.223.1611834653389;
        Thu, 28 Jan 2021 03:50:53 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id z1sm6710218wru.70.2021.01.28.03.50.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 03:50:52 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20210125211723.7363-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <488fafd5-c413-0690-b1f6-b3cca1afaef4@gmail.com>
Date:   Thu, 28 Jan 2021 12:50:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210125211723.7363-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/25/21 10:17 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks, Jakub. Patch applied.

Cheers,

Michael

> ---
>  man7/man-pages.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index 14bbea54c..7658ef33b 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -563,7 +563,7 @@ is set is
>  is set to indicate the error"
>  or similar.
>  .\" Before man-pages 5.11, many different wordings were used, which
> -.\" was confusing, and potentialy made scripted edits more difficult.
> +.\" was confusing, and potentially made scripted edits more difficult.
>  This wording is consistent with the wording used in both POSIX.1 and FreeBSD.
>  .SS ATTRIBUTES
>  .\" See man-pages commit c466875ecd64ed3d3cd3e578406851b7dfb397bf
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
