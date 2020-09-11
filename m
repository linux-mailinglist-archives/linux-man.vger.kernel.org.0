Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B95F7265C7D
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:31:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725710AbgIKJbT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:31:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725554AbgIKJbS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:31:18 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95708C061573;
        Fri, 11 Sep 2020 02:31:17 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k15so10761159wrn.10;
        Fri, 11 Sep 2020 02:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=m0zCJ2N1DEmZgbso7kf45dEOHU0CDP0xnWcON3F46QI=;
        b=MJQJvD5Iz0SVJV57kXowzWjx42l92jQDOKm4ZFaVNyMxLQ6crMDGsvR4x8BR6C4Jk3
         MWQwBYrUYK+0fE0JF7J59WiFw539V63G9m5sLVTNeaiPMAQwCcUUO2X/82n1V1l0oi0b
         mRWiKYcHGRXgfOsrNfstgDKTPUMmRGyQWIyb0E3VEXeLxgCBkrZQmW5D6b/4PvBB9W5B
         AKeAi3tYchOxuknB+6MQKhlMao6Zplt3Fmy3KXWEIitlms7Hh7be31lfD4JI0sAtBuZZ
         Z2qxCuy2usvXg4q5ycjfBA4npZgZo6Y5GwtPFT99AuFyNsjZJ5VEktSpel+TVXfqWJoH
         W1zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=m0zCJ2N1DEmZgbso7kf45dEOHU0CDP0xnWcON3F46QI=;
        b=RsywSZBkcmh1glYsptGsu6OzyNs/uwcJVkkqDBXT550lStwiqfr3swsvAw6sCBdVFq
         rBpL982t+ZtK0lUbL5QbgEoqnhhH5Q+zIMlylaqoJXxqanVlc4cV5BgJDHWcV2E6YNnp
         4PW9tpSQ6fdaYqNb3CR1iyzbJd9wW8fxXDErxCHAPBc5dv2JSCHCH6udL6cziMjiZqVL
         C++zSzmNlf0vDk3Fyy+1y7rUd2QPo4TTVTA/8ZZNoDxyId1BH1AfaWc6hauV9Hy9A/m+
         vB38B1fQ2Eefzpej6bhnb8qFdnj6RPhDOw9g8xWlkPp4XRxYeuG8HszsGFk22fAPbbLM
         R7nw==
X-Gm-Message-State: AOAM533sUwt/ScILhl/j5Up9JySrWbA8fhS975+EIz0ZYF85uBnhNCse
        Ulul/FsWB4vCyT1B6dpFiaoSn6wUCN4=
X-Google-Smtp-Source: ABdhPJyguEWBifaW2jhYa6LcYiRy5mmAwIUy1Zu8cNpNRjMOe0ZNlD122vq2EG8MYu1lRnbFHMhMMw==
X-Received: by 2002:a5d:5089:: with SMTP id a9mr1221685wrt.118.1599816675841;
        Fri, 11 Sep 2020 02:31:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id o124sm3167680wmb.2.2020.09.11.02.31.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:31:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/24] inet_net_pton.3: Use 'PRIx32' rather than "%x" when
 printing 'uint32_t' values
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <928d25b7-7f97-f9b9-80ce-0550c18131c2@gmail.com>
Date:   Fri, 11 Sep 2020 11:31:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/inet_net_pton.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/inet_net_pton.3 b/man3/inet_net_pton.3
> index 00f94b9d4..d74a33d74 100644
> --- a/man3/inet_net_pton.3
> +++ b/man3/inet_net_pton.3
> @@ -332,6 +332,7 @@ Raw address:              c1a80180
>  /* Link with "\-lresolv" */
>  
>  #include <arpa/inet.h>
> +#include <inttypes.h>
>  #include <stdio.h>
>  #include <stdlib.h>
>  
> @@ -381,7 +382,7 @@ main(int argc, char *argv[])
>         may not have been touched by inet_net_ntop(), and so will still
>         have any initial value that was specified in argv[2]. */
>  
> -    printf("Raw address:              %x\en", htonl(addr.s_addr));
> +    printf("Raw address:              %"PRIx32"\en", htonl(addr.s_addr));
>  
>      exit(EXIT_SUCCESS);
>  }

So, I'm in a little bit of doubt about patches 01 and 02. Does 
this really win us anything? On the one hand, %"PRIx32" is more
difficult to read than %x. On the other, does it win us anything
in terms of portability? At first glance, the answers seems to me 
to be "no". Your thoughts?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
