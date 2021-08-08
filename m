Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A9793E3CBA
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:34:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231608AbhHHUec (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:34:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbhHHUea (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:34:30 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91509C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:34:11 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id pj14-20020a17090b4f4eb029017786cf98f9so26781430pjb.2
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Bc0PKiS6mkvkGWjpE+SN7gPyb199XI1/UwQy+RL6f/E=;
        b=oHS0mayZaVgZugkCcA2vR4yj0P1kJBhWy6WVxvzbM25cjxxQ87VDX5ipH14p5W0T6N
         uZDAyoLo26sULhOOOMOlRESCO/36EZvs1etaqmO2hluMqnPFpYzPjEOa55gifCWSFTzh
         n3f6zmyQMX//nh9KWKUgRolJ0eR6M8WZWhf3cFemclFSG3XYx/XFoCpouoxTxiulm5Ql
         Pj+ElNjZ92/dcsuF08Hs8qOExmNK6DQHpnj0zYzWhjcRaEDRXVL2R4H6JSF/jPypcRDc
         N1kSfVqKk+IpJoq3rPJfgaIRssNVFJyDmKmCwOeso4FP9hadaxgSQ2bE8NIMhQ+9Zc7p
         0ROg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Bc0PKiS6mkvkGWjpE+SN7gPyb199XI1/UwQy+RL6f/E=;
        b=YFW9phaJ8eWNO9CF9LnN4uXt1bkKfz1DWbsgCH5mZEgla/i4hGE5z29SeQoDPMG11V
         WNXpXoq+lvMZ/1FfukbVuP/D8WX9GEsTe1y7LTcozr5OskZju3MihHUoOqFWYE5xM1qU
         ZC6wWN3Bk2oJyf6Pc4pCiMgmgcIf2VJiGS213Nl1vKYJmziXBVJu13cCJDw0hB2+hdia
         teWU0oxKRmM1+7zWktT4apz99s3Qun5a+08iiOD/bzH57IX5wn5zu/lGhtbbO9yWgIUn
         IFu/lgseuterONNbLATA60cRZlcRs6/b06gM/01G7QeJxSx3UgX7aSBXuqBzGpL+P4b/
         G6eQ==
X-Gm-Message-State: AOAM530m+aXgqPtLSSL4wdpORuV2/jsfmPeTbgGYfwkwQIapRqUbl2QU
        Z8xlLCBzQOwx6Vml66ldunK/fTFbfRE=
X-Google-Smtp-Source: ABdhPJyaI74FaYZGRN5AgNz5oqQX+uU1nOBIk9odeekF46SDrYrNNI6WWz6ZQ/LOlSk7sQ79UIIl9g==
X-Received: by 2002:a62:150c:0:b029:3cc:e14:a533 with SMTP id 12-20020a62150c0000b02903cc0e14a533mr1966676pfv.80.1628454850907;
        Sun, 08 Aug 2021 13:34:10 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id ls16sm15562540pjb.49.2021.08.08.13.34.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:34:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 15/23] termios.3: Add information how to set baud rate to
 any other value
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-16-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0f2f7286-0c6c-81f3-6585-4ddb24cfceb0@gmail.com>
Date:   Sun, 8 Aug 2021 22:34:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-16-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pali and Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: Pali Rohár <pali@kernel.org>
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied.

Thanks,

Michael

> ---
>  man3/termios.3 | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index b7cdec507..7023025e7 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -968,6 +968,13 @@ Normally, this will disconnect the line.
>  for the speeds beyond those defined in POSIX.1 (57600 and above).
>  Thus, \fBB57600\fP & \fBCBAUDEX\fP is nonzero.
>  .PP
> +Setting the baud rate to a value other than those defined by
> +.B Bnnn
> +constants is possible via the
> +.B TCSETS2
> +ioctl; see
> +.BR ioctl_tty (2).
> +.PP
>  .BR cfgetispeed ()
>  returns the input baud rate stored in the \fItermios\fP structure.
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
