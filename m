Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9C3625D283
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 09:36:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726114AbgIDHgh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 03:36:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726089AbgIDHgh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 03:36:37 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5A0AC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 00:36:36 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id w5so5685507wrp.8
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 00:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8zBxPvSPG/rb/D+3a+wHns8Qz4HoT6/ooAHxoQdG8FU=;
        b=c2hrM05JeQRxiq4An0LMQEwMgGHNQL5wholwpkt+G7mZXJxSISmESbqmTKfzP9h6pM
         I3RYI9fzvmGPW1hikWiyekGra4efR1tKB1hKwxIF8plKEJDIXDuqsj68BG0BohY5rgbq
         DKNSAtfLXcxjJq++4kmewzll9qjMzKqc9fH0NnfT1kfAZtncITWiA0J3bTLWj65l+Gqu
         +AQK/14AqfGDghEjzPYLSKPRyBDPD2SxcSboyVU8el7rdwb1mXWkf8hQcRMDgCx2kFRP
         ixm6eLhtEBVqOYzszWbJROKBenjVRck+nqVQeDCjeqY0n8SMmCi0DeKSzKbngJpwF/uB
         GY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8zBxPvSPG/rb/D+3a+wHns8Qz4HoT6/ooAHxoQdG8FU=;
        b=XelS1Qif/a9f4Q05S0gGTgmQZ3ejxNuAJd6FKSDG+61e5YFRcCqjs1QcscsoEB4Phg
         bTdMKEnpLwkC7DRF3AZfz2qKk1nOspDNOJSxqizDfoiwxw36pWTIFXJJn2jSgvqWze4v
         BhCYYBFfLqORDKhvl0McTcdiZofA+uLl9pxChF5uxV5bjVEQHcL1xeQysBOnDgFaHz0S
         vaJSqtupkNgVdfCFJAd9PWiWpnTJbhOlY7T6eTLJFtWxTI5+gI3KrxDkZ5job8QcXIbU
         YWnCXYGwKmvy+TIAKlvfwhgSduNrVFrBIJWF7NSvcbeQuJ9ySAX9KSPKwfDIMyVroP7d
         MTVQ==
X-Gm-Message-State: AOAM533YW5mZ7WtIZss1lsKiqP3EcY7txg6wUB2Q+xJtZi7OyI4NVCht
        jeAeISYLKT5E61IBghKnHzzOeZLHusk=
X-Google-Smtp-Source: ABdhPJxTzvs1wMDwW1TKgpAEzVeBLugQfV+Z1vgdmyToioHV0RwEo0abBfpYDZ7iHaJSgOEpSJ44QQ==
X-Received: by 2002:adf:e7c8:: with SMTP id e8mr6585853wrn.358.1599204995258;
        Fri, 04 Sep 2020 00:36:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id u6sm8867671wrn.95.2020.09.04.00.36.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:36:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] unix.7: wsfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200903201704.1076363-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3e3d8b11-a995-2727-2aec-4cad71222c3a@gmail.com>
Date:   Fri, 4 Sep 2020 09:36:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200903201704.1076363-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/3/20 10:17 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> This is my second patch with git send-email.
> It is really simple.

:-)

> Just testing a message :)


Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/unix.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/unix.7 b/man7/unix.7
> index 5283a1e58..86a35be7b 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -1089,7 +1089,7 @@ main(int argc, char *argv[])
>      addr.sun_family = AF_UNIX;
>      strncpy(addr.sun_path, SOCKET_NAME, sizeof(addr.sun_path) \- 1);
>  
> -    ret = connect (data_socket, (const struct sockaddr *) &addr,
> +    ret = connect(data_socket, (const struct sockaddr *) &addr,
>                     sizeof(struct sockaddr_un));
>      if (ret == \-1) {
>          fprintf(stderr, "The server is down.\en");
> @@ -1108,7 +1108,7 @@ main(int argc, char *argv[])
>  
>      /* Request result. */
>  
> -    strcpy (buffer, "END");
> +    strcpy(buffer, "END");
>      ret = write(data_socket, buffer, strlen(buffer) + 1);
>      if (ret == \-1) {
>          perror("write");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
