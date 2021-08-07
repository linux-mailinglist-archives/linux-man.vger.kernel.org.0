Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4382B3E379E
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 01:53:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229797AbhHGXxb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 19:53:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbhHGXxa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 19:53:30 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B30CFC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 16:53:11 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id a8so22215049pjk.4
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 16:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ui9d4dgQKXiaQZ8Ka0GoTLHlzTz3yhcaFHvQH/mKZ54=;
        b=PM91YM4gc3qVeujOKtXIzeoXDCcW7vaJGAUhfUaO9tzEuJxZtKlzHy3mVeef+0uPk6
         3BZoHHZm+edwpbduIenn9J4yfwatp0W6H5Pa9rN1waTJLT/qD7n8/4Ee4XiXry8gsqgO
         374LtnpGTsOrTl+sbNdhPwH6uvoTo73UX7aQ9Ea0lbd/eT5oDiKmwk5IqBDKnvOAbnP2
         EdoRW6Zr+Q5nU0SaTFB6Cadn75lcK9reyqlOcQoUoWGhHyGZtiIBuvmiOoavG37jHiQa
         fU+TOGdCTmQ6KFtlafYZKdD+7MotQ9LSf2B/tGO+iGP8th7WIGkZxZzm5u9J/pBe9yKf
         6JMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ui9d4dgQKXiaQZ8Ka0GoTLHlzTz3yhcaFHvQH/mKZ54=;
        b=p/d/4ZRMYyxbIIXPCeYIgaTm0WG2THRLyO2ucm5hvlWh97Z4Fk/dpj93gus38/J7ZC
         rAD7HHE32sIyHmCnHT41rydCHuChECYKo03F+akwkcTrdSx9HAmwy6se2CjZTLNxUIRY
         X6pAvF4++iYBE0Hp6dy3T2tTR1iPyRzMC2fauNMOkHRwqCuLTTTiDSW5LVBEtX8oq2QJ
         RiRJgiBd3NNVuSKyKqu8d9/hzmE6GAY7eTVnSI2FkjemHHXBy1t7fAIq8NRQtPMWl2rh
         +92Mit8+KhylxLSRkQ61RwULJxaJbC61TtPmUDjTpiqRe/yDX/Xu3Pb2VYAGoqjGZFTV
         JzAg==
X-Gm-Message-State: AOAM532KeqiXOhQIGGoU1VBmfE6qZGzIIq5rl7Wd7BFJ3Tj1uF/DOihd
        mHiDaqvHecPOXru04g7nT0CVNDje1bs=
X-Google-Smtp-Source: ABdhPJyCnYaPlZcoJaMxg62umhelS9cXdtvG8XiW2Bi/GctQOjGvjrn4rD5sK9ZWcH1yT2vTgwP9Lg==
X-Received: by 2002:a62:1a4c:0:b029:3b8:3265:5f92 with SMTP id a73-20020a621a4c0000b02903b832655f92mr11956486pfa.4.1628380391143;
        Sat, 07 Aug 2021 16:53:11 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id b5sm13156957pjq.2.2021.08.07.16.53.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 16:53:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Stefan Kanthak <stefan.kanthak@nexgo.de>
Subject: Re: [PATCH 27/32] strstr.3: Add special case for empty needle
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-28-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b469d845-8a20-b48f-b31f-21a4ba7d69da@gmail.com>
Date:   Sun, 8 Aug 2021 01:53:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-28-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Stefan and Alex,

On 7/28/21 10:20 PM, Alejandro Colomar wrote:
> Reported-by: Stefan Kanthak <stefan.kanthak@nexgo.de>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/strstr.3 | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/man3/strstr.3 b/man3/strstr.3
> index e085409c2..41ee87489 100644
> --- a/man3/strstr.3
> +++ b/man3/strstr.3
> @@ -61,6 +61,14 @@ but ignores the case of both arguments.
>  .SH RETURN VALUE
>  These functions return a pointer to the beginning of the
>  located substring, or NULL if the substring is not found.
> +.PP
> +Note the special case:
> +If
> +.I needle
> +is the empty string,
> +the return value is always
> +.I haystack
> +itself.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
