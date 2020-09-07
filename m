Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94EF425F855
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 12:31:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728814AbgIGKbs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 06:31:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728836AbgIGKbo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 06:31:44 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFAB4C061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 03:31:43 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id i22so17560658eja.5
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 03:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RpvwTYljO8603ufIZ+uT4iCKgBIEPW/trjR0oDCjAgI=;
        b=ZwzROsk45W9+mgSP2elmkeipCVNKlGMMWLLEnq8H0Hl+ySmtpuEK9XhUDSjixCy9AC
         uD+P/YqeFfkHQTfA4vzCfhfBKAt2oDoIwCnVb1AlgDai70unYWiKRZCyidh0FPWCNgeD
         zA+ETXvJJudp9RxTgFUBpuUlsR2FXjvs1FM2XGuU8NI+a8O+wREs3ns2avk0oaLL/56C
         68YwPjaVRhDrMpGShzfb2TMBivpoqKQob6MjISt2RMDou0Bqm1Tb+cF/kedqpAeI+h2D
         0fNV1I5KkaMSFAS4rhtn+G/iX02zR+FA6Dcc4dT4h0fvWpUBNPE/Zvapd+zmKnqsUpP2
         PYCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RpvwTYljO8603ufIZ+uT4iCKgBIEPW/trjR0oDCjAgI=;
        b=azZS5+F6CJsLYQmtcSpDGpZB92ZBHoCaodQ/oRnHokD1Rw9prPFegL5kgWtKnI5SCl
         nfmbnZvFcwDwyfm1lfruWwYveQjS81wTtqNxRJczuqie67M3Kg2HA1s8Xo8vTSLbFo0C
         voLX1Om7ZXlPUnxgUCjeeoqVnP9CqpKlv8hJmUZYW7EAV7+pE5hLcKWIaJ3tuJdBSVZc
         Z8DSXC7YltwIYYMwbOIQyrLs13AjUJnhFaoldnCJ6UBHTAVFIsHrBP3yIpKgplhXWpVL
         yw2P7gK7AEKKOcnBCi3XPRwYwLgvdv3PNnorNvuMGtTdA4BXf3smGndbdVWSNJWchjVy
         YWhg==
X-Gm-Message-State: AOAM53301D9eF0y7LDMLUlvy6hkJ4JrFbFpq+V+m4eUDwaCc5fsGxlah
        ggc1RYc91Kv8sezK+xaP432qw9R3vi8=
X-Google-Smtp-Source: ABdhPJxXpMaLZjRpZX6hlKDugn4YcMAuKmb0iJH+SUxF5Y4Xfgb7RaOy5y5PIYq5Wh2YfmpKr+RJYQ==
X-Received: by 2002:a17:906:3791:: with SMTP id n17mr19958521ejc.216.1599474702338;
        Mon, 07 Sep 2020 03:31:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id y21sm3914432eju.46.2020.09.07.03.31.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 03:31:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] fopencookie.3: printf()'s .* expects an int; cast
 accordingly
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200907102116.16924-1-colomar.6.4.3@gmail.com>
 <20200907102116.16924-2-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <12b9d72b-4437-5c8b-954b-7b7118be0591@gmail.com>
Date:   Mon, 7 Sep 2020 12:31:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907102116.16924-2-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello ALex,

On 9/7/20 12:21 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/fopencookie.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Thanks. Patch applied.

Cheers,

Michael

> diff --git a/man3/fopencookie.3 b/man3/fopencookie.3
> index 472a7f3d2..5394ce4a5 100644
> --- a/man3/fopencookie.3
> +++ b/man3/fopencookie.3
> @@ -438,7 +438,7 @@ main(int argc, char *argv[])
>              break;
>          }
>  
> -        printf("/%.*s/\en", nread, buf);
> +        printf("/%.*s/\en", (int) nread, buf);
>      }
>  
>      exit(EXIT_SUCCESS);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
