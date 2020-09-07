Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F14525F880
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 12:35:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728666AbgIGKfE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 06:35:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728691AbgIGKej (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 06:34:39 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E39BCC061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 03:34:38 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id i22so17571072eja.5
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 03:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=F5j+r84tLwSUiooxk96JksGIeyCix8ECo3Kes6g5WHM=;
        b=bu9AnafAtbdYUYVAsADJUyhEpXjaBrzmOGkRGEodzGqEtDAfPIgGgFQVXxQyJnpNAk
         VJXTUXYysZEnRyMEM4T2x+eVnj+vsfkZ9/gvg54EprxvcOSsgR0EvIu00h4Jxk+jMoN1
         THJg/p3ouXgtP/VEwyTVSXJRzzxgwBgqlJwgNHL1lF2qkeWPd/7h03+aWD5q7Yy2Tqwi
         CbtLJO09QJKAhg/QsLSh5u2SIFgZTLqE0pL6RkXaNBEMAQvXwKXX5u3q3AwLTZnhmsn3
         djvghZ30Mhv8oSETVKVwhz/mKDtgv2W4frVs2bp5P1/3TGY10/K8/XR9Dk1Lpd/tfarh
         TV7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=F5j+r84tLwSUiooxk96JksGIeyCix8ECo3Kes6g5WHM=;
        b=LMxRcUruur8CczfGskxdmIXGiHDVudi6W67QVIeQnpjR5Sch692O45x2+6gcMPfPut
         TvROKlKis3vgK4Mn/+55NuzxWMRyOCs2+lScpAoTN3wgjzsNO27Hnl+MGSzRLUulcemL
         /Xa/cKE5N6Lxg1G/VnqTvmR0G++GNRuKuGnAUdGdcHnfHrfKV2rL4ztzWAKDv4PRies8
         yujc53eOUEgkqikEg+ZmLCBcp98XN1J2rn2dpwoOzduY1EmVqs5XEpsQLpuMdoUN+0hq
         l0tc0noOpjGvrTUj5j4MxoO3dyBD1z/GkMTWYnUgnLJlv0dGUuhhCHoXOJiJhCQlnsno
         NAnQ==
X-Gm-Message-State: AOAM531iOK4xdT8bSK5BKCSc5vv96XdzcYM2h3ns050kQnBBR/U8Ojvh
        0vVwYd5EcV4jVq4s5h3dkLLG9dKT9y4=
X-Google-Smtp-Source: ABdhPJxk/FtIDS9aQWnpD8XsWcWz6frBkTa1JBLokvkpRx167R9v1YisUrI0YvDmyiUssWyf2ebZ1w==
X-Received: by 2002:a17:906:3e0c:: with SMTP id k12mr19983659eji.189.1599474877352;
        Mon, 07 Sep 2020 03:34:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id bo8sm1058646edb.39.2020.09.07.03.34.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 03:34:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] fopencookie.3: Fix bugs in example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200907102116.16924-1-colomar.6.4.3@gmail.com>
 <20200907102116.16924-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <933ccf29-8b43-5556-866d-e967f3b390cf@gmail.com>
Date:   Mon, 7 Sep 2020 12:34:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907102116.16924-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/7/20 12:21 PM, Alejandro Colomar wrote:
> fread(3), unlike read(2) which returns a ssize_t, returns a size_t.
> It doesn't distinguish between error and enf-of-file.
> Instead, either ferror(3) or feof(3) need to be checked if
> fread() returned 0.

Well, gosh, the person who wrote that example really 
should have read the documentation more closely :-}.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/fopencookie.3 | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/man3/fopencookie.3 b/man3/fopencookie.3
> index 5394ce4a5..055ec64d7 100644
> --- a/man3/fopencookie.3
> +++ b/man3/fopencookie.3
> @@ -392,7 +392,7 @@ main(int argc, char *argv[])
>      };
>      FILE *stream;
>      struct memfile_cookie mycookie;
> -    ssize_t nread;
> +    size_t nread;
>      char buf[1000];
>  
>      /* Set up the cookie before calling fopencookie() */
> @@ -429,11 +429,11 @@ main(int argc, char *argv[])
>              exit(EXIT_FAILURE);
>          }
>          nread = fread(buf, 1, 2, stream);
> -        if (nread == \-1) {
> -            perror("fread");
> -            exit(EXIT_FAILURE);
> -        }
>          if (nread == 0) {
> +            if (ferror(stream) != 0) {
> +                fprintf(stderr, "fread failed\en");
> +                exit(EXIT_FAILURE);
> +            }
>              printf("Reached end of file\en");
>              break;
>          }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
