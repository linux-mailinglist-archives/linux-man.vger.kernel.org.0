Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 302233E3772
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 00:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhHGWsB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 18:48:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGWsA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 18:48:00 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3697C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 15:47:41 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id t3so12158613plg.9
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 15:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0YBzNCtR17l5UaFD/6sg921A+k5pZrb/FuyRWI3p1KA=;
        b=GlCeOZbjJsULs06hP6sNgTncMSYmV0dzOzQioEFdE+Zeu4EWEFitDiHG7e8kRWO4Gl
         q9Tup+z57Y9gwD4ilHZLfcnGjsbRvP/SAQuKrzjb5CGFipkuksvOCl4waGFidYJdocRZ
         22+ltNhzFG7fZpFUOGB040T2hzAKK/azeQZA9LSxC3CX3KdpWnPLrU/0CHjZssENwhs+
         kv4IQN55/AHjhiHStoe6LdReU5mQShIXXw+7qRCgWOdP/suHmCeFaO5nO5fPUOVrxvqp
         LT10xJ+J5Q2hK9bX2TwClI+BQaB0lh4MI9da+eNM5UN9yQpkllWMxPmjqx17zsQrsp5Y
         C2lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0YBzNCtR17l5UaFD/6sg921A+k5pZrb/FuyRWI3p1KA=;
        b=iddzQPxX7BlWaOli1bDP2Remh+VM2+XHyPod0215H/if5eTTQisIfQZZK5KCBPnCxb
         yFaqObbHbUPFaJXhb96r3HyTq9bGsMTCko6jTozahbX0LdgYeLdTUFhdJpz1n+8balJx
         1YHqkUJTOEuEAS6ud2UQniamWT0+3bD280OU6vC/Vfj+mJ4rIzT1vEFS4EUMsrlqzvd2
         Gx1FblmsRW1sATv2jhgAIbHxPswHF6hu4lW3QmvFPgNi7ZMW+jRoh8BQSobkckY0/nr0
         nxOgUQHMWU2fhdkHs+VMIBfN/nMSfI5pDRmPZkPXmRA+sHwmL6uWfTh9xHIvpxB6pNoZ
         QgiA==
X-Gm-Message-State: AOAM532F8q+lrXbPisbz0rDgGiLxLrIlGKQMvcOlvXGQUfjwvIGR0PCT
        wPKfdmt6e3syt24P7L6z7dusGNgc+KA=
X-Google-Smtp-Source: ABdhPJyuk8soB6dXXwVMGyZUrvkm1jhg+S3d1DxOMhrVXsAf8XI6sRxxUAcSN478voEUoBqm3eErkg==
X-Received: by 2002:a62:7f09:0:b029:3c8:584:72d with SMTP id a9-20020a627f090000b02903c80584072dmr9701782pfd.80.1628376461129;
        Sat, 07 Aug 2021 15:47:41 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id c13sm14966098pfi.71.2021.08.07.15.47.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 15:47:40 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jakub Wilk <jwilk@jwilk.net>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 23/32] scripts/bash_aliases: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-24-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fa425e84-1b40-cd31-a255-2e66feaabe17@gmail.com>
Date:   Sun, 8 Aug 2021 00:47:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-24-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Laex, Jakub,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Jakub Wilk <jwilk@jwilk.net>
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  scripts/bash_aliases | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index 102c458d7..ecac0029d 100644
> --- a/scripts/bash_aliases
> +++ b/scripts/bash_aliases
> @@ -24,7 +24,7 @@ EX_USAGE=64;
>  #	C
>  
>  #  sed_rm_ccomments()  removes C comments.
> -# It can't handle multiple comments in a sinlge line correctly,
> +# It can't handle multiple comments in a single line correctly,
>  # nor mixed or embedded //... and /*...*/ comments.
>  # Use as a filter (see man_lsfunc() in this file).
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
