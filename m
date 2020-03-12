Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EB39D182AFB
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2020 09:16:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726299AbgCLIQi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Mar 2020 04:16:38 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:39423 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726194AbgCLIQi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Mar 2020 04:16:38 -0400
Received: by mail-wr1-f67.google.com with SMTP id r15so6190088wrx.6
        for <linux-man@vger.kernel.org>; Thu, 12 Mar 2020 01:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AY3xR5lF7r569nToADXe4MlI/V33PB6yZIViYyDYZX0=;
        b=m0XSsdBKDXRUNwaJVADhyt9pTRnJ0yWEvrwMHQlK2BwwPAppFgMXs5v7jYsjFsKovT
         ykM076OhqIUWbAktDOo072LtW684f4CgHTRCY6cS+CwSs1LUq+n1Q/bH4xySOLq1MTAO
         Jn7sgcNgJmDaci7cZNxCZlqEru9eWe2w13l/UAnONsOsHjMm6eXUWq6F6uv9Imo1dr9J
         +GUxxYFKAUsrwOJUZK2eAc0Scmj7nKbIUQKolFSS4hP/rtFjnI0Sv46BOhSWncyOU9n2
         4FbvUd+WanHsb22Dnjv+iXC6riUtOQc9rIipP3vdJmjhoc6v18zwB3FJVS/O9QcZMqqS
         MxOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AY3xR5lF7r569nToADXe4MlI/V33PB6yZIViYyDYZX0=;
        b=KumLjKKkx3s40XXaHuiduoA8yW0jIOAKa8qE3/FBp88+m/Dfgz82dZXKfBbEF5Nt1/
         AJIvQ1/zenX97do4/boMryHWcgcn1UJI5sl5PcKKwDKvdaNvi4RvS7Me7TqgMpcRmxcI
         Rj6x3ysC1UHkHyajpn8mtW2Tvv56o/Y9OjMwxTnxkNTmchbtnmF441RAPWv2OMRiDSyI
         4I9pUq7OZqm+6Oi2XfRrUDwNEOinxRBSIBeQPewjgYqJTifSrZ8+qtW4UmKqfrTTORGx
         dIzLmwPPXLCDsxLzFAjZr9IdrKW4eEHgwfcnsbfHZlUinO8C9rJDjTsmoKV7v6ooA7+w
         u5Yw==
X-Gm-Message-State: ANhLgQ2VsqZB1iNut4+QZTu5cBtJEfmlJ2AnlgCtD32af6xZO2zhBiM7
        8UWgmmVBPrEvq+qPGBZAakV1w3QGWa0=
X-Google-Smtp-Source: ADFU+vuCkPp65DFS49I8J0ViSOLoyb/bJy2mHvPg104WGie0rBnljnqH5huw6muZM+F7F8vDKXCqQQ==
X-Received: by 2002:adf:e5d2:: with SMTP id a18mr1732762wrn.334.1584000996667;
        Thu, 12 Mar 2020 01:16:36 -0700 (PDT)
Received: from [10.5.49.236] ([195.171.175.163])
        by smtp.gmail.com with ESMTPSA id n1sm29208331wrj.77.2020.03.12.01.16.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:16:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] semctl.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200306114104.1179-1-jwilk@jwilk.net>
 <20200306114104.1179-2-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a95bb02b-6d4f-deae-337b-716b8c8deb7a@gmail.com>
Date:   Thu, 12 Mar 2020 09:16:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306114104.1179-2-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/6/20 12:41 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Thanks, Jakub. Patch applied.

Cheers,

Michael


> ---
>  man2/semctl.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/semctl.2 b/man2/semctl.2
> index bd8bc39bc..ac073110c 100644
> --- a/man2/semctl.2
> +++ b/man2/semctl.2
> @@ -371,7 +371,7 @@ The calling process must have alter (write) permission on
>  the semaphore set.
>  .TP
>  .B SETVAL
> -Set the the semaphore value
> +Set the semaphore value
>  .BR ( semval )
>  to
>  .I arg.val
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
