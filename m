Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46F16265C56
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:19:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725765AbgIKJT4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:19:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725613AbgIKJTv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:19:51 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 171C9C061573;
        Fri, 11 Sep 2020 02:19:51 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id t10so10767323wrv.1;
        Fri, 11 Sep 2020 02:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=sq38yT3leqBI1xTDDmzGMa/FybEYhtB8OJfCNQjsMk0=;
        b=YSF6uRBPwq+trt0IS+q4zQaLOLA6oBhlMfyT/rnxmXUo+L9khikt+9SYdR0wAnrCtr
         y9oB2kT4F2f5cRz5gQHdv9p/B+//TbVM1IsTWIo8bTjDoQaZBarySB2zkVjaLuVEZgsG
         avg7UdTjNfiyoWe53YuqGtcz4lwLC2tpu/YzknE5Y0uFG0+hrT47cLmef/OMzJP9v2KG
         mQg1XtJGnzC+pLR6+nzx36xT8kZinkomJRJV8xx3BNzm+UcLswEDGwG9KyTh8/5sMoUa
         oS0ZnunyfzBFUUhDKOGWVIFjClJCYjcPiZkMcevnNoJS0OzOwwoFVAXWqWKBcM96doEZ
         EGVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sq38yT3leqBI1xTDDmzGMa/FybEYhtB8OJfCNQjsMk0=;
        b=J2Ard4jdG9JYrGnQgzje8dpEDyHDEO133J8KDSfxBPRPKM1gjFL+WaRqf0EVZ68oZn
         2pcXlItSF/PHqvRXIGpf3RU99U4M7LzmmSU3MVsFOkaqsQa4q+GinxBD6aWWLzCLmjaJ
         lmhiGbV8yUUe/R8tbVaWqk9MmHkRb0O7/rs4zLxJ4vkEKGE+Ec06V8TNx4nmy2kBjs6R
         xbtkIdeBpvQgKgTmuMcKpAxOK4UaTM6xnqlAPlpAb5rFSokLjhiS+vVcvJcwI6vLUFNA
         FmcPjyC8TJTnKOfNK2HHfcd7sPDpSUZxyiqvkgQwvzJZ5XomvyR3R0qD5afZ5IrM1l5n
         9SmA==
X-Gm-Message-State: AOAM530285t+nqIu9EYnH/i8c+9BcZDZycvnd5v9EhDl9xSxbga8ATJ2
        9HptoF6dj+ZYnS012cwIPt2eiBtpqBE=
X-Google-Smtp-Source: ABdhPJxyEqIcIxGOMiKqs4ted0y/12GEQEo4v3a4fclrTDAgFVXO5zjgUTH4X/Ti/WNfRlR1X5HmsA==
X-Received: by 2002:adf:a48d:: with SMTP id g13mr1080444wrb.212.1599815989584;
        Fri, 11 Sep 2020 02:19:49 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id a10sm2882094wmj.38.2020.09.11.02.19.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:19:49 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 11/24] stat.2: Cast to 'unsigned long' rather than
 'long' when printing with "%lx"
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-12-colomar.6.4.3@gmail.com>
 <9e397d55-34bd-3df7-57cc-e5726198bb97@gmail.com>
 <11344e3e-1c0b-b61a-4794-807714b1c09d@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f4b14c0d-248d-669f-b748-3890de7bb73a@gmail.com>
Date:   Fri, 11 Sep 2020 11:19:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <11344e3e-1c0b-b61a-4794-807714b1c09d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/11/20 11:16 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 2020-09-11 09:25, Michael Kerrisk (man-pages) wrote:
>> See my reply to patch 10/24.
> 
> As with 10/24, here's the new version.

Thanks, Alex. Applied.

Cheers,

Michael

> --------------------------------------------------------
>  From 911c791f0168851cdfdb30a65b6935011e4a161c Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Fri, 11 Sep 2020 10:52:14 +0200
> Subject: [PATCH v2 11/24] stat.2: Cast to 'unsigned long' rather than 'long'
>   when printing with "%lx"
> 
>  From the email conversation:
> 
> On 2020-09-11 09:24, Michael Kerrisk (man-pages) wrote:
>  > Hi Alex,
>  >
>  > On 9/10/20 11:13 PM, Alejandro Colomar wrote:
>  >> Both major(3) and minor(3) return an 'unsigned int',
>  >> so there is no need to use a 'long' for printing.
>  >> Moreover, it should have been 'unsigned long',
>  >> as "%lx" expects an unsigned type.
>  >
>  > This may be true on Linux, but is not true on other systems.
>  > For example, on HP-UX, according to one header file I'm
>  > looking at, the return value is 'long'.
>  >
>  > These kinds of casts are intended to improve code portability
>  > across UNIX implementations, so I think they should stay
>  > (although, I do wonder if they would be even better as casts
>  > to 'unsigned long')
>  >
>  > Thanks,
>  >
>  > Michael
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>   man2/stat.2 | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/stat.2 b/man2/stat.2
> index b35e3c615..08af24c56 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -665,7 +665,8 @@ main(int argc, char *argv[])
>       }
> 
>       printf("ID of containing device:  [%lx,%lx]\en",
> -	    (long) major(sb.st_dev), (long) minor(sb.st_dev));
> +	    (unsigned long) major(sb.st_dev),
> +            (unsigned long) minor(sb.st_dev));
> 
>       printf("File type:                ");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
