Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38D9B265AE6
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 09:55:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725788AbgIKHyx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 03:54:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725767AbgIKHyt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 03:54:49 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F1CAC061573;
        Fri, 11 Sep 2020 00:54:48 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id m6so10531825wrn.0;
        Fri, 11 Sep 2020 00:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yefDfyzMV3D0zYfLubpfnreXDIUekY8KZxUMEU76Oe4=;
        b=nsgmUcQTca2wsBY+8niyqzwafdlFRwS90MFzZ2EgeLZCHdr6dglWpoC23+BzH90cNl
         sypAd81PKLiT52nRhEe2HNu9EdlTl/3qxxFDJ8j4ZnNk51U/6zREhRy4DYeW251H7JIw
         +a3DygUFtUT09n+sTwiGuoTdIvLg4wE/vHW2NyfMdM4Zjl+95DbgTXz5+s3cNbqSfSM4
         SVRCHYvzKHZ7UNmxMHgMIjesMdsSa1d6GDKm2ZNe2wcvRdoD4+NV4VmiHjRNS3A6PMxO
         Hdb1HvcaL4lclzgZkl1ntkSHVTp1d9UU2+k9f82gR7S197gHYWifoqfKbeA/3RO9H2fk
         KzoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yefDfyzMV3D0zYfLubpfnreXDIUekY8KZxUMEU76Oe4=;
        b=IWy1NnKZuyD6+nmuZllH/OcnCpWAoaKIYBTVW+LnVXp+jKqHZRlqhmWx/aKod+sLWE
         0k5rYO+K8Rhn2nhU/BNfESydZoc3NkbdqnKhsjoO2efJsnQIgoI/z/TNjewBVzrFgd1W
         QhTLDBOHopRQfJ1PcNBh4bAmSn38TMek/hT9TqSbWDXIDQTw6QpSHGPFXQZxNz3M+gHH
         s+8DcjWXV+6sDL7xo2qqzYYoGEuHxbMaDQ0pq3jVyqq+reX6LEkNSzx3MixWmtS020Tv
         qytrI2Pe7FNq/XU06bMDf/WqeHi+9s4cQ+Uqxo2v9SofHODgDlHw8ZiLo/ColElALmw3
         fu9g==
X-Gm-Message-State: AOAM530GSEvfrLLo8eKd7Anf1uqAJvuVzjilseI7rJmFwyw6Gz/FQG7R
        o/6xIwydGIsajjsjEHwQCO4Ab+P6sVk=
X-Google-Smtp-Source: ABdhPJy/o+3kHMIOS4EPxqJOfnqVnKAzpt6HZXJYMRTO2NN1q8WKr0TccZgEUDjLl5XAO7/zwuB4Gw==
X-Received: by 2002:adf:cf01:: with SMTP id o1mr719399wrj.421.1599810886868;
        Fri, 11 Sep 2020 00:54:46 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id q4sm3024523wru.65.2020.09.11.00.54.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 00:54:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 23/24] select_tut.2: Use MAX(a, b) from <sys/param.h>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-24-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ede06e4b-7217-1315-6035-9116df9b02c0@gmail.com>
Date:   Fri, 11 Sep 2020 09:54:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-24-colomar.6.4.3@gmail.com>
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

I'm reluctant to apply this, because MAX() is not a standard
macro. I suppose it may not be present on some other UNIX
systems. You thoughts?

Cheers,

Michael

> ---
>  man2/select_tut.2 | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/select_tut.2 b/man2/select_tut.2
> index f683dd49d..d23683d75 100644
> --- a/man2/select_tut.2
> +++ b/man2/select_tut.2
> @@ -354,6 +354,7 @@ from one TCP port to another.
>  #include <stdlib.h>
>  #include <stdio.h>
>  #include <unistd.h>
> +#include <sys/param.h>      /* Definition of MAX(a, b) */
>  #include <sys/select.h>
>  #include <string.h>
>  #include <signal.h>
> @@ -364,9 +365,6 @@ from one TCP port to another.
>  
>  static int forward_port;
>  
> -#undef max
> -#define max(x,y) ((x) > (y) ? (x) : (y))
> -
>  static int
>  listen_socket(int listen_port)
>  {
> @@ -483,7 +481,7 @@ main(int argc, char *argv[])
>          FD_ZERO(&writefds);
>          FD_ZERO(&exceptfds);
>          FD_SET(h, &readfds);
> -        nfds = max(nfds, h);
> +        nfds = MAX(nfds, h);
>  
>          if (fd1 > 0 && buf1_avail < BUF_SIZE)
>              FD_SET(fd1, &readfds);
> @@ -499,11 +497,11 @@ main(int argc, char *argv[])
>  
>          if (fd1 > 0) {
>              FD_SET(fd1, &exceptfds);
> -            nfds = max(nfds, fd1);
> +            nfds = MAX(nfds, fd1);
>          }
>          if (fd2 > 0) {
>              FD_SET(fd2, &exceptfds);
> -            nfds = max(nfds, fd2);
> +            nfds = MAX(nfds, fd2);
>          }
>  
>          ready = select(nfds + 1, &readfds, &writefds, &exceptfds, NULL);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
