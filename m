Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9946720293A
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2020 09:03:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729394AbgFUHDI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Jun 2020 03:03:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729374AbgFUHDI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Jun 2020 03:03:08 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 334FDC061794
        for <linux-man@vger.kernel.org>; Sun, 21 Jun 2020 00:03:08 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id l10so13563458wrr.10
        for <linux-man@vger.kernel.org>; Sun, 21 Jun 2020 00:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=feMec/GXC8/AqRvkhfzzJ2lZdCZZyA7WMX32AjeBC/Y=;
        b=GdvCbWSAojyozYIKDIKU//dtqg9JUwhmdDtAJQemXBkj7OWD0JqtnJpSzq5kYWynY2
         3nGSXIAUkNO2g91BR205ICGrSzm2vRaoSolZg92appntDdiXh4aqnkVcsI7i/YIGYZ9A
         3NXnMs/MLRaGL0qTQJ5HNPEXu7IA2YLWyEFMAsul9hJq6O2dw/xmP9wMI2g+P73itC8h
         W2PzHhQoM9joawPmgQnnY7RA2k1txRECcOSkOFLjVf+qfsMDZRZUAmf1eEqFmU055Haa
         C0soZvuuvQYPJDk0S0Y0U9YhCE4ZIOL1wl7/heNRUvOwvk+YO4Yu3K63WrGz9+FqOceI
         D+Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=feMec/GXC8/AqRvkhfzzJ2lZdCZZyA7WMX32AjeBC/Y=;
        b=XebKqkv/RZZGHZU0ZRzz6xDPqAFgY1Nzxdtx4WLhTrs7a78nmqGh8zuKYYdeuymYzY
         ieQlcIae0rAhJShZmG7pMNl8eYtrA4ZEN5hKFvVY+Yu9qcCN+KPRUEUPkzMQY/Ycxtdd
         zk0lFHV1sJHwra9oLo2g/I7CCtl5tu6g+PsuQPoN/13NcZwi2xI6C1h2OFy4Q4QLAIaE
         rOjWHC5W4fbEzTigkVdKuyyq7nzmT6lyLlhu1eiqsWk15oV5XtnuR/nSh0jho4ke24ju
         51Df5ga1AJNizScgmTHd3q4saP4ZQ/E3ldUdcxjB2XgASLp4tTOIJLbIj5NHPa7GY6Vs
         D8Cw==
X-Gm-Message-State: AOAM53154lfdpatI1oktfgv2v5oV8xvP5qY3C7CBOy0w9FLyDACcR+JG
        dHaeJcvcCMiZE/csXGeFEnlu9xdd
