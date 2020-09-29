Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48BF727CECB
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 15:15:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728857AbgI2NPP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 09:15:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728441AbgI2NPP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 09:15:15 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7D31C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 06:15:14 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id s13so4572691wmh.4
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 06:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jFEF/HhNmtmhvzZp78EHg/rtqIOMG658YBXT/GP2urs=;
        b=MArpXpruuFUd5KtdEK+egYINeQYYeYigPvKrZGNXWT7HRgKW8BTbfNd5thRP8/DtVj
         35lmZp86dbWwk0p/DrSKQGVnGE4NeQ/G4UaMpPklkDaX/l2EEVL1HDRv8xAlldmacCHy
         FzQGZaoLNoynJyd4wNbkVm6twR3qu5ruA4pAnigYD3NkKHosEVivr42Lj7Xy6JRhOirE
         oZhWV/IklFAZPmxFI/Qhe24b/D1Oy+T7wCdty1dO4WhO4sN+hx5xBpR4poWPNocfcQU4
         FlinCTkejKE5clz6VnWlJ4TyG03hEhTsp/Hnpc+ntVo+CyqqjdP2t8AbS1FXsavvfR64
         LzFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jFEF/HhNmtmhvzZp78EHg/rtqIOMG658YBXT/GP2urs=;
        b=eE+Tg2aXWN7AS2s72NQWyCp0xuI7bzMVYNOTs2jUW+Etjp2TjgOCPUvjPIPn1g2kax
         TYE0oF0Vo4ViuTtSXZTXFTZjrpHDXHSXIye4ywce8HMoLXCTSQy0twAB51+GyzXMmsKl
         KZkG4HBYPgxVZ5gXEe3k55PQDPeYiLvSn5FhtMShDGrnC4LZ3hBX3YmhtxGgX7NtC7ye
         gO1FYoG4qsGppfff2k4r1BlbYVj+/oVtRkMZYngW3Vy2G2YBZZ3IPbuBye62zFnXmJmd
         tNaZrWGGJrCKLJVPkzkA3eX56efHY+93QA+YjHPJeQesRDS4xcwKInl3B/hMJ0RGaQ2g
         xJwA==
X-Gm-Message-State: AOAM530FPpkDdisISmy+nHkx136K8Teb9tT3i9P6esLxvCd5LszATrXh
        wZms5gPOyMnRQ4EYv8Js+8o=
X-Google-Smtp-Source: ABdhPJxcQo1hR06QlhVUO6dJk8fXWOONlM+d1DKP4ciHDITpUAst2UD7NunMYifa9i3Tp5EhWPKs4g==
X-Received: by 2002:a1c:770c:: with SMTP id t12mr4832637wmi.121.1601385313489;
        Tue, 29 Sep 2020 06:15:13 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id z127sm5578125wmc.2.2020.09.29.06.15.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 06:15:12 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] system_data_types.7: Add 'FILE'
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        g.branden.robinson@gmail.com
References: <1a517588-29c1-f728-37ec-49e9825be321@gmail.com>
 <20200928090657.2221-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <0a5ee9a4-8787-5bce-92bb-a2ae10eaed54@gmail.com>
Date:   Tue, 29 Sep 2020 15:15:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200928090657.2221-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Ping -c2 :)

patches 2/3 and 3/3 of this set are pending,
the patch which was holding them has already been applied,
and should have no conflicts in the current HEAD (tell me if otherwise).

Thanks,

Alex

On 2020-09-28 11:06, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>   man7/system_data_types.7 | 23 +++++++++++++++++++++++
>   1 file changed, 23 insertions(+)
> 
> Hi Michael,
> 
> Please hold until the ffix is applied (or not).
> 
> Thanks,
> 
> Alex
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index ff0403df9..16930985e 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -197,6 +197,29 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
>   See also:
>   .BR fenv (3)
>   .RE
> +.\"------------------------------------- FILE -------------------------/
> +.TP
> +.I FILE
> +.RS
> +.br
> +Include:
> +.IR <stdio.h> ;
> +or
> +.IR <wchar.h> .
> +.PP
> +An object type used for streams.
> +.PP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.PP
> +See also:
> +.BR fclose (3),
> +.BR flockfile (3),
> +.BR fopen (3),
> +.BR fprintf (3),
> +.BR fread (3),
> +.BR fscanf (3),
> +.BR stdin (3),
> +.BR stdio (3)
> +.RE
>   .\"------------------------------------- float_t ----------------------/
>   .TP
>   .I float_t
> 
