Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F26C03BCA62
	for <lists+linux-man@lfdr.de>; Tue,  6 Jul 2021 12:45:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231391AbhGFKsP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Jul 2021 06:48:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231361AbhGFKsP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Jul 2021 06:48:15 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95E7BC061574
        for <linux-man@vger.kernel.org>; Tue,  6 Jul 2021 03:45:35 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id t15so22160282wry.11
        for <linux-man@vger.kernel.org>; Tue, 06 Jul 2021 03:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Fv1xtil1iP9EmusNbFh1yO0bVjU+KTlqzEQRye7c4sA=;
        b=Ir7NHj4VM9FQegXwx8kodpiEjdlARtIfYfE/+J8En4PY1fFmGwEtIRZsdvGA+sQ37F
         3Spnsozt9fQzngYh9bHWlf3lifvzDq8/r0WAn6BgqiqAvdCQbPXKtkjpXlzIJXoK125P
         HxNVnu22Fdlh9BtpRiN4z3BwrM+mwdbv8zIta39vZJlUH7cvXw0XW183oNxg2RNpkZJv
         Vcg7ATtIZ0Cqohu9WGq/+z4ibLI6NJIPWwK949LAqtLJjHpZZAFuKi9KO3UkkRnsTadw
         /ya21eAY5eVnObIsrPrqgU9sFIylHl1d/yUkvX6SpNw7z5eObaKtRxB04WnLoetdaaOp
         rBfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Fv1xtil1iP9EmusNbFh1yO0bVjU+KTlqzEQRye7c4sA=;
        b=OvLvGhxjPfDlPyMgkhG0xZnQCP8xHnWUOooJHmqjHaWxcxmP41Zv+SZYJUPIllOaAd
         +zmqgOFYrKUIfxus72rnS5I1bxUB1gK+cSTWSZfrod5XRE9IfGAx6mFCpIbmGhHVLuYH
         swif+hVjOnVzi6sAouORI0TOpOci026z8An0JdyP4uVwazIwKCa8LHja9UHkMLjCZhsr
         ot0563B6C0L33dc5w4gGp1auKDRMuQ7iUBLULqAVVO8860Y/FtWN8BHyTsdBBcUO7D3Y
         exnTu+FqEaThPjyG7pSwhUUcEr8/Ye/WoOkgBnY+ykOhys09A3l59Gk9zy5wNU/hciCk
         w89g==
X-Gm-Message-State: AOAM532yjKXq5SyB9vT7+FxaJjFre9PAfxE8grBGaPexpu9ol5P8vFbe
        5m5Dm/bOxQ48CntV46DFYPAQ9TjIS8g=
X-Google-Smtp-Source: ABdhPJxhTd1YFeW+LCSicH9IEgUfknDuoHxLCh6/35nP4tJvF8aALLAuY1RMsK53TcwMW5kwSDxTdw==
X-Received: by 2002:a5d:4cc4:: with SMTP id c4mr18262103wrt.128.1625568334208;
        Tue, 06 Jul 2021 03:45:34 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id n16sm180933wrr.73.2021.07.06.03.45.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 03:45:33 -0700 (PDT)
Subject: Re: [PATCH] ascii.7: add vertical rule to separate the two columns
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20210706101325.fz7y256cvyycefff@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c4de5243-a98f-8ea3-f906-1015c0a45509@gmail.com>
Date:   Tue, 6 Jul 2021 12:45:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210706101325.fz7y256cvyycefff@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ahelenia,

On 7/6/21 12:13 PM, наб wrote:
> I regularly get mildly lost in this table (and, indeed, didn't realise
> it had two columns the first few times I used it to look at something
> from the left column) ‒ separating the two columns improves clarity,
> and makes which soup of numbers belongs to which character
> much more obvious
> 
> Other encodings don't need this as they don't use double-columnated
> tables
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Patch applied. Thanks!

Cheers,

Alex

> ---
>   man7/ascii.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/ascii.7 b/man7/ascii.7
> index f1c0c8d74..053b13809 100644
> --- a/man7/ascii.7
> +++ b/man7/ascii.7
> @@ -48,7 +48,7 @@ C program \f(CW\(aq\eX\(aq\fP escapes are noted.
>   .ft CW
>   \}
>   .TS
> -l l l l l l l l.
> +l l l l | l l l l.
>   Oct	Dec	Hex	Char	Oct	Dec	Hex	Char
>   _
>   000	0	00	NUL \(aq\e0\(aq (null character)	100	64	40	@
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
