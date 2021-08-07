Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 857463E3724
	for <lists+linux-man@lfdr.de>; Sat,  7 Aug 2021 23:43:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhHGVnb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 17:43:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGVnb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 17:43:31 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C374C0613CF
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 14:43:12 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id k11-20020a17090a62cbb02901786a5edc9aso4431300pjs.5
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 14:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9fg6j7x7iWU4eqzh5kFzDdZt/bsqLVBNoVIbQaJ+tp0=;
        b=Xq92svik/zH9mUxhxdVv9udgkeBc0u1W6aE9JjHT5F3qfy6xcoJgzhnqJVDWRCo4xq
         BS0QxWH/7mu1Ue3pPB/SCo4DKeFdooO155M3iw7MS7efpSVlGuOPwuxz+z4wSOdehGJz
         DP6KkZ0FhzUhxCCOdsyvVA1zDMfi0tY/UwVUw1VxV+Hy2OH++MR6waZEoQ/FQSOYTkCp
         ykm+w9PCwkksShvXGs/xVm50O3FQtuwnjOgONp/ZiwFJcyd1FPs9Zg7Y4hOGFrLk0SJB
         LrhCV6+mxZaAFXyMv3ig9tLWJWbR6fN0c2bZsPxTOiarLrqKg17kehu1mxxhmosqS+ra
         +0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9fg6j7x7iWU4eqzh5kFzDdZt/bsqLVBNoVIbQaJ+tp0=;
        b=qD5VYiRjDRqMXFNlVQMI14LB3iwaLV/h0jgXzqyl8hk3Lgy+fVpQFn+SSqxrsBu408
         0pWYMkT192DV7OLOClFveZKwMqh3asI49bRulyPpxACm+35EFljc1NiYQ2pa5lvaQJrM
         CiIq4QlBpqt3/ABmkIuCURexrHsQsDFWJkamFF6Q9g9dMGgY0R+iMOUNKTESPmv7g4XR
         Npk0jQqrEdOF0yAIGI1rXvWMbDWJwZhf2LWCFQ5LLMzzYXFpDF/xdoCtnotg5loB/NxH
         DRu94aAS1pjUIvgXX2whA6GtGXwAdxtSXNqcudswrcDh8TIssOsQqu5k7uzh5/kxWKXU
         yN/A==
X-Gm-Message-State: AOAM533bl0QirNwEgaLVHZgI6BgIlkD53dG2IkdVtcAFJoB8/V+BM2ep
        urHNwYAXkPWNBNoY333GOJ1KMypCTfA=
X-Google-Smtp-Source: ABdhPJwgu0pBOZLdfWBbop/YjXdqD9Q6bAtl4FoTFmKSjaejC5CYGT2HB0B5dc9RYRx66VD23jeF5A==
X-Received: by 2002:a65:6110:: with SMTP id z16mr288342pgu.152.1628372591835;
        Sat, 07 Aug 2021 14:43:11 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id p3sm16502003pjt.0.2021.08.07.14.43.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 14:43:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, kXuan <kxuanobj@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 18/32] recv.2: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-19-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4f0ab983-6593-708c-e147-aa6bd63ad118@gmail.com>
Date:   Sat, 7 Aug 2021 23:43:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-19-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex, kXuan,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: kXuan <kxuanobj@gmail.com>
> 
> The recv.2 misspelled `SO_EE_OFFENDER` to `SOCK_EE_OFFENDER`.
> 
> This patch fix this typo.
> 
> Signed-off-by: kXuan <kxuanobj@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/recv.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/recv.2 b/man2/recv.2
> index 2659957a6..884c86355 100644
> --- a/man2/recv.2
> +++ b/man2/recv.2
> @@ -196,7 +196,7 @@ number of the queued error.
>  is the origin code of where the error originated.
>  The other fields are protocol-specific.
>  The macro
> -.B SOCK_EE_OFFENDER
> +.B SO_EE_OFFENDER
>  returns a pointer to the address of the network object
>  where the error originated from given a pointer to the ancillary message.
>  If this address is not known, the
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
