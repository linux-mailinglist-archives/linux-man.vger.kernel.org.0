Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5E1A265A7D
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 09:25:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725613AbgIKHZM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 03:25:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725554AbgIKHZJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 03:25:09 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2460C061573;
        Fri, 11 Sep 2020 00:25:08 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id e16so10441216wrm.2;
        Fri, 11 Sep 2020 00:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9ZquUUnURXDxvuD8fXiESlWfcfJ173UE/itZH3BmtBM=;
        b=VMTda/Oertkd3SCS4f3kBMgN2WgvRGDVxx0KJjFcrPuN1hO/D1Fu8chK9of6Kf5n85
         4w486GzybxXCMpThkLchDeAVY3uUzc2lO/0AOSTth+94eat6T/tpVQ7BEMpGlbJuf8Kh
         7vM2iyCSl5xO4cdBUBpsRxBBJmescEUm28lb3l/wyAhkYgxWNsKryTiqHvNnhJD6OQX7
         oLDSmVTl2gKvUSgdJL68qKpXUcCk3FZAo/nkl2FtCKW+dhpXr4oFbEyydRuZhUWe1nk+
         MSmyZAP6a/5fr/KjbAvK9ga66RdK8gC8+HdSql+ioG1H4z9i4BvlH56B58lG1sV2HY8/
         eINw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9ZquUUnURXDxvuD8fXiESlWfcfJ173UE/itZH3BmtBM=;
        b=Mes9o5amYUo3AysBCx/NHUJVHPQTRrDWxsqAmUcRI+oHHmMvEg1oRrpAnR63cSYIqp
         ppu+DSX/x5btcY+Aguc79bDUWkHmZCxAZx8yBqW9xw0SBARFfkGGOh/95HkLt1FKBQpY
         iBZ1NmfTWU+wol/zDITw6A1VaZ3XNodqfekHOEJKsopVjj5GkpW8V0wNVvC8dY7h/JIx
         J/o8u9lABiKYAp2dAQ9L8UVqtf81Agd5/8c4TMD7PhhGpow1Jvp75yRr/dTHjMd73Rv/
         YvKbs+O6RKdNK4scHTStpplNhOX9Cn3JRK+UKV2JE1WHYFj5hgGMVtrVrRS0MW5OahTK
         Z15Q==
X-Gm-Message-State: AOAM531yhsUEMnQe7EJI5tszfT45Qd/AKxeh9IM0xugGRIgDKPBojQC0
        qlZlSCqYhNH6yCZFzIwCRhGOXztfWew=
X-Google-Smtp-Source: ABdhPJzl77RisK72v3J/RIZMgITeJvfzdnhRbtbx1Vxat1RPNf5711xuiAT73lHKySCyM7ywhXmvvQ==
X-Received: by 2002:adf:91c2:: with SMTP id 60mr669387wri.292.1599809107274;
        Fri, 11 Sep 2020 00:25:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id n124sm2383761wmn.29.2020.09.11.00.25.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 00:25:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 11/24] stat.2: Remove unneeded cast
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-12-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9e397d55-34bd-3df7-57cc-e5726198bb97@gmail.com>
Date:   Fri, 11 Sep 2020 09:25:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-12-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Both major(3) and minor(3) return an 'unsigned int',
> so there is no need to use a 'long' for printing.
> Moreover, it should have been 'unsigned long',
> as "%lx" expects an unsigned type.

See my reply to patch 10/24.

Thanks,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/stat.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/stat.2 b/man2/stat.2
> index b35e3c615..3418e1b5d 100644
> --- a/man2/stat.2
> +++ b/man2/stat.2
> @@ -664,8 +664,8 @@ main(int argc, char *argv[])
>          exit(EXIT_FAILURE);
>      }
>  
> -    printf("ID of containing device:  [%lx,%lx]\en",
> -	    (long) major(sb.st_dev), (long) minor(sb.st_dev));
> +    printf("ID of containing device:  [%x,%x]\en",
> +	    major(sb.st_dev), minor(sb.st_dev));
>  
>      printf("File type:                ");
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
