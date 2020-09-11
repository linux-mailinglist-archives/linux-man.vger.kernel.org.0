Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDE05265AD4
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 09:51:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725766AbgIKHv0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 03:51:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725554AbgIKHvY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 03:51:24 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D02FBC061573;
        Fri, 11 Sep 2020 00:51:23 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e17so3524542wme.0;
        Fri, 11 Sep 2020 00:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9Xsaahdyj78pae+aUR721z0jxzTGJVufGOyZk2fZBts=;
        b=MNcRtjVY6JRb3xEGii8aCwALs5/t6bKbiboBsuQ4DCiA92mMelhm8X6v4HirWJgqM+
         UgfG2QhRdJh6Fzt35fwOGa8Pg6txOdwF0wIgG2voIR+Oo2Clu319mDyHSULpBN5xoaOj
         Dlfew4oAYKESTEzfNfdbScR0iQT6Rv8QyEY81tLhUd0KnADRBDdMkxTBm3PiC1AOXIp5
         S1grdRz4XLeG3U1R77WToz5xjBQXjQrbTfnXTIvmTZPevufkf7uDYM7Dmbh1je/bTFM3
         ZkB/ZF2XfsMnuzdQbeP6J2SbG+TzLi+Z0ICPja3PXbIh+3OfeuFeydJyf77ERl26OxO0
         928g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9Xsaahdyj78pae+aUR721z0jxzTGJVufGOyZk2fZBts=;
        b=bVDqzWYGXpp9rrPSCtwmXMgJPJDZtA/IT/Bdho77c3XO05nZV8+nGFLOWREgUFjh+V
         /kKyjAiYQzNV4+QgrkOadT0OPxT/nFTzALAH8qjHXkXR28eOcZ5CKpPDibteO8M1Lgdy
         91hrAwwcBhzf+8LCtXuzmCuwsOQALHLfiTOd+ZKJWikyVLn0S/dwsGJaRmbIiZCkHxDI
         MAlbO4/3fa2oaKhPa1txDploulxrkact1o7xi3ezgjTXSWuxCkvxhtiiah1ET3n4BsId
         dMxOGCxNbtfI2mUUIyS1zbKEWOkIpooKx0LTn8gr2qc11fb+Y4Alb9oix9oCINaSSdqg
         Cggw==
X-Gm-Message-State: AOAM533iEgZkEgei6cIlOG5KQk9HLb38y78wlHyOFVIkokwPa12hCRsv
        M+hA2Hf9wRODTta4kAvq6WPe6jx6AIM=
X-Google-Smtp-Source: ABdhPJwdwbjdXquczA4W7miJxWh9qTjwiKJYVcEuuuHMW3H21k191C+S2J1KgWsv7BvoTxTW5L7ZJg==
X-Received: by 2002:a1c:2742:: with SMTP id n63mr884338wmn.24.1599810682335;
        Fri, 11 Sep 2020 00:51:22 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id g8sm2577044wmd.12.2020.09.11.00.51.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 00:51:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/24] request_key.2: Cast to 'unsigned long' rather than
 'long' when printing with "%lx"
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-8-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2c625b02-fa92-110b-d064-bebc012baae4@gmail.com>
Date:   Fri, 11 Sep 2020 09:51:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-8-colomar.6.4.3@gmail.com>
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
>  man2/request_key.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/request_key.2 b/man2/request_key.2
> index e28c11ded..c14bcb000 100644
> --- a/man2/request_key.2
> +++ b/man2/request_key.2
> @@ -537,7 +537,7 @@ main(int argc, char *argv[])
>          exit(EXIT_FAILURE);
>      }
>  
> -    printf("Key ID is %lx\en", (long) key);
> +    printf("Key ID is %lx\en", (unsigned long) key);
>  
>      exit(EXIT_SUCCESS);
>  }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
