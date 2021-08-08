Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31ED53E3CBB
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:35:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232349AbhHHUf2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:35:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232108AbhHHUf2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:35:28 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20E2EC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:35:09 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id w13-20020a17090aea0db029017897a5f7bcso3000696pjy.5
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qAVrA7Y5rD8UmRPgrJDm0JDQX5vu0hVK7AoY9ThEtw4=;
        b=BMgSNh/jielHEBh2aqc56+TRKDft+E2Zq/r/jJ0BSXE4ujEzCheterIVaCl5tR+u5V
         DYv1AOq0tvghEY0beea12Pk2S/RDcQCKZMwFiL7TVs1osxeroI6vhdOToeswdP+zjgkT
         zWvsZ7cNo50xD0CjqQdpUfkZ73nhG/dbckRJBl7y1d6nNih8F+YpCpoKPfdp+Haz04jN
         FI43UGqbvgl1Pi8db0+TFbftWaYxFvNFR7L0tekE5p/75SVxW9NZdPlsUaHQo0aN7B5g
         zd4j2DZqbQkEnuzcjZ0mta2MoQwz7kEzVXyx8Wrd+Jh2sNPP8T6udAeVRAKRg1bvLvJz
         zlpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qAVrA7Y5rD8UmRPgrJDm0JDQX5vu0hVK7AoY9ThEtw4=;
        b=IY7HU2yNvqxnVHa9j05hTVItMgk4DcESOWKhe9FvoM3QqIO/I/mZT3PBTMtF9jQzpT
         eritD3ZPet78uhazJKDVz2MZqGEDkB5buch+L2pJBD3jJthe5bX76Ecw6vlyJYAW5sIN
         UPCSec0cO2/+lFQx76DJ4HO6ZMOjSI6RMMpAaxR/GHXFAVIz1BiQXNLiYwGsBbX3oJ2Q
         JSKIDsN3VvcKtO4JLun4/Gwntblrvx0uqjtG58iMK46j54TXxUS62DiPIk2zfjw5iW/l
         H7jOLqAsvh4SE7CZzWGAjZoWPtQP1vozYGCPqdRkAj2pW/QdPnhJvPeWKly2reX6CgBW
         QI5Q==
X-Gm-Message-State: AOAM533SWEKVtC13W4cfCrpg13M+eMLph4ED4DLk6HOZgcAc7Wl5yxKO
        GM2EPnWJ7DWRv9755ufmnPu3/HSYnLo=
X-Google-Smtp-Source: ABdhPJwGE8r3I0DhmB2RDapfc+lJNUACpERkj5smS6+cftDVXsYW1RCUaDNGMu4QG3KvFD944q5LnQ==
X-Received: by 2002:a62:1609:0:b029:3ab:afdb:acf3 with SMTP id 9-20020a6216090000b02903abafdbacf3mr20952379pfw.43.1628454908425;
        Sun, 08 Aug 2021 13:35:08 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id z9sm17406399pfa.2.2021.08.08.13.35.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:35:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 17/23] termios.3: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-18-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <898dfb87-39c7-f3d5-38cd-1d4b8142674c@gmail.com>
Date:   Sun, 8 Aug 2021 22:35:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-18-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> Format variable parts of words referring to a group of identifiers in italics,
> following groff_man(7) recommendations.
> 
> Also srcfix surrounding uses of \f escape sequences to use macros
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks for the clean-ups! Patch applied.

Cheers,

Michael

> ---
>  man3/termios.3 | 24 +++++++++++++++++-------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index 7023025e7..4fbd34a52 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -960,28 +960,38 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
>  .ft P
>  .fi
>  .PP
> -The zero baud rate, \fBB0\fP,
> +The zero baud rate,
> +.BR B0 ,
>  is used to terminate the connection.
>  If B0 is specified, the modem control lines shall no longer be asserted.
>  Normally, this will disconnect the line.
> -\fBCBAUDEX\fP is a mask
> +.B CBAUDEX
> +is a mask
>  for the speeds beyond those defined in POSIX.1 (57600 and above).
> -Thus, \fBB57600\fP & \fBCBAUDEX\fP is nonzero.
> +Thus,
> +.BR B57600 " & " CBAUDEX
> +is nonzero.
>  .PP
>  Setting the baud rate to a value other than those defined by
> -.B Bnnn
> +.BI B nnn
>  constants is possible via the
>  .B TCSETS2
>  ioctl; see
>  .BR ioctl_tty (2).
>  .PP
>  .BR cfgetispeed ()
> -returns the input baud rate stored in the \fItermios\fP structure.
> +returns the input baud rate stored in the
> +.I termios
> +structure.
>  .PP
>  .BR cfsetispeed ()
> -sets the input baud rate stored in the \fItermios\fP structure to
> +sets the input baud rate stored in the
> +.I termios
> +structure to
>  .IR speed ,
> -which must be specified as one of the \fBBnnn\fP constants listed above for
> +which must be specified as one of the
> +.BI B nnn
> +constants listed above for
>  .BR cfsetospeed ().
>  If the input baud rate is set to zero, the input baud rate will be
>  equal to the output baud rate.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
