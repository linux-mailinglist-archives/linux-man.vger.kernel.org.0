Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF15C265B20
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 10:07:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725613AbgIKIHx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 04:07:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbgIKIHw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 04:07:52 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 773FEC061573;
        Fri, 11 Sep 2020 01:07:51 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z4so10554688wrr.4;
        Fri, 11 Sep 2020 01:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cpIlmOuvPXvfacevpi7yS3P76dKmWK43TOweVTpKkTg=;
        b=UrNMGGOej6UPvXEjKavT25ojVb6RamvHVvLPgfpMOzROBedFB58nQC+ZZWQTtwYex3
         6xzMr5NBsSAaYyiOjo3Mtt9Lm7vnTTuXb48q+oHzG28r4xReugKnkFps+uAANGBxyaEk
         dRD8iy0BktwbJHPXnkWdEnk7eKawpD8skV0Aa0jzGsm4B+R63a60CuZcNk4w9fF1wakK
         MD4hbRudioH2YZAaOBNqXNkY+MW99H0aSfBU/5XvkQ3MmP2/eXpVL74ZvplWy04ST870
         iTeejo2wErIwSal9X362YPSCtZqZ1gCMfw9pJPH2uiKFkDPuRWfMxPbu1KPG49FAtrZZ
         QOWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cpIlmOuvPXvfacevpi7yS3P76dKmWK43TOweVTpKkTg=;
        b=ImCVG0yw5LNEQmO/ScaGkXgRNrGsioYjKJ6cBLRXC9LaRWkromTOQSr/AHLanmsm1G
         JNIot5u3WTa0i7A3xrkcOWaLeU82FZ6FGrCKHWCFKIRZCMQlFD20D+S/vzAS/x2stn86
         nk5P7Ty2G8szW8IYjNTiT/ASN7fUiJBnjPxIn4nHOcAPadi/xKbXi/4LFAQ40WtKV3o7
         lo/yU1iDxDcUAH/+koH06mdkwvnU98lyP2frxrBs8RxWSi7alsQC4GS05mt/90kWWlyS
         gcE22MDh+17eIdoxrUkDIrSU9MFeR2k0k+4vjPanvHakPH5sSARE7zdvZwRzBEizoogR
         FhfQ==
X-Gm-Message-State: AOAM533WSoFrDBqzWlJTWHlsX9uw6iuzirJ5U7GV/jMFHtcGt/Oy9Xqx
        zamN17CMioQq7+8gNEb+nm+YzISFvXQ=
X-Google-Smtp-Source: ABdhPJyGMlvHHrrqHyEqBSkYF2e/i+qmdeYWRd44XUztofPuulncUkJXtmpp6R/JOlk1kukAs7+QvA==
X-Received: by 2002:a5d:634e:: with SMTP id b14mr766599wrw.190.1599811669916;
        Fri, 11 Sep 2020 01:07:49 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id q12sm3089885wrp.17.2020.09.11.01.07.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 01:07:49 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 15/24] unix.7: Use sizeof() to get buffer size (instead of
 hardcoding macro name)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-16-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <caebde17-1e86-66aa-50d7-ad794cd9324c@gmail.com>
Date:   Fri, 11 Sep 2020 10:07:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-16-colomar.6.4.3@gmail.com>
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
>  man7/unix.7 | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/man7/unix.7 b/man7/unix.7
> index f61b51424..50828a5bc 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -991,7 +991,7 @@ main(int argc, char *argv[])
>  
>              /* Wait for next data packet. */
>  
> -            ret = read(data_socket, buffer, BUFFER_SIZE);
> +            ret = read(data_socket, buffer, sizeof(buffer));
>              if (ret == \-1) {
>                  perror("read");
>                  exit(EXIT_FAILURE);
> @@ -999,16 +999,16 @@ main(int argc, char *argv[])
>  
>              /* Ensure buffer is 0\-terminated. */
>  
> -            buffer[BUFFER_SIZE \- 1] = 0;
> +            buffer[sizeof(buffer) \- 1] = 0;
>  
>              /* Handle commands. */
>  
> -            if (!strncmp(buffer, "DOWN", BUFFER_SIZE)) {
> +            if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
>                  down_flag = 1;
>                  break;
>              }
>  
> -            if (!strncmp(buffer, "END", BUFFER_SIZE)) {
> +            if (!strncmp(buffer, "END", sizeof(buffer))) {
>                  break;
>              }
>  
> @@ -1020,7 +1020,7 @@ main(int argc, char *argv[])
>          /* Send result. */
>  
>          sprintf(buffer, "%d", result);
> -        ret = write(data_socket, buffer, BUFFER_SIZE);
> +        ret = write(data_socket, buffer, sizeof(buffer));
>          if (ret == \-1) {
>              perror("write");
>              exit(EXIT_FAILURE);
> @@ -1116,7 +1116,7 @@ main(int argc, char *argv[])
>  
>      /* Receive result. */
>  
> -    ret = read(data_socket, buffer, BUFFER_SIZE);
> +    ret = read(data_socket, buffer, sizeof(buffer));
>      if (ret == \-1) {
>          perror("read");
>          exit(EXIT_FAILURE);
> @@ -1124,7 +1124,7 @@ main(int argc, char *argv[])
>  
>      /* Ensure buffer is 0\-terminated. */
>  
> -    buffer[BUFFER_SIZE \- 1] = 0;
> +    buffer[sizeof(buffer) \- 1] = 0;
>  
>      printf("Result = %s\en", buffer);
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
