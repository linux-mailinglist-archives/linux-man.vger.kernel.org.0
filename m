Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49B1E4A3293
	for <lists+linux-man@lfdr.de>; Sun, 30 Jan 2022 00:18:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241111AbiA2XSW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jan 2022 18:18:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238951AbiA2XSV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jan 2022 18:18:21 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEFB6C061714
        for <linux-man@vger.kernel.org>; Sat, 29 Jan 2022 15:18:20 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id u15so18051668wrt.3
        for <linux-man@vger.kernel.org>; Sat, 29 Jan 2022 15:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wGOsFJS4fayC8vYrP5hG58QwP5YmZ5zLG7v6LX4XOQk=;
        b=S5oMyozM1ZyyQ+8Lqneo6OdFupokeX5KMBDjC4D9vAlps6c+DcxhK6Bi3b/HyX8lZ4
         PQr6B/ekaoRUv5L1HMfr8WEijUj9GUn2ZHBxayMsvGlLEUiWzmVFocgcBbsXWbabPpUN
         kwp2HTAUrOh9dZOdnidOKWOTt7d6zATl5whxgN0xn9+0b1bN8QYIMI/2pcB/6NmmXXb8
         +hLuXcPKEJ/+H7VGQQ+IoqCHToXqruiJ2cU9JI7FyYow3g180QLCW35IcdyZ/83D0Cuj
         8rs/RIMIywSZgFsGQ+LGKSiqK7vBVSQqdvRErUViWpkwylOTX816DUawdFrpywMxs1sU
         Z25A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wGOsFJS4fayC8vYrP5hG58QwP5YmZ5zLG7v6LX4XOQk=;
        b=3lql+SFjHwoLLYaiCFbSxz8uRhiMK3EToTeMRET6EcZ4spCLn9dquIRRLZ9uI9jLLa
         meV0v+HpipB7Trvhuli6V+1Va7OzETxHeSpSEL1vXLc4tYadPehZBf0Clg569SnAxkKG
         c0hFPBSYerAes4n5pS6uDt2Ym71ErkpNrCcVRWlrQXtwttkbExoXJ9DEXt8XWwsGJSoC
         9wdGT1bOZbbW5Ts9fQvERjw2OWfsU617NFJITnHu+ltGOikkykoQzvjmF+SjpPoS8PHW
         pAgdre82vHMYNK42HCX4RWrDS9kBETdKR1Nc4Y8CYo956lnDq0WSAQytE1PJcKRfC7lG
         mt1w==
X-Gm-Message-State: AOAM532f0hI4GfbObHO2gR9cv+g02wdLKsHJxgO1+0lNb2UO4cx5WVC/
        CrzSBnzW/3p80/94y2y44ON9hJG6qo0=
X-Google-Smtp-Source: ABdhPJyayS30+r36rDez2g7qQxlqgbiPwimXiQcQ38dnX0J0bFWUM7/EgNQZFb8Oll7Us2wsWP6BNw==
X-Received: by 2002:a5d:4882:: with SMTP id g2mr12142991wrq.393.1643498299131;
        Sat, 29 Jan 2022 15:18:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t4sm5260954wmj.10.2022.01.29.15.18.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jan 2022 15:18:18 -0800 (PST)
Message-ID: <71939c33-155a-1af9-db39-fd35594cb4e3@gmail.com>
Date:   Sun, 30 Jan 2022 00:18:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH v2 1/2] time.7: tfix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <5b73149f-ff52-e0d9-fead-0fe2338b40cb@gmail.com>
 <0a60b9e43ced4b05e740f1382d497258212d4be8.1643496350.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <0a60b9e43ced4b05e740f1382d497258212d4be8.1643496350.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/29/22 23:59, наб wrote:
> "HZ" is the constant, and has nothing to do with the
> 50 Hz PAL/60 Hz NTSC mains frequencies
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---

Patch set applied.

> Without doubt the frenchest thing I've read this year, and, IMO,
> a really untoward moral high horse from a document that double-spaces
> compound punctuation and calls the English Index "Index English";

I hadn't noticed the double-spaced thingy; quite weird, this document
is!  xD

> 
> (Also, hilariously, Annexe 2. Réalisation pratique des définitions des
>  principales unités est publiée uniquement sous forme électronique sur
>  le site Web du BIPM, but it's 404ing just 16 short years after
>  publication, which is very cool considering it's an /internal link/.)

Yup.  In version 9, they opted for a simpler thing (for the editor, not
for the reader): remove the link, and say it's somewhere on their
website :/.

> Nevertheless, I find it difficult to disagree in this case,
> spaces before the Hz do work better in this parenthetical
> (but I want to note that this is becasuse you pointed it out,
>  not because the French talked sense into me).

:-)

Cheers,

Alex

> 
>  man7/time.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/time.7 b/man7/time.7
> index 830da7ea8..69d72af04 100644
> --- a/man7/time.7
> +++ b/man7/time.7
> @@ -92,7 +92,7 @@ configuration parameter and can be 100, 250 (the default) or 1000,
>  yielding a jiffies value of, respectively, 0.01, 0.004, or 0.001 seconds.
>  Since kernel 2.6.20, a further frequency is available:
>  300, a number that divides evenly for the common video
> -frame rates (PAL, 25 HZ; NTSC, 30 HZ).
> +frame rates (PAL, 25 Hz; NTSC, 30 Hz).
>  .PP
>  The
>  .BR times (2)

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
