Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08D2D25F5E0
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 11:00:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728048AbgIGJAg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 05:00:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727122AbgIGJAf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 05:00:35 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8356BC061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 02:00:33 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id lo4so17216040ejb.8
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 02:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0MvVfeBNJfs6dlMwfOBZKalySxWbgSz9fOHC9Gww+Pk=;
        b=baSju4+/LJRfaqmBMw4gJYVqhV3KdfY0zG5YM0g/DqgBPDxCV4QzheA+ms+rxipLuW
         7+RUS0FiTsaeHLFlGQrqClCTCeQgxoDl7ptV13B+rY9cqaQrYIH98il6G5q0xylDT1cK
         kRhHMTsPlx5heAj9Hk2b5uChA4j0/ZTceVT8Ds2+x1VznlT3LzkDggAMLGzQe81tYDg+
         HKLr//UKWYmb7ViZZv9O07H5ShhimEbwMXz3b99ARKemKL6MOXN8+aOGuKZ97o7Dlbgu
         f2JysgSiKmpdAN6x3gJaUrRgJ4igacaO+M8WI36CtAqJrKblG/uR/CHcIww+J7p81TPQ
         nuBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0MvVfeBNJfs6dlMwfOBZKalySxWbgSz9fOHC9Gww+Pk=;
        b=doVzz/GiMPejQ0csN7SFqUApVvJKdbj3Uzs1mD0VV7DSOMgcE6zmzmmlBzc7Bs/BCB
         vV3CQL54jbDRlxyXDVzemGxX3Uj/Ytq2taE0yd+kLz/VlqwTmqeOIXBbHpJsDIqEoQ4X
         OOR/cab84bG9V2/75f0LyqJE/glzLRb/z9Lrudrd951R2sWaeE5wtQOzsxp/3tQaloyM
         tXtZbtWbtcvkruXkS+2yOwFNmdZnaolHXulKgHhGS5cvKhNixMbvK5vMdwyvMFvc3I7R
         m1fTPu07DT/BnpVaFeod/iYYh/dfSvWxAm+Zmd2DSKiZdtWi4g+sBGjl7hgxZnhLDyLj
         HTUQ==
X-Gm-Message-State: AOAM532RoU+qaSWs8N/4BaZe/RNgDklMnZRTIG3J4kYMIZloPsSkrosl
        d9eYzsRJmW7efKdlKEpV5HcERUGdtp8=
X-Google-Smtp-Source: ABdhPJyKGUN+gXyLP+j9uZxNebLpDkve6Sgut1zeJ4bC0K8SLU5IKN4L4LtvIrUtP0G0y/bzf8sIDg==
X-Received: by 2002:a17:906:4750:: with SMTP id j16mr21273592ejs.143.1599469231987;
        Mon, 07 Sep 2020 02:00:31 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id k25sm14854087ejk.3.2020.09.07.02.00.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 02:00:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] hcreate.3: Declare variables with different types in
 different lines
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200907081133.11002-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <88f5a80d-7855-372d-b6b0-2abc704d93c3@gmail.com>
Date:   Mon, 7 Sep 2020 11:00:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907081133.11002-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/7/20 10:11 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/hsearch.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Thanks, Alex. Patch applied.

Cheers,

Michael


> diff --git a/man3/hsearch.3 b/man3/hsearch.3
> index 2fd2dc2cd..5c281c974 100644
> --- a/man3/hsearch.3
> +++ b/man3/hsearch.3
> @@ -315,7 +315,8 @@ static char *data[] = { "alpha", "bravo", "charlie", "delta",
>  int
>  main(void)
>  {
> -    ENTRY e, *ep;
> +    ENTRY e;
> +    ENTRY *ep;
>  
>      hcreate(30);
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
