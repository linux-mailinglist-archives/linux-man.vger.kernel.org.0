Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 359BB4A325F
	for <lists+linux-man@lfdr.de>; Sat, 29 Jan 2022 23:40:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351324AbiA2Wkp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jan 2022 17:40:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243417AbiA2Wkp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jan 2022 17:40:45 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 091A9C061714
        for <linux-man@vger.kernel.org>; Sat, 29 Jan 2022 14:40:45 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id l12-20020a7bc34c000000b003467c58cbdfso10939415wmj.2
        for <linux-man@vger.kernel.org>; Sat, 29 Jan 2022 14:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KsEKcRCXAFO/pXr02hcXFpymc3Mdv2I0aq+M+jp1ObA=;
        b=La0160CcBbhOmAxue3+xPrTT7MacLVywtKt5PmZ4NLAGVd0seSSTl8zm9ABoBFrgVk
         TvD528AewHBtbqFhTfLq8rnjhRYQGYtqXEA+YgL5x+KMblsOv1KntdM6RmNoS36pl6fP
         DHpQmriV9jVZXB0Myb75u1l5TPHWs9U/+SHE4TnDQC5TUxM/BiCGdrAhMkdA+KoI9th4
         qtbqG3fUnky5sBcqHNKTPQsNopRRnuOIXVU9DPnaa5/UzGIjIboi1aUGXMK6ufCUux+9
         ei5Hxz4zYWi0Kapor6BCEV79YCkA1FOKFoJXQt81G4nZ7d0WlsqqOR0LJM/kEUXlqFiH
         E5iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KsEKcRCXAFO/pXr02hcXFpymc3Mdv2I0aq+M+jp1ObA=;
        b=64rm5yMeJFittkydIGjnpO3kKebOMt3AlsN6J1Co7a2Tn41xXeIZen1ZosAdHcJpGk
         BzFTLCy3JILRpREq3fJOXdcfNnRnuzSIv5hHBf+48BujbGgmRNHJXjlsn6eORx5A2asA
         kG5M6EVTmy9zCHg1oZhXpA9OCjDWoVVorUvKu4v7jGMq9SbUb63FzYPE6pTp8y7fHOOY
         5qfRg1mqm91XQwcb5GrbKOzFWfWQE94aWxnA/EXwPY6Ovu3nC/QXawsF+cTSDuMdRfxp
         +tWrAclk/6Wc8A81bSmG64Aw0hpm6Z30CKHUOJ+GAPeeKDZza+r2k6wWslPPPzJKo5x1
         xcPQ==
X-Gm-Message-State: AOAM531cMGS2zlTvCNHQiJ0JmLAbJ0G0vtgGF29BPw3GcgBvv/Zcl+Me
        Vdq3GfIcNB13yP4A/SvXB97BJbhWlSk=
X-Google-Smtp-Source: ABdhPJxhRbo1VpLqWZVgNS2ylVj89dfAW8Qa5f+XiR3kfv0c1My7kTS0vld1WaNLygeHne1FsiS57A==
X-Received: by 2002:a05:600c:4f85:: with SMTP id n5mr12326173wmq.64.1643496043334;
        Sat, 29 Jan 2022 14:40:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m5sm5405266wms.4.2022.01.29.14.40.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jan 2022 14:40:42 -0800 (PST)
Message-ID: <5b73149f-ff52-e0d9-fead-0fe2338b40cb@gmail.com>
Date:   Sat, 29 Jan 2022 23:40:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH 1/2] time.7: tfix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <ddac5f5b40345ba565428378e9dcecdf840e23f7.1643483384.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <ddac5f5b40345ba565428378e9dcecdf840e23f7.1643483384.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,


On 1/29/22 20:10, наб wrote:
> "HZ" is the constant, and has nothing to do with the 50Hz PAL/60Hz NTSC
> field/mains frequencies
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>  man7/time.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/time.7 b/man7/time.7
> index 830da7ea8..95573796c 100644
> --- a/man7/time.7
> +++ b/man7/time.7
> @@ -92,7 +92,7 @@ configuration parameter and can be 100, 250 (the default) or 1000,
>  yielding a jiffies value of, respectively, 0.01, 0.004, or 0.001 seconds.
>  Since kernel 2.6.20, a further frequency is available:
>  300, a number that divides evenly for the common video
> -frame rates (PAL, 25 HZ; NTSC, 30 HZ).
> +frame rates (PAL, 25Hz; NTSC, 30Hz).

The change to lowercase is correct, but I'm not convinced by the removal
of the space.  The SI says that there should be a space, and while there
are some cases where readability is considerably improved by removing
the space, I think this is not one of those.

See the SI draft (2006):

5.3.3 Formatting the value of a quantity
       The numerical value always precedes the unit, and a space
       is  always  used  to  separate  the unit from the number.
       Thus the value of the quantity is the product of the num‐
       ber and the unit, the space being regarded as a multipli‐
       cation sign (just as a space between units implies multi‐
       plication).  The only exceptions to this rule are for the
       unit symbols for degree, minute, and second for plane an‐
       gle, °, ′, and ′′, respectively, for which  no  space  is
       left between the numerical value and the unit symbol.

       This rule means that the symbol °C for the degree Celsius
       is  preceded by a space when one expresses values of Cel‐
       sius temperature t.

       Even when the value of a quantity is used  as  an  adjec‐
       tive, a space is left between the numerical value and the
       unit  symbol.   Only when the name of the unit is spelled
       out would the ordinary rules of grammar apply, so that in
       English a hyphen would be used  to  separate  the  number
       from the unit.

       In  any one expression, only one unit is used.  An excep‐
       tion to this rule is in expressing the values of time and
       of plane angles using non-SI units.  However,  for  plane
       angles  it  is  generally preferable to divide the degree
       decimally.  Thus one would write 22.20° rather  than  22°
       12′,  except  in  fields such as navigation, cartography,
       astronomy, and in the measurement of very small angles.

<https://www.bipm.org/documents/20126/41483022/si_brochure_8.pdf>

Cheers,

Alex

>  .PP
>  The
>  .BR times (2)

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
