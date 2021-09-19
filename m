Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7861B410D2E
	for <lists+linux-man@lfdr.de>; Sun, 19 Sep 2021 21:46:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231738AbhISTrs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Sep 2021 15:47:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbhISTrr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Sep 2021 15:47:47 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17293C061574
        for <linux-man@vger.kernel.org>; Sun, 19 Sep 2021 12:46:22 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id y132so11478434wmc.1
        for <linux-man@vger.kernel.org>; Sun, 19 Sep 2021 12:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5VmmLxBPG2ZWw5TzJVyOWkm375Y6Eoc+CbFL6SzWCPY=;
        b=nAZNL/UMjkWWLnC/bkHNvknOAKJjsrednouSKwZNoLcQZVIh4JtIHvBHDqbQAyZ5iw
         yTm7MCKE5gJ/eFBwOtiDcd4PdvpjrD2taz/G7jqOAATcs/hoJwBfnbLO0lNOlilKfkYw
         eqpRh/uxxFyPonX4IN6d3pbJDxu1erOIlfSr6b665SM8mIp9We3rw819+iqFfsz70nzr
         ZE9YSfaHywyFzoDtzpxLI5rkm/XN4az5uDoluDB3FaUsDtYTqEUjVAsLXhi4i+sUxlk7
         6lM+LbKLyra0E+M6gj6F40NAGhQ/0nhO8gqjzJ1dzqoNNMh6ydYI/QFG46T+z1GbIcJX
         dkbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5VmmLxBPG2ZWw5TzJVyOWkm375Y6Eoc+CbFL6SzWCPY=;
        b=UGz97rZa9RwcD8xNtD+KDAuFOjoVwyTPbT/KMIJf+FEjHz/nxSb9sk+gZIp1MDnKol
         8YY3EuPu0Tm1XJ9QV16sN7/oYDzEZfEvjEkl2XvXDuk7ypRoIYO8u7tWwh/CYwZ+ZT52
         J5FTKYQXOZ9lSyjRZG+qunfLOoQOuOdbtfwmVzkWe6tM0iLW3C8AtHg92ZoZs3eYS7TS
         HaXJHaCH0pRlQxcTdaJedoQuYMObGSxwgEZyzJ8rSkYCyZHUmu8g0nOCt+ckzv1HsB9C
         MUeZK8pbSXM9l1w2D97Odk0jQnXq4hZiKKCO2YerOdaMjUtVy/GOGdedRfg1ynck8IRc
         nMDA==
X-Gm-Message-State: AOAM533D9sFa0G+Pj3IpMHntO6Wlw3NrPh2Za8V1BVwlk8hL5WzWGhc0
        cnE5Hrvfl/G+6GRsR7leALukvV0aVaI=
X-Google-Smtp-Source: ABdhPJwv+8gWBU4wdYtWoRRW1POOSufa4s5zgigwUbjYIK2fR005afHSgZ3xDnIXEbEvHZ6rCkcBHQ==
X-Received: by 2002:a05:600c:4f95:: with SMTP id n21mr25649437wmq.22.1632080780606;
        Sun, 19 Sep 2021 12:46:20 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u13sm13763885wrt.41.2021.09.19.12.46.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Sep 2021 12:46:20 -0700 (PDT)
Subject: Re: [PATCH] listxattr.2: tfix
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20210919181236.kz5zeam2vxb7rkui@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a09da838-3def-81f3-728e-a4365e4cd5bc@gmail.com>
Date:   Sun, 19 Sep 2021 21:46:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210919181236.kz5zeam2vxb7rkui@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, наб!

On 9/19/21 8:12 PM, наб wrote:
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

I applied a different patch, but thanks for the report!

> ---
>   man2/listxattr.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/listxattr.2 b/man2/listxattr.2
> index 18d008e04..cdd0ba7bb 100644
> --- a/man2/listxattr.2
> +++ b/man2/listxattr.2
> @@ -167,7 +167,7 @@ As noted in
>   .BR xattr (7),
>   the VFS imposes a limit of 64\ kB on the size of the extended
>   attribute name list returned by
> -.BR listxattr (7).
> +.BR listxattr (2).

+.BR listxattr ().


See man-pages(7):

        Any  reference  to  the  subject of the current manual page
        should be written with the name in bold followed by a  pair
        of parentheses in Roman (normal) font.  For example, in the
        fcntl(2) man page, references to the subject  of  the  page
        would  be  written as: fcntl().  The preferred way to write
        this in the source file is:

            .BR fcntl ()

Cheers,

Alex


>   If the total size of attribute names attached to a file exceeds this limit,
>   it is no longer possible to retrieve the list of attribute names.
>   .SH EXAMPLES
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
