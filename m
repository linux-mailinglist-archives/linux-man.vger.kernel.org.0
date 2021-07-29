Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FAFB3DA201
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 13:21:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234535AbhG2LVr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 07:21:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231834AbhG2LVr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 07:21:47 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B384C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:21:43 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id f18-20020a05600c4e92b0290253c32620e7so6348479wmq.5
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 04:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Dwweqb2u/ntKlGkFMuwODyJ6UpAyTMCn7uC84fODIKw=;
        b=u1vUIOwAK/kosDk9cjzWTTEMvQTIxLOdXsjnPvCJMZK+utqvhgjVIW2DWnMCyUnv2m
         nRevZJLFAc+qTJ+1FgNpWKvCyaSl7hGzP2Se1LOOATHnm+HPGqOyZTAcfuowZQzRSQgD
         gEyr4JpZcLVBixqUP7KgQ5AoQKHsDWb0EwCG3nH+xHc64oqJc/WJky7S1TF+Ec4LG7Bu
         6WFcAutedojeOVTz5Q51tPLeTf5cetRS6n7OBsSleFbGv6u83bY/AB2Kp0sfQL7wzCg8
         B/qu6oP+7ogX7oN+UC7eNYSvAZyrNY4RBoG8HVKlKoyxjtltLcV0wNZKo4saJqRl2UKe
         z7Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Dwweqb2u/ntKlGkFMuwODyJ6UpAyTMCn7uC84fODIKw=;
        b=W2VdRIrMAYkQu27LsaslFW+nxTm/tj7oxk7ksfXAC5k1mknrkA3g7m2WL/K9CLZCSN
         z13VlOosimZQ4LiMG+AOzjHg2rEb4yxi64G6KeTWHUvJKTTJmQIup9+qrv9RKUfPm/w/
         XEqeRtaHPGUnOodRwR+U5lliZxy36mAuRy0zUhTMEbtcTeac4X8MRc32E/uuPLRdCpzU
         tddQ3Gz59t0mTGMXIkaPNBucphcPyTdP3CxJcz77RxtxWp+6bhoJ6oWpwEMC3YcmrAMV
         CpdomRgvIDhXPxXmEYw9SIUMt39PgRJxheML/JJvQjT+WAfaHb//qQhDY6cs85W8EJ1J
         XGkg==
X-Gm-Message-State: AOAM531F6MdjO5yb9kFgWENg88TJ5e7884zwk/b7lobzE4sj+G2tg7jA
        1BrDD9sEpOVCdsXuQt/dTW8NNvakhKM=
X-Google-Smtp-Source: ABdhPJzoCygTkVJ51dKYEXvCK4zmnmtEmF+SaCWNu/qQxKJUrKst14XfxkHAjQ6l0Eda5Z8aTAGawQ==
X-Received: by 2002:a1c:f705:: with SMTP id v5mr14084309wmh.69.1627557701878;
        Thu, 29 Jul 2021 04:21:41 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id j1sm8453679wmo.4.2021.07.29.04.21.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 04:21:41 -0700 (PDT)
Subject: Re: [PATCH] termios.3: Use bold style for Bnn and EXTn macro
 constants
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
References: <20210725225453.7341-1-pali@kernel.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <430eaca8-3ea9-5df9-8db5-5d94bcb06815@gmail.com>
Date:   Thu, 29 Jul 2021 13:21:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210725225453.7341-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 7/26/21 12:54 AM, Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>
> ---
>   man3/termios.3 | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index 01c20994424d..e603879e18d4 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -1068,8 +1068,9 @@ and
>   are nonstandard, but available on the BSDs.
>   .SH NOTES
>   UNIX\ V7 and several later systems have a list of baud rates
> -where after the fourteen values B0, ..., B9600 one finds the
> -two constants EXTA, EXTB ("External A" and "External B").
> +where after the fourteen values \fBB0\fP, ..., \fBB9600\fP

Could you please use .B and/or .BR instead of inline \fB...\fP?

See this extract from man-pages(7):

        Any  reference  to  the  subject of the current manual page
        should be written with the name in bold followed by a  pair
        of parentheses in Roman (normal) font.  For example, in the
        fcntl(2) man page, references to the subject  of  the  page
        would  be  written as: fcntl().  The preferred way to write
        this in the source file is:

            .BR fcntl ()

        (Using this format, rather than the  use  of  "\fB...\fP()"
        makes  it  easier to write tools that parse man page source
        files.)


Thanks,

Alex

> +one finds the two constants \fBEXTA\fP, \fBEXTB\fP
> +("External A" and "External B").
>   Many systems extend the list with much higher baud rates.
>   .PP
>   The effect of a nonzero \fIduration\fP with
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
