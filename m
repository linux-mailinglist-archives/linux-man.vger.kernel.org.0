Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE7D736C031
	for <lists+linux-man@lfdr.de>; Tue, 27 Apr 2021 09:35:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230062AbhD0HgQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Apr 2021 03:36:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234856AbhD0HgO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Apr 2021 03:36:14 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E02F2C061574
        for <linux-man@vger.kernel.org>; Tue, 27 Apr 2021 00:35:26 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id a22-20020a05600c2256b0290142870824e9so574442wmm.0
        for <linux-man@vger.kernel.org>; Tue, 27 Apr 2021 00:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=azlU8VNmxU7b947vaQdIBUVQUfdlVZ/EkEG95TamVN8=;
        b=awgoMVDfItUwbbaGdUQV8gh7Hqb9E4QXfxzvkSDJ1AwQRZGQZwzZkEMarvV64ItBZc
         FW5/iQd0tOqLVChckhM0ZES30OHmUw/8peISa0rSNq+ac+B7KPB+nwzProD5XfKpfbad
         xyUXcmc/TijSMo7/hWrGwqUGSZf1yW6yQAM6RUurqmG6pcR/ylBJo4L2hLA8drPtSFgu
         rhTh/8DDihfS7TY67MUuBuqtaNhOFArA4dc/cxJywivIvdpUNt6FYpvwKaop3LIVMzxF
         5v/jfRMDRDTsJHODmzS60CLmbCFHcmB7/8XlkhWzGO4GXRoJgTcT12s9RM/imqU6oc2j
         +qiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=azlU8VNmxU7b947vaQdIBUVQUfdlVZ/EkEG95TamVN8=;
        b=O1nnGLHts0RcN4ecAIVpxcNVhyxiL3gOZKjE3p/5ouSDStRCOhS/RGFqDNH/pF1vXN
         M6Zk5WBu+V5p8bY/J17zjLMG8OrXRiqGW7Lq3hJ22Uyy+eSbK6rpBG2l+SdIy2d1Ck6L
         wTBL7INhuoXRxXLJqod0Vz2tqsM2y8tMguUcD9L1XD8BKrhiMY9quZ5/+h68bu4zAbJb
         5qs8F/1Gxpea+kuKGICMT0nLqn1TNi/jkuo3Rt4Ntlakc4dpIbP/lC1UsDxfHJR8Tf6C
         wiW4Ci1AVsEyOg2zOqnpwNTkEogDo5dF0gewiVsH2EqON2CePb7CGPSIKe+UsShBttJI
         horA==
X-Gm-Message-State: AOAM530xQE5BNm6AQaB5PRbKSBWiJ6BwGwwDMqKlgGO8bova9btCEhpZ
        g+NTEZwRMZU47vXuvKusvJVud9tnzDk=
X-Google-Smtp-Source: ABdhPJzQU+dRZdXbKAYYTgb3WvK/Nn+oKBphapZCjklBNuaiRC2rD527YxerNPLxzi2rjBRkhLInBA==
X-Received: by 2002:a05:600c:4e90:: with SMTP id f16mr1579526wmq.81.1619508925635;
        Tue, 27 Apr 2021 00:35:25 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id y16sm2704792wrp.78.2021.04.27.00.35.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 00:35:25 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH 1/2] Changes.old: tfix
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210426185813.3952-1-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b52bb922-7767-c306-f88c-bbf5092018a6@gmail.com>
Date:   Tue, 27 Apr 2021 09:35:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210426185813.3952-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 4/26/21 8:58 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied. Thanks,

Alex

> ---
>   Changes.old | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/Changes.old b/Changes.old
> index f863583b1..067fce382 100644
> --- a/Changes.old
> +++ b/Changes.old
> @@ -53581,7 +53581,7 @@ Various pages
>               Generally, place '||' at start of a line, rather than the end of
>               the previous line.
>   
> -            Rationale: this placement clearly indicates that that each piece
> +            Rationale: this placement clearly indicates that each piece
>               is an alternative.
>   
>   Various pages
> @@ -54119,7 +54119,7 @@ system.3
>   environ.7
>       Bastien Roucariès
>           Reorder the text
> -            Move the the text describing how to set environment variable before
> +            Move the text describing how to set environment variable before
>               the list(s) of variables in order to improve readability.
>       Bastien Roucariès
>           Document convention of string in environ
> @@ -54152,7 +54152,7 @@ man-pages.7
>       Michael Kerrisk
>           Add a FORMATTING AND WORDING CONVENTIONS section
>               In man-pages-5.11, a large number of pages were edited to achieve
> -            greater consistency in the SYNOPIS, RETURN VALUE and ATTRIBUTES
> +            greater consistency in the SYNOPSIS, RETURN VALUE and ATTRIBUTES
>               sections. To avoid future inconsistencies, try to capture some of
>               the preferred conventions in text in man-pages(7).
>       Michael Kerrisk
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
