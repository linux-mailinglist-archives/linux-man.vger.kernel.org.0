Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 725FC3DBE40
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 20:17:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230184AbhG3SRp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 14:17:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230094AbhG3SRp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 14:17:45 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 856F3C061765
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 11:17:40 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id m19so6550127wms.0
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 11:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=OLzgVO5gZui8+df6W7u7nHIR9xMWQi0avzwwWTqeCSY=;
        b=vVbc6v+MGPsyWBax+FExoXySoTYqd/jTNadH95KsGPkrXIpHap7MM+clqG9mlRtwpJ
         ubqNA892TlsEnxynzjoODZJ8THiEwq6qtQ3Sq6HyXBqD4tkJb1XcUVt8vSUteKCEpMuK
         My2f+HVn94fybxLK5TQrFJQet1iB2QUzvoslByONe3nAbkplnzPX9JR7B0/KanGPU15v
         CEB+Qqoin7f8fiofq7cm8C/xHlwdS8AfAg3qbR+Laqwu+J6TnvgvjVXV10oQbrEC98AN
         jeBMoTydn/N9Oi+CqwHWiCLFbBg0o9koBHBi28r1Uk69FN5xRqGcaYEIhwkGVfUb2jOW
         Y3LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OLzgVO5gZui8+df6W7u7nHIR9xMWQi0avzwwWTqeCSY=;
        b=dHhyw5PUfsqLllV2CKtOKzzvt1CXaQLyhxLn3MohRZRpauH4+niHwssJqDBbC4zoLc
         Sg055CWLRPfbLcbqxQrT0ECitmRXXLLBtiWrfd/Yl1SNIzN6YiVp2HjSUQiLPt4zo5gy
         zqE3cMCjxFXHPd9LnWWvdsy5bGQzy2gFNAX8t6N2g5IVs6TVzlwrrEFxyzHHNS/B6ARO
         H4WZ00WNJ/dUme7MxT+sqdNgTh7FEczxDLLf1aF7jkjal1Gidhpv+0KebwqTE+tWsYaH
         uSej0P1Ae2Q09uFmY/jkwLSuYXmjFjxDHMlEvuIDb9yFeIExN2lsqiTmKBfrFjfctTex
         pfVA==
X-Gm-Message-State: AOAM532Eb8F0lPsWo/CqN3ZzmDP6IYQbc+/7Y0ynHi4JgneRFZe9vShv
        E4WGa6V7h9B3014bzh08jz8=
X-Google-Smtp-Source: ABdhPJzCnQK+t2hWRnBWefCyTTQPzMQeYjKDCvAZEgiE2nVuSW9GRqXMYshD2Rc4wRLxUP71W4Lxzg==
X-Received: by 2002:a1c:1b55:: with SMTP id b82mr4370952wmb.121.1627669059181;
        Fri, 30 Jul 2021 11:17:39 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id h25sm2509624wmp.33.2021.07.30.11.17.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 11:17:38 -0700 (PDT)
Subject: Re: [PATCH v2] termios.3: Use bold style for Bnn and EXTn macro
 constants
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210725225453.7341-1-pali@kernel.org>
 <20210730103247.9079-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <32e5d669-5995-1166-16d0-a966284d7149@gmail.com>
Date:   Fri, 30 Jul 2021 20:17:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730103247.9079-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/30/21 12:32 PM, Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>
> 

Patch applied.  Thanks,

Alex

> ---
> Changes in v2:
> * Do not use inline style
> * Fix formatting ellipsis
> ---
>   man3/termios.3 | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index 01c20994424d..b7cdec507524 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -1068,8 +1068,14 @@ and
>   are nonstandard, but available on the BSDs.
>   .SH NOTES
>   UNIX\ V7 and several later systems have a list of baud rates
> -where after the fourteen values B0, ..., B9600 one finds the
> -two constants EXTA, EXTB ("External A" and "External B").
> +where after the fourteen values
> +.BR B0 ,
> +\&.\|.\|.\|,
> +.B B9600
> +one finds the two constants
> +.BR EXTA ,
> +.B EXTB
> +("External A" and "External B").
>   Many systems extend the list with much higher baud rates.
>   .PP
>   The effect of a nonzero \fIduration\fP with
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
