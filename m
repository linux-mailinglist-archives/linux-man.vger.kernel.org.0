Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B8594880CB
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 03:04:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233235AbiAHCEW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 21:04:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229912AbiAHCEV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 21:04:21 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 519F5C061574
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 18:04:21 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id t28so7579901wrb.4
        for <linux-man@vger.kernel.org>; Fri, 07 Jan 2022 18:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vx3HZiOGdmt17Wp6AzfB7Eg4tSEeFsWdaUIXjFi5j3Y=;
        b=gZEzDtnamucu09m/6PlbpOZQUS/KSJxWSRLV6+zdE4/Ptkq/AqjkUFLn5211QpBt4g
         BrxrvkJ6TwX+1iw2q0Qfe16+cKFhUscHjSBVkSpsdtj/VEhLQH0s+MBK29P+PXDHzbkM
         NYdaQEddRwzdLaT/TUBxhshWyTyEHDuOGbWo9zFKQGk0O4kGr21SS9Xhgl/xN2k3/Bp7
         rv2yHYTKDsHGeoGNBZSKTVA8tFoh10WxVypj7PqxthJocCBMA4JmbuCgFgVTLx0yVUCd
         odM7+EQr8DlhoyqlRAU9NNQgcNxyWtZwW9wxKUYJJO59GL4IGWyhY5mtA3lgMBVKeTwV
         Rd6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vx3HZiOGdmt17Wp6AzfB7Eg4tSEeFsWdaUIXjFi5j3Y=;
        b=dkFSm3wSfppVGVI3h2EnLlveP4pYgQCDYYjoQNKaes8mW1LokWIU/U0IsW3N74nAKE
         YmnX9rJXq6sILEMAQbijX7RlBX5SFmob3j9AqGiXH+eTgRyHya4keopixXPABwbot7/e
         HXeNECr9NtHFn7lsZxWTZryuWC0OEH6ehPazmnpD4cszFkMnFwcauj23OunazIQzu7kF
         83Wpfn3dOGIEfvqqx81FWUUnk8U/+nzAhh9X9HxhDVWFE92G0/9ELBFmfTW62FpVBv/u
         J8oI3q1/zz2IUJotydlAH9gAID0ap+tgrRtmum5Ddysmeco6kCgSx2NjhWv3QSsve9k0
         kNOQ==
X-Gm-Message-State: AOAM533XCTSyADkM9rTEG5HS+HYhorTil1svd6nZjCUNb8ITn6KSlwA6
        UknjWfKLYisW9joyYpOqd22cqxAiUno=
X-Google-Smtp-Source: ABdhPJzNnppgn9jBKsV8/sFT2EFu0PLkk0d02CUCa9gwy7O+UyfWmjKMS9dC980LdEDNeqXFQTfwNA==
X-Received: by 2002:a05:6000:188f:: with SMTP id a15mr57026217wri.153.1641607459933;
        Fri, 07 Jan 2022 18:04:19 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k31sm163598wms.21.2022.01.07.18.04.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 18:04:19 -0800 (PST)
Message-ID: <e980398d-0a21-45e4-73c5-6727e4f552a2@gmail.com>
Date:   Sat, 8 Jan 2022 03:04:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 8/9] strtok.3: Enable example analysis, fix declaration
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-8-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220107164621.275794-8-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 1/7/22 17:46, Stephen Kitt wrote:
>      for (int j = 1, str1 = argv[1]; ...
> 
> declares two variables of type int, j and str1; the pre-existing
> char * str1 isn't used. This causes compiler warnings. Declaring j
> outside the loop fixes everything.
> 
> To enable automated source extraction, separate the text following the
> code.
> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>

Since these are two completely unrelated things, I'd prefer 2 patches.
If you resend this one without the subsection heading, I'll apply it.

Thanks,

Alex

> ---
>   man3/strtok.3 | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/strtok.3 b/man3/strtok.3
> index aec914094..19d5d9204 100644
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
> @@ -280,6 +281,7 @@ main(int argc, char *argv[])
>   }
>   .EE
>   .PP
> +.SS Further examples
>   Another example program using
>   .BR strtok ()
>   can be found in

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
