Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0ADF72008A6
	for <lists+linux-man@lfdr.de>; Fri, 19 Jun 2020 14:27:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726382AbgFSM04 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Jun 2020 08:26:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726201AbgFSM02 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Jun 2020 08:26:28 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7BFDC06174E
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 05:26:26 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id mb16so10006121ejb.4
        for <linux-man@vger.kernel.org>; Fri, 19 Jun 2020 05:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3qXtvOETXLzbqL/mN7wRlEjGJYiP/jFz5Vj6fCDdiEU=;
        b=pLUoGi6pk0KvKxmsH1oDhGaWFJt3lTwYKpy6cebKg8H+7U6lPxErhgSEYHfzonTl92
         s1vSadMFBO+6KvmqjZstxPnBWp1KZe+KeUX0l17w66+ltt2dT/QxDkoq92/NmGp4ecbB
         gVtqkrydI6ZOoCl6aKRrgS5xBBCk0E9TfAN8hWA9mehaYhaV4Ekjq5xsIohA91iK8IXy
         4Y2GWe2xT047HWy30Rz/UG4wOmG+4RKEMwvxUqNoQIsAmtK/McK0v2zI7US5kMR8GYmH
         lwAP9IrBotiaHCqowq/ua6/8+aJrtCyp/CCmu+iWMfd472p77RwkfVqBwnupq6T3da21
         eV/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3qXtvOETXLzbqL/mN7wRlEjGJYiP/jFz5Vj6fCDdiEU=;
        b=PRxOgkOO75JZiQ8yXNKHY9RIforqBmOznxICsPAGTAmbsBUHZauOtPsAZrUdXOBUH6
         0rbBphQmfzk1z4+Mj26km6V3akPIOIPYY0h3AHqu/JTtVYi0i1KDRytMsBXjEtmlfK+B
         PUeT/6+fdT6kHTe9KE5YDCMZ2URJs8NiW0ZIDrD1aCiBcW+KJRJhXYUdgGyCxM6bc5gj
         EaY0nOedzHPTMKmNJjZEXPWgkhwl26g8NuFbVYdOhsOufKh5bTmx1RPMFqdTN8Ma6qmL
         cRmqAcQeHWEQDzSRCQqutFyAOhl4ILVFS2rsh68QM+Vg0s1JU8UMKC28tlh3jx5qKC/X
         zdvQ==
X-Gm-Message-State: AOAM530RFhhRUqqsPRK23yEYfJ2ONR/F9/qR0dwXUJ5amZmPj9ST8fqx
        +BahcTqpRNv/oW7TIhkxYvUcGm3XEJo=
X-Google-Smtp-Source: ABdhPJxonAImCGciMG+C417S89brIK73OKv+fjRWtfokR8lr7YlqvLRUhgBJByMxe/EfM3LsF1U+kg==
X-Received: by 2002:a17:906:2a4d:: with SMTP id k13mr3552158eje.253.1592569585256;
        Fri, 19 Jun 2020 05:26:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id r6sm4755396edq.44.2020.06.19.05.26.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 05:26:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] atoi.3: Explain disadvantages of atoi()
To:     Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
References: <20200618204241.14476-1-arkadiusz@drabczyk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f2230a74-ceb3-a081-a328-129160289960@gmail.com>
Date:   Fri, 19 Jun 2020 14:26:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200618204241.14476-1-arkadiusz@drabczyk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Arkadiusz,

On 6/18/20 10:42 PM, Arkadiusz Drabczyk wrote:
> I believe new users should be discouraged from using atoi() and that
> its disadvantages should be explained.
> 
> I added the information that 0 is returned on error - although C
> standard and POSIX say that "If the value of the result cannot be
> represented, the behavior is undefined." there are some
> interpretations that 0 has to be returned
> https://stackoverflow.com/questions/38393162/what-can-i-assume-about-the-behaviour-of-atoi-on-error
> and this is also what happens in practice with glibc, musl and uClibc.
> 
> Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

Thanks. Patch applied. I also made a few small tweaks. The 
results have been pushed to master.

Thanks,

Michael

> ---
>  man3/atoi.3 | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/atoi.3 b/man3/atoi.3
> index c5894d3..3c6527a 100644
> --- a/man3/atoi.3
> +++ b/man3/atoi.3
> @@ -81,7 +81,18 @@ functions behave the same as
>  except that they convert the initial portion of the
>  string to their return type of \fIlong\fP or \fIlong long\fP.
>  .SH RETURN VALUE
> -The converted value.
> +The converted value or 0 on error.
> +.SH BUGS
> +.I errno
> +is not set on error so there is no way to distinguish between 0 as an
> +error and as the converted value.
> +No checks for overflow or underflow are done.
> +Only input in decimal base can be converted.
> +It's recommended to use
> +.BR strtol ()
> +and
> +.BR strtoul ()
> +family of functions in new programs.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
