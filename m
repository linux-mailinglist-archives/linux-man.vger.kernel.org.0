Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADEDF48808F
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 02:31:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232492AbiAHBbq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 20:31:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232480AbiAHBbq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 20:31:46 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43510C06173E
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 17:31:45 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id l10so14230278wrh.7
        for <linux-man@vger.kernel.org>; Fri, 07 Jan 2022 17:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=InXztWHYVvwsvPLNsUhrW6yONT8M31RC+48f+JTrYMM=;
        b=oy8Q/iQdvVbYkEdr/y/2ufQ6QdtU/JgyZJ4yz5jFs9wvfGRb+Ue0raPQ3buIF1f1wa
         6oxq7m5prW4Sq+1mQmcuxvlDXXVBlnn/ZwsrkafKq4W1YjX+MII0j/eZzQtY6oXC+DaC
         jcAruJwvyfq6UaGx5gAa6UmmYrVex175Yk66KzQGuKfU4M+T6460pqp5w9oQF2gXq7gE
         O77L5WTMqY7KGxf7uc8A0EkiGFC91d3qz5dIaxPO7YdiqxtXGii9ZCosQ1puDUKA64aQ
         LQpevWvNhrwqMA6Bg1/FS1M5yVUrCMSXgv9GWTdTfVXAKy72bg7mmeEaWUV4UZnj91SP
         Qz+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=InXztWHYVvwsvPLNsUhrW6yONT8M31RC+48f+JTrYMM=;
        b=IIQyrvy4NPaz/9JLlvp+2/T+mwRxKp4EOfxMDVRtEQuyJm+FrECVnBQNR7IUe+3GIp
         Bh73CM2F+SWrxpKIOZmqaLfMlzzmUbsp/Kfn63fX2rmzoqHj3QAhZGw1tn3Z3ahrVRq2
         KuJ93rzJ+s2hO/c3+9v2wlzGnA4/qA0K5aoJTOKEJFeVvzg31+nArH5K2JcSjCqj2/OM
         6H8/OwrsIx4SMUusvlHwjZfYCRBxnpABN95QJ+IRChpimVbOmRZNXGdXwo6rfzHtRvl7
         OVCez3rde3jZZ+r+mOCxb14hbmdyk+YI3ufSYOwlLKqU1OSlrPm9DocSS7am6nuXfhcy
         JYCQ==
X-Gm-Message-State: AOAM531sOfQjCnUedXHgGkU0XTgYPdqiWfJmDuySBzjrd/UHh6kvA7ql
        jObJpWU1ySAwBQYk8U8nTMw=
X-Google-Smtp-Source: ABdhPJyM+dV+/fEPA3PRqWixODO4eqhLytUYp7J0xqCi7j3feYiEIw8GIx7wgG5aIPwNCLapzM87IQ==
X-Received: by 2002:a5d:59a7:: with SMTP id p7mr55807499wrr.258.1641605503930;
        Fri, 07 Jan 2022 17:31:43 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a20sm114741wmb.27.2022.01.07.17.31.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 17:31:43 -0800 (PST)
Message-ID: <681c4772-bbfe-2dae-76f9-d1e130ac16e1@gmail.com>
Date:   Sat, 8 Jan 2022 02:31:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 4/9] matherr.3: Exclude the example from analysis
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-4-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220107164621.275794-4-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 1/7/22 17:46, Stephen Kitt wrote:
> The example program is obsolete, as indicate in the text, and
> shouldn't be analysed. Changing the introductory heading to "Obsolete
> program source" excludes it from automated analysis and makes it
> hopefully clearer to readers that it is obsolete.

In this case, the first paragraph of the DESCRIPTION already notes that 
the whole page is obsolete (and even removed from glibc).  On top of 
that, I plan to add the [[deprecated]] attribute to the function 
prototype in the SYNOPSIS (when Michael comes back).

Do you think it's still necessary to mark the example program obsolete?
For a human reader, I'd say no.
For the automated analysis, I'd first decide on which format we want to 
standardize to mark code begin and code end, and after that fix this if 
it needs to be fixed.

Thanks,

Alex

> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>
> ---
>   man3/matherr.3 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/matherr.3 b/man3/matherr.3
> index 64bfa482a..e9d77d02c 100644
> --- a/man3/matherr.3
> +++ b/man3/matherr.3
> @@ -376,7 +376,7 @@ matherr SING exception in log() function
>   x=12345.000000
>   .EE
>   .in
> -.SS Program source
> +.SS Obsolete program source
>   \&
>   .EX
>   #define _SVID_SOURCE

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
