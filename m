Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7A7D488081
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 02:26:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232331AbiAHB0z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 20:26:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232266AbiAHB0y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 20:26:54 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C08CC061574
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 17:26:53 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id e9so12720975wra.2
        for <linux-man@vger.kernel.org>; Fri, 07 Jan 2022 17:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SXtu9f+MjwFun8iY42Tzr0IICti9jNiJjT8zx2EixyE=;
        b=qnUvCw937YdIUEwFHrUkj+T2q09PLJqK3y+/kumeriYdlZfx22mVaRdoh9TAFCcJP7
         sc6ZnNhSB7BOZbQ4AJXdcMsytLJFh5U1DQlshMuQwcsakZXykiyFm7kMbLVtcI60MfXk
         yDLqj4Z0vQIgVaxwbu8BOr+QcrP7fuh5Qqy9r8VQeoKzCTM6VT3OmSTXLu/4MAxCIJJk
         5KiZea0IiOYHZR+A5SC/hLMO27BQNPcbqNKCHuqPuDaiHJtmLrzS34DZYOHkB2q8+aeo
         TiumJR7/A65LOs1T9fKuXQkgtke4rPYwcxOougTo13Q1v4i2P9CVhx7Q1ZXJW5+J+4+4
         KJhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SXtu9f+MjwFun8iY42Tzr0IICti9jNiJjT8zx2EixyE=;
        b=kOMzBlPowXjS3gL1IFfXyNQqXRtft0qCHAxWJBvghEiPK+TwZTUVFJ19TKYuwmTj2/
         nV74ijC8lVDfswfp20lwFdIiPKK/BLdnZxkZNwhroUJFlfcqxDS3JbecJIukFsxkWJFw
         0Mm3iSkFjItpKB0KO9G9p4ha1aYR3iVn4fF5X7ZsyMms42tGVpKytroqzIee8Q8V8C7k
         NVcnhS6CClnjbYJEmMqlH4cqwVbRxQyfDN2heU0F8WukroPIk9cE+nTIOyyOvW+l/jIt
         Ddi7BiChSkoVfaD2dHQqhgcdIFZK6nrWMh4IvUY/lZrKDehhH2Byk1xYYefIucR8+y3d
         I3Eg==
X-Gm-Message-State: AOAM532blEhmGR8Zb6bG0lR0nwe576C0mdJIcwZFdRYzCbMTXgcHsd+t
        pXKzs+lx0FOFpaRTJe20PJU=
X-Google-Smtp-Source: ABdhPJyHmJO81xNT9vofuAbjOho2Fz5MPpXR/D+i9VvdgUU8RtgmgWlz2Hx8CXnYjmFw5vQvZPpJpQ==
X-Received: by 2002:adf:cf0c:: with SMTP id o12mr5706357wrj.134.1641605212334;
        Fri, 07 Jan 2022 17:26:52 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v13sm100390wmh.45.2022.01.07.17.26.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 17:26:52 -0800 (PST)
Message-ID: <92e9abea-7be0-c22d-d407-05a12e250af4@gmail.com>
Date:   Sat, 8 Jan 2022 02:26:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 3/9] inet.3: Switch to _DEFAULT_SOURCE in the example
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-3-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220107164621.275794-3-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 1/7/22 17:46, Stephen Kitt wrote:
> _BSD_SOURCE has been obsolete for long enough that it seems reasonable
> to update the example program to use _DEFAULT_SOURCE instead. >
> Signed-off-by: Stephen Kitt <steve@sk2.org>

Deprecated, yes; obsolete, almost but not yet.

glibc 2.17 is still supported in CentOS 7, IIRC, and _BSD_SOURCE was 
deprecated since glibc 2.20 (see feature_test_macros(7)).

However, since this is an example program, which should mainly teach how 
to write new code, I'm inclined to use the non-deprecated version.

So, patch applied.

Thanks,

Alex

> ---
>   man3/inet.3 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/inet.3 b/man3/inet.3
> index 657fe45e0..47d3ba160 100644
> --- a/man3/inet.3
> +++ b/man3/inet.3
> @@ -305,7 +305,7 @@ Here are some example runs:
>   .SS Program source
>   \&
>   .EX
> -#define _BSD_SOURCE
> +#define _DEFAULT_SOURCE
>   #include <arpa/inet.h>
>   #include <stdio.h>
>   #include <stdlib.h>

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
