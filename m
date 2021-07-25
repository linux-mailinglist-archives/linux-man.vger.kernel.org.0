Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 301D83D4FC2
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 21:52:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbhGYTMI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 15:12:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbhGYTMH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 15:12:07 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8401CC061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 12:52:36 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id b7so8463538wri.8
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 12:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=d+wrKZFbkC9lfvDOJKPhgUcmOIHdnWIOD5lrv5Cdp9M=;
        b=FRBmjanM0Ekjr6szB9sZ2yWbo9SjvwW3IuABbXFbr/L9X36bj0QMw4+/AThEss8ywk
         S2GOXtt//oJgRJDwWHJarzdniHzGRjfAD9ACuyjuyby7RFOzOd07bNlVkWeNdeGvs+ju
         GboLoSNmuu0wuABvrjqkpcpxloDaM8LJbShnlUBcW+fJF31kwGm1IPkL24zau9ytS4OI
         wSOc0hhpLGg0YeIAnkpb3uREq4o4PsdfiYFfmE13Vzbgo+uv3AlUwn0hNRYPRG4ENVB3
         TZsq7CM9WrBWfqrqqyK+2QNSEJgsUh/n1OfOKdMY374UfXBJ+wmq06o/TaNr63PrfIfT
         Wh+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=d+wrKZFbkC9lfvDOJKPhgUcmOIHdnWIOD5lrv5Cdp9M=;
        b=n4qeyKp9QZNeW+4mwYuNvCKC7d/0u6xqrTkBZKu8oJdkj2K7/4/9do0K4qOS80HSm5
         a+Oo6Ev5f2/Pmqi/2wt9ar1vh+Q77Sl6R/lv+rGImoLjMWdUkhC5PDP7H2oSbKz3OLiX
         a1jjTAhiWtFQiMjJPGj/Vs76og/PbC1KthvAYjbA3IGV3fsQZoT1rzWO1XDYFdl5EVgY
         yrqQeKgIBnZxA/t4+5Bjs3pMPBJ35k+S1CZF6oylykh+cbXM8u04E1bz++VIFYkt/rHh
         4rKiFx6AEIdlE3hvVQ5kjg0WtGiqLWZJpE02haxOkbFDuKI4ikVB1Lp3tbM5o9RtQGwc
         w4ww==
X-Gm-Message-State: AOAM530ytZ0xPWEc2ahp8vjioqCy6023ys4UEWMdWEKzJXLo+AV5IxZS
        k3TWKNG/sM1IiE6mzkup8E2klye0PmA=
X-Google-Smtp-Source: ABdhPJxvKzp8hSVKBKBe72ax3i0DKIaD1B34OHLP7vnpQUVZVMM4hHmezRDJbQUUe4cz1sYHiUq+tg==
X-Received: by 2002:adf:e552:: with SMTP id z18mr15113124wrm.79.1627242755035;
        Sun, 25 Jul 2021 12:52:35 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id o18sm39948603wrx.21.2021.07.25.12.52.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jul 2021 12:52:34 -0700 (PDT)
Subject: Re: [PATCH] tkill.2: tfix
To:     Sagar Patel <sagarmp@cs.unc.edu>, linux-man@vger.kernel.org
References: <20210724045855.82231-1-sagarmp@cs.unc.edu>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <92994df0-fec0-3e5b-74ea-14a7d4a31411@gmail.com>
Date:   Sun, 25 Jul 2021 21:52:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210724045855.82231-1-sagarmp@cs.unc.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Sagar,

On 7/24/21 6:58 AM, Sagar Patel wrote:
> Correct function signature by adding missing parenthesis.

Oops, my bad!  Patch applied.

Thanks,

Alex

> ---
>   man2/tkill.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/tkill.2 b/man2/tkill.2
> index 6ff930e17..6e1afcd36 100644
> --- a/man2/tkill.2
> +++ b/man2/tkill.2
> @@ -39,7 +39,7 @@ tkill, tgkill \- send a signal to a thread
>   .PP
>   .B #include <signal.h>
>   .PP
> -.BI "int tgkill, pid_t " tgid ", pid_t " tid ", int " sig );
> +.BI "int tgkill(pid_t " tgid ", pid_t " tid ", int " sig );
>   .fi
>   .PP
>   .IR Note :
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