X-Google-Smtp-Source: ABdhPJxRiTMCKOvNzRZwpbYEjVqS4Edlb4Qc5HYle4dAeJWZwlXmRRhNKF96x9AntIJLWxE2+n04xA==
X-Received: by 2002:adf:9205:: with SMTP id 5mr12045551wrj.232.1592722986728;
        Sun, 21 Jun 2020 00:03:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id 104sm12855617wrl.25.2020.06.21.00.03.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jun 2020 00:03:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man7/*: srcfix, trim trailing space
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200620170639.GA23494@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fc5fd564-24bd-8f66-0852-e1c781303df9@gmail.com>
Date:   Sun, 21 Jun 2020 09:03:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200620170639.GA23494@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bjarni,

On 6/20/20 7:06 PM, Bjarni Ingi Gislason wrote:
>   Trim tailing space in "strings".
> 
>   There is no change in the output from "nroff" and "groff".
> 
> ###
> 
> Output is from: test-groff -b -mandoc -T utf8 -rF0 -t -w w -z
> 
>   [ "test-groff" is a developmental version of "groff" ]
> 
> troff: <attributes.7>:510: warning: trailing space
> troff: <attributes.7>:512: warning: trailing space
> troff: <attributes.7>:513: warning: trailing space
> troff: <attributes.7>:516: warning: trailing space
> troff: <attributes.7>:649: warning: trailing space
> troff: <attributes.7>:681: warning: trailing space
> troff: <attributes.7>:720: warning: trailing space
> ####
> 
> troff: <environ.7>:181: warning: trailing space
> troff: <environ.7>:182: warning: trailing space
> ####
> 
> troff: <ip.7>:820: warning: trailing space
> ####
> 
> troff: <signal.7>:316: warning: trailing space
> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> 
> ####


Thanks. Applied.

Cheers,

Michael

> ---
>  man7/attributes.7 | 14 +++++++-------
>  man7/environ.7    |  4 ++--
>  man7/ip.7         |  2 +-
>  man7/signal.7     |  2 +-
>  4 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/man7/attributes.7 b/man7/attributes.7
> index 4c20c0919..1c8a464b0 100644
> --- a/man7/attributes.7
> +++ b/man7/attributes.7
> @@ -507,13 +507,13 @@ synchronization.
>  Unlike
>  .IR race ,
>  which causes both readers and
> -writers of internal objects to be regarded as MT-Unsafe, \" and AS-Unsafe,
> +writers of internal objects to be regarded as MT-Unsafe,\" and AS-Unsafe,
>  this mark is applied to writers only.
> -Writers remain \" equally
> -MT-Unsafe \" and AS-Unsafe
> +Writers remain\" equally
> +MT-Unsafe\" and AS-Unsafe
>  to call,
>  but the then-mandatory constness of objects they
> -modify enables readers to be regarded as MT-Safe \" and AS-Safe
> +modify enables readers to be regarded as MT-Safe\" and AS-Safe
>  (as long as no other reasons for them to be unsafe remain),
>  since the lack of synchronization is not a problem when the
>  objects are effectively constant.
> @@ -646,7 +646,7 @@ called concurrently with locale changes may
>  behave in ways that do not correspond to any of the locales active
>  during their execution, but an unpredictable mix thereof.
>  .IP
> -We do not mark these functions as MT-Unsafe, \" or AS-Unsafe,
> +We do not mark these functions as MT-Unsafe,\" or AS-Unsafe,
>  however,
>  because functions that modify the locale object are marked with
>  .I const:locale
> @@ -678,7 +678,7 @@ environment with
>  or similar, without any guards to ensure
>  safety in the presence of concurrent modifications.
>  .IP
> -We do not mark these functions as MT-Unsafe, \" or AS-Unsafe,
> +We do not mark these functions as MT-Unsafe,\" or AS-Unsafe,
>  however,
>  because functions that modify the environment are all marked with
>  .I const:env
> @@ -717,7 +717,7 @@ GNU C Library
>  internal data structure without any guards to ensure
>  safety in the presence of concurrent modifications.
>  .IP
> -We do not mark these functions as MT-Unsafe, \" or AS-Unsafe,
> +We do not mark these functions as MT-Unsafe,\" or AS-Unsafe,
>  however,
>  because functions that modify this data structure are all marked with
>  .I const:sigintr
> diff --git a/man7/environ.7 b/man7/environ.7
> index cd4d884d1..3d654b77f 100644
> --- a/man7/environ.7
> +++ b/man7/environ.7
> @@ -178,8 +178,8 @@ influenced by the presence or value of certain environment variables.
>  Examples include the following:
>  .IP * 3
>  The variables
> -.BR LANG ", " LANGUAGE ", " NLSPATH ", " LOCPATH ", "
> -.BR LC_ALL ", " LC_MESSAGES ", "
> +.BR LANG ", " LANGUAGE ", " NLSPATH ", " LOCPATH ,
> +.BR LC_ALL ", " LC_MESSAGES ,
>  and so on influence locale handling; see
>  .BR catopen (3),
>  .BR gettext (3),
> diff --git a/man7/ip.7 b/man7/ip.7
> index 834f6465b..86b7ed22e 100644
> --- a/man7/ip.7
> +++ b/man7/ip.7
> @@ -817,7 +817,7 @@ address is
>  .B AF_UNSPEC
>  when the source was unknown.
>  When the error originated from the network, all IP options
> -.RB ( IP_OPTIONS ", " IP_TTL ", "
> +.RB ( IP_OPTIONS ", " IP_TTL ,
>  etc.) enabled on the socket and contained in the
>  error packet are passed as control messages.
>  The payload of the packet causing the error is returned as normal payload.
> diff --git a/man7/signal.7 b/man7/signal.7
> index e53f38a7c..f6868e38b 100644
> --- a/man7/signal.7
> +++ b/man7/signal.7
> @@ -313,7 +313,7 @@ and
>  cannot be caught, blocked, or ignored.
>  .PP
>  Up to and including Linux 2.2, the default behavior for
> -.BR SIGSYS ", " SIGXCPU ", " SIGXFSZ ", "
> +.BR SIGSYS ", " SIGXCPU ", " SIGXFSZ ,
>  and (on architectures other than SPARC and MIPS)
>  .B SIGBUS
>  was to terminate the process (without a core dump).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
