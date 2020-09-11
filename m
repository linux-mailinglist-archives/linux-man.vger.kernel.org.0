Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B16CC265B39
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 10:13:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725535AbgIKINF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 04:13:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725468AbgIKINF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 04:13:05 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BFCFC061573;
        Fri, 11 Sep 2020 01:13:04 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id z9so3902527wmk.1;
        Fri, 11 Sep 2020 01:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/OA1KQZcR7gYn+DF0+tu9xr0W15DodW6Woi0CUV9fZU=;
        b=cyaRqe7R5wKr097BgYGWClD/e/vdOEv3M2peromlstHbtr66DFcFAIn8kwtFtSNNII
         naW3GFAzqJbJ90ytL2BfTzIbwkwZHdrlupsSIvcSdFL+ARusGi/Wz7wgQWr5l0xYMCnq
         B4bWWBDas0PJKVcQVk8ttzmHoXe+mks4WTyIx8OIFwhxYyOOidwBnjcBmLOQHw9c9QV3
         gflFjHHX3gJ+VdRvosB5cy1yVI8kBn7C2NhGW+bmwMeZihfazDtmpt2WYGrfLvAgckz6
         6ls3SyNT7pvy2hhezh1raxJQ7cVPLFWL40NpqgxaknIZ1vvbVofyK6UGIcDLw+pSQT1f
         uc3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/OA1KQZcR7gYn+DF0+tu9xr0W15DodW6Woi0CUV9fZU=;
        b=QGKpK/BZPIqMHtqeQmyPGUBs2liZxasst5YCEbNo0g7dwRUCREQAyxL2Vqm/TyiKKu
         oa1sdA46DG6LIUkmiORzwaQeVmiYf0csGuYd1aI1nwKZ//ai7fDe+XmnCepef+yJGX/R
         C2O/SvuRyikBtesjyA2YT45Hb+gtUvtYtjKb1W/dfogAtW4Zh7P378g6UxF6jjapAmU4
         2ZL7WInqxrnRdW9mpkK97MwqZhJ9PX+zqgxDRdyeYxSjm1xzEfMKwYoxMBKDlqWXKyMn
         T/cJiUy9Rh1KsdLzxct0e0FhsStgHJxLa+/oSmfeJ5oKRB3oMbYOjbGSmxzHZ50uyDfH
         eeyg==
X-Gm-Message-State: AOAM530bLcLh8WmWfQ/Q8AwAM31bs+fG/oQ7nq2UcgORezk4ka+DA/PY
        os71YFfs2Mo9I6Ynv6tT98uHdWCZ0iA=
X-Google-Smtp-Source: ABdhPJyqVdjcrkGxIed+coChWfs+YIHgg89MoFrd7u4/haiuIfHFZl+HbrrJnIbkfWVItr2BgF4IQQ==
X-Received: by 2002:a1c:e389:: with SMTP id a131mr984399wmh.181.1599811982849;
        Fri, 11 Sep 2020 01:13:02 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id z14sm2959346wrh.14.2020.09.11.01.13.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 01:13:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/24] eventfd.2: Use 'PRIxN' macros when printing C99
 fixed-width integer types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-5-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6f0dbdcb-1939-036a-8a20-791bb57db975@gmail.com>
Date:   Fri, 11 Sep 2020 10:13:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-5-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch Applied.

Cheers,

Michael

> ---
>  man2/eventfd.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/eventfd.2 b/man2/eventfd.2
> index 929234ab7..71e9d85b4 100644
> --- a/man2/eventfd.2
> +++ b/man2/eventfd.2
> @@ -386,6 +386,7 @@ Parent read 28 (0x1c) from efd
>  .EX
>  #include <sys/eventfd.h>
>  #include <unistd.h>
> +#include <inttypes.h>           /* Definition of PRIu64 & PRIx64 */
>  #include <stdlib.h>
>  #include <stdio.h>
>  #include <stdint.h>             /* Definition of uint64_t */
> @@ -430,8 +431,7 @@ main(int argc, char *argv[])
>          s = read(efd, &u, sizeof(uint64_t));
>          if (s != sizeof(uint64_t))
>              handle_error("read");
> -        printf("Parent read %llu (0x%llx) from efd\en",
> -                (unsigned long long) u, (unsigned long long) u);
> +        printf("Parent read %"PRIu64" (0x%"PRIx64") from efd\en", u, u);
>          exit(EXIT_SUCCESS);
>  
>      case \-1:
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
