Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EB233DA1EB
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 13:16:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236244AbhG2LQY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 07:16:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232135AbhG2LQY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 07:16:24 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F088FC061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:16:19 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id b11so1110865wrx.6
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=frNxfMolruHjIfXwxqARtkSlMYt8y5DT3bOqJwwsgxM=;
        b=A61AOLKr8ZWVmltDNDxUhfePHjVdazuUGz0PexI6z5govA2gXX5sNqeExRLYUM54uN
         Z1ejzNOn/y2Fb2v/HKQGEA3Ldxc+y5n3iGvl5smftXJOX25QIgrXIbwPP2TndUsNbwwu
         Vit9acTYIhAeqMz9ODOUdI210p0J57L3ufSqbkUXRqRGwUNrEkYU3vizdpn3mf6lnwMq
         9v3vO0+eXNsUKuLp/0OoACSqtTq4neWStq+VgYjFos7q+nK0PP11iNyEEby4wa0mzaEj
         0vU3EVFoNSOiB5FvZu7x48t9LV1Hha6siwOvJse5q5AY5nR+G4nu++P0MslUlqfpRFV0
         A9+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=frNxfMolruHjIfXwxqARtkSlMYt8y5DT3bOqJwwsgxM=;
        b=XBLMmMtt4rkdjdt8rzb4sfGKUjN5Wv5cOOmdduznWnv6e7zEwTfiz31FafUgpgNtrV
         xgC61iOzrx+eiS38LJXCQ1cg+1R7xMLhcJbXnUJzKg/78s4tcZlmIuwZsE1jmARvlBfa
         hOUkTeYTF/yxEEGhIjrJybsTTaf2YcLknDUfER/ihX17Iews8S1ojwGsDnEGBGcahvmK
         ktNN4O7Vz7fOyx1qn21v93gezsAYaIL0BmWo1Hx5KpAyAsYWfoHxdLxVWIZwgm1HkhO8
         NMQ87IHLgtYCw6dwInZ8erw69I5MF17q3jv/bgftWxhLil5h0jSkzsTpcF1ULT3SlrTL
         U/SQ==
X-Gm-Message-State: AOAM532hMlErJVx0VzIj6nAkkR63HF+OCZ6nzz8Koza4aO6sA7LIzXJK
        k/R1DAlzXFBoN8bDARHo4vA=
X-Google-Smtp-Source: ABdhPJz9Lm+dBDGP8054J0BKxmnS4Td81hhGl1DzOZCCM5XEOezGMOi1KM7/8ZEQUVJinR7rbGrU7A==
X-Received: by 2002:adf:ed0a:: with SMTP id a10mr4446279wro.30.1627557378608;
        Thu, 29 Jul 2021 04:16:18 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id w1sm8876955wmc.19.2021.07.29.04.16.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 04:16:18 -0700 (PDT)
Subject: Re: [PATCH 15/32] capabilities.7: Minor tweaks to Kir's patch
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Kir Kolyshkin <kolyshkin@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-16-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <77e4ee5e-e910-b2d8-30df-319fe1009ed4@gmail.com>
Date:   Thu, 29 Jul 2021 13:16:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-16-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

I forgot to CC Kir here.

> ---
>   man7/capabilities.7 | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index 2f9c9a61e..4d08545ed 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -353,8 +353,9 @@ Set arbitrary capabilities on a file.
>   .\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18
>   Since Linux 5.12, this capability is
>   also needed to map uid 0 (as in
> -.BR unshare\ -Ur ,
> -.RB see unshare (1).
> +.IR "unshare -Ur" ,
> +see
> +.BR unshare (1).
>   .TP
>   .B CAP_SETPCAP
>   If file capabilities are supported (i.e., since Linux 2.6.24):
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
