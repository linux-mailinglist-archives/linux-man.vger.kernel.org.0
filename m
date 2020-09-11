Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DD1726597E
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 08:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725764AbgIKGnG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 02:43:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725730AbgIKGm5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 02:42:57 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 114CBC061573;
        Thu, 10 Sep 2020 23:42:57 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id z9so3688313wmk.1;
        Thu, 10 Sep 2020 23:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vCW+ae1jUpQyAbPEOej1tyyxhd3A9Wnqwzeh0TzNnWc=;
        b=ZWUig4BJQFVXqsalHZE5lX3VbLW0v6R1fueZWys1AtrgWro4wwwGVtkWLIhUhcNXCg
         CB24DtD6DNfFpw/WRyIbbgNa2r82OkVofw+Uuc8tQEHJA04sL9138LlznjGUAhZ88waI
         kFqcUFWLpOeKFmxAmqSJR4Vj9pFlFyksvI/3F0QhJsArRB1CcQ6MKdj9WtOgEPRnQzdi
         xy2tzPXfKpXtd59wibz+/9bR6mTW3Tws6KcEvg5sFeAZIegMi36GEYCjJ3mptET6eVij
         5c0C7sWOeFWMSWMofriYAjZ6YLB6egUYuf+wpfX0nrFLNo9M+b0THNal76UBHHjbYaOP
         NfAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vCW+ae1jUpQyAbPEOej1tyyxhd3A9Wnqwzeh0TzNnWc=;
        b=enOjwfA8HjStn3Ap2Tx+0fVtuP1wJ3BA8+1x4iPXk2C1UkSoaXQdl/YOvoWOrxVDbW
         7X1M9kTtjZ8HSYZoVOJTaow68kp9B7OBtgb1OLeL53dDC751+2eN2E8xjeGjHuXJ5qwb
         b0k5/mt84KyZRBHsD+RB0VCn4FUsMfJNggvI/sdB82UPzXtzSVqCj59+PVJK6CAEJBWC
         QFt9bmzDTR661Iab3aBz4LsGLCHybARWsMjrmMDRC7PcUUauKAjO8I1upfOeVkgkMwqF
         IFBPyNcLaB7cGIlZ/zK0AJPq7DlSTdl+Uk5JYRvBcnJ9K3685x3AmEJ5HoXject6zxpN
         dc6w==
X-Gm-Message-State: AOAM533G7q2pcfEJVY/k5AZP9V+H9mIKY0NfM3nqlVuKAqyjJhj8af9O
        KuAm75Hz8Eyk/k/b4TmN3N7aGoMSevg=
X-Google-Smtp-Source: ABdhPJwZQB00/uEkFhOgZt42Xf1T4OzZUxZ2FBPPc7mpBrzfFv88b5WQMaAl3mglWUOqAYqDw/WBAw==
X-Received: by 2002:a1c:7911:: with SMTP id l17mr616468wme.179.1599806575504;
        Thu, 10 Sep 2020 23:42:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id l19sm2263546wmi.8.2020.09.10.23.42.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 23:42:55 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 21/24] aio.7: Use perror() directly
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-22-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6b27eeb1-744a-af3b-e155-58802d25ba03@gmail.com>
Date:   Fri, 11 Sep 2020 08:42:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-22-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man7/aio.7 | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/aio.7 b/man7/aio.7
> index ff099885e..9b2c44c48 100644
> --- a/man7/aio.7
> +++ b/man7/aio.7
> @@ -257,8 +257,6 @@ aio_return():
>  
>  #define errExit(msg) do { perror(msg); exit(EXIT_FAILURE); } while (0)
>  
> -#define errMsg(msg)  do { perror(msg); } while (0)
> -
>  struct ioRequest {      /* Application\-defined structure for tracking
>                             I/O requests */
>      int           reqNum;
> @@ -390,7 +388,7 @@ main(int argc, char *argv[])
>                      else if (s == AIO_ALLDONE)
>                          printf("I/O all done\en");
>                      else
> -                        errMsg("aio_cancel");
> +                        perror("aio_cancel");
>                  }
>              }
>  
> @@ -418,7 +416,7 @@ main(int argc, char *argv[])
>                      printf("Canceled\en");
>                      break;
>                  default:
> -                    errMsg("aio_error");
> +                    perror("aio_error");
>                      break;
>                  }
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
