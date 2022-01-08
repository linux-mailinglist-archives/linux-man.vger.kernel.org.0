Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D1604885B4
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 20:51:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232579AbiAHTvw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 14:51:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232473AbiAHTvw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 14:51:52 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D3CC06173F
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 11:51:51 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id v6so18190621wra.8
        for <linux-man@vger.kernel.org>; Sat, 08 Jan 2022 11:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=06vvPpw7LZ7n5kMC8ODg3+K3n1En106QOIdjXg9cjrw=;
        b=a8/MFe2cxht7ZuUgq6ZjWtsQdEEwm9Zfu1JFtRfySGgbG+ibBZNT1YhIb70UPOTtVT
         LO4qJ2aBJfe8aPw2q6wTFDnnvujmT9mYU3lwYNdXSmMw4FHDD1AI0pwBrWJbKG17oBno
         bIiChOB7SjSGXH9DVbyWvtQjaDsi4mxG/WbpKS+V0IDhE2wZSFCCr0Mr28b8zlWsEPUX
         SJESck8kYzW9HxxmJJ38wcnlEo5ZvdLtV55bGHEcQpDEtUtb8cRKtvo2glsW3WgGk1zY
         E/oJnVYueOhzhfM4BCsIFChoSCt8uVyPuMQeIrB6v43a46zvhyTEzwuQc43+pI7BHLsF
         Iblw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=06vvPpw7LZ7n5kMC8ODg3+K3n1En106QOIdjXg9cjrw=;
        b=KulHwjiDxSBozCsIFrYgEtNUgtMt31JQEhzxuGtPR8wmUqvHwpjJqKOhqVp2cTNVA0
         tFQgpr/CvQDHDPPgCj1KKZHdusq/goIk/sOpnK7SEPNVQIfrOLs7dYGWG/pj/0SogvjS
         pqz5SPB4It6dmAPmJQU+w+Ieo6yfDuzSboYxlJRQFr8Avv2F55cEratpS1924PZoBof1
         F0RaGDRtYffwj8ihC0oL312FQJoRqMtv0pDjh477M05flUEkG8WOIB+ZU8bJ9073N0ZI
         wQVfhIc1LVcpP2aAkkLfEogNQdNZaT3bO55ARDIj+yy9DgOYQZKtlRCrWv/SJsBfN/xU
         AtzQ==
X-Gm-Message-State: AOAM531gnuATA+xsrVsAqT/K5ObhuraLN4d3KBRxiVqIchb0VVyXUU+n
        DDoRqCVDviM1sIpighjKYuI=
X-Google-Smtp-Source: ABdhPJxeIzJeOkg2FIosts1j3eeHa9RC3+MQMyUuLSQP/LgGE1NcB6zh9tn1tk1knBhcY93h4kXDwA==
X-Received: by 2002:adf:f410:: with SMTP id g16mr7124951wro.376.1641671510461;
        Sat, 08 Jan 2022 11:51:50 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c16sm2362883wrp.109.2022.01.08.11.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jan 2022 11:51:50 -0800 (PST)
Message-ID: <80b269f6-1114-3c48-7379-0d4a9181ae5a@gmail.com>
Date:   Sat, 8 Jan 2022 20:51:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 5/5] strtok.3: Fix j/str1 declaration
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220108154304.1030478-1-steve@sk2.org>
 <20220108154304.1030478-5-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220108154304.1030478-5-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/8/22 16:43, Stephen Kitt wrote:
>      for (int j = 1, str1 = argv[1]; ...
> 
> declares two variables of type int, j and str1; the pre-existing
> char * str1 isn't used. This causes compiler warnings. Declaring j
> outside the loop fixes everything.
> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>

Patch applied.

Thanks,

Alex

> ---
>   man3/strtok.3 | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/strtok.3 b/man3/strtok.3
> index aec914094..06e9688b6 100644
> --- a/man3/strtok.3
> +++ b/man3/strtok.3
> @@ -255,6 +255,7 @@ main(int argc, char *argv[])
>   {
>       char *str1, *str2, *token, *subtoken;
>       char *saveptr1, *saveptr2;
> +    int j;
>   
>       if (argc != 4) {
>           fprintf(stderr, "Usage: %s string delim subdelim\en",
> @@ -262,7 +263,7 @@ main(int argc, char *argv[])
>           exit(EXIT_FAILURE);
>       }
>   
> -    for (int j = 1, str1 = argv[1]; ; j++, str1 = NULL) {
> +    for (j = 1, str1 = argv[1]; ; j++, str1 = NULL) {
>           token = strtok_r(str1, argv[2], &saveptr1);
>           if (token == NULL)
>               break;

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
