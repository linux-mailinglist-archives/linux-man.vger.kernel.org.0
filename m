Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78D5648809E
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 02:38:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232938AbiAHBiS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 20:38:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231284AbiAHBiR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 20:38:17 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3FEBC061574
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 17:38:16 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id l25so3410680wrb.13
        for <linux-man@vger.kernel.org>; Fri, 07 Jan 2022 17:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KLfPitrDFE8lH5Z0LQhQcJtYRqrLab6JNGjvzYkQC1w=;
        b=GQKXw7lwOK2/ayYz2ifn8GxRWjeR8PZbuOmdj9rBolK8pq8cgbpLC3yacXg8+cO9la
         ijvUiLG8HeFrNoQFWWkZz+fm2Nno/wmcRuRDgl789C3AvdFZhdSMeIOjAmYP+EXEcfOX
         sFYJhz76djBQNMDK+Fa+abLoeKrWAr8loknswWUPDwtke8UbleM2+k0qT8q98CCz/F14
         2iRRzdZ4Cwr8hQnk0N2HwdIAm4K/DO1M2WRGUO9//VpLsCDwAH6kOzhdNQEcnj93OCGQ
         h8fjtvV0shDo7qoGsjKz88B9KOqhxYT3bFLHcwxbmXA9ULN1d8mVWhgiWadimBAuLtd4
         jIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KLfPitrDFE8lH5Z0LQhQcJtYRqrLab6JNGjvzYkQC1w=;
        b=LpM+zGlbx9k5OB9vdeB9Tb77SOkFLj3xA4r7xfgJsHm4oatRmU41etey5o0S8NepjG
         BEYF8J/qjm149lQfFA4mAbE3jn12hVePdnDrWOy3GmVDr2DaKG0/6BiEPAFL2GF3I4Ki
         CKJXf7pTOcyGhOmtQkVjegFTUZrqta6nDkKbiT+YAB4tAkbcmDI458nE0GP3IXVO6fbL
         uxX2rYXx6cqpA2bZXdYcfXvW9tszIPaMLxdbLouDN19NxRbLqe26NfTUVnJgBg27Hthx
         t+pO3Uc7PGYqNFDsz5VE925JMv7NUNVyzSioHHC4osTa41Txt3D9V3YgrjMURgAuTuzY
         l1cA==
X-Gm-Message-State: AOAM533a0bJj07iiDMlFqelwO6gelsf7sQ7fBeGF4Bhb+P739KGzBofW
        7BffpMSeV49LaoLwyl88xto=
X-Google-Smtp-Source: ABdhPJxu+IKv+FRUtl3YXa7k/3f55xamj89j7XFlNmXg3n+mtUeZ/8ZVy6OwVWR99CaeBllJWc3k3A==
X-Received: by 2002:adf:ee0d:: with SMTP id y13mr57687681wrn.427.1641605895613;
        Fri, 07 Jan 2022 17:38:15 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y15sm118483wmi.40.2022.01.07.17.38.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 17:38:15 -0800 (PST)
Message-ID: <f97bc448-89bb-0b2f-5b71-7942498afd02@gmail.com>
Date:   Sat, 8 Jan 2022 02:38:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 5/9] mq_notify.3: Add signal.h for SIGEV_THREAD
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-5-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220107164621.275794-5-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 1/7/22 17:46, Stephen Kitt wrote:
> Signed-off-by: Stephen Kitt <steve@sk2.org>
> ---
>   man3/mq_notify.3 | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/man3/mq_notify.3 b/man3/mq_notify.3
> index 2c35a347d..31ba6f7cb 100644
> --- a/man3/mq_notify.3
> +++ b/man3/mq_notify.3
> @@ -224,6 +224,7 @@ queue and then terminates the process.
>   #include <stdio.h>
>   #include <stdlib.h>
>   #include <unistd.h>
> +#include <signal.h>
I didn't read through the page too much.  Is SIGEV_THREAD or similar 
flags something necessary for normal use of this function?  If so, you 
might also want to add that header to the synopsis.

As an example, mkfifoat(3) documents <fcntl.h> in the synopsis for AT_* 
constants.

Thanks,

Alex

>   
>   #define handle_error(msg) \e
>       do { perror(msg); exit(EXIT_FAILURE); } while (0)

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
