Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DFFA317262
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 22:31:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232231AbhBJVb1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 16:31:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232024AbhBJVav (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 16:30:51 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8841DC06174A
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 13:30:06 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id bl23so6747311ejb.5
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 13:30:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3E8d4iR8HrA2s6l/++iu4/+A8Fe/JE8PIStX3jHl7TI=;
        b=IJFfBQkbsLvLreku591t6BQ2gB7RzH0yVGUvLY6P10xCR0pK7wJvXk8XkeXgF/F80s
         IRsEAKqp8IV7qBTw2yI1hJCTIzJ9QY9pLcsgLs8zMZo5QonnmL6mw0HGybEIf15VZN3v
         P2j9Caad/+emRK+pY5PmJvQHQWRv4Ii+ujtQYwZ0QU5Y6GTxDTzwhjKZH4tEzf/3icoS
         mszv0dXwJ/mKNq2Teta58bOfT4lLcA0pZqa9VUA/hXUOBn94j9FJv8GA3oc6YHjmoe7e
         GXgapFTM37mQqPIh2ryVLpnKNKMH59ihZwO/xE/BG7Z5pnqlcsOA9i6B/eBA/6Pu6RzQ
         eZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3E8d4iR8HrA2s6l/++iu4/+A8Fe/JE8PIStX3jHl7TI=;
        b=erD3tQpRNF62e6GbJJ4by7nrIz17wPI7lUxUvL51/mZhS6MyX0QSoVj3ZwExOUpzNp
         4eFuWbn5p/k6SW6bC0Rx8koc8O+2a9EE6YWpbIfRlzQ+Ha4exHrONEddD8qQzxV3nXhO
         TBrEoTqVA3r9oOfzaGy8u9KzY+UZ67Iqk8gJMz339Q9y/YU2rCNef7gWJM7liWclO6yt
         xwtEZg+p5gHtOVlHFxuYDRMRQ8q75gJFOO5qPgRtIyHrin8tC8x5kn5JnEobgbdbF1x7
         oQO9KgEtoT5BNgxwWaBTKk3uHEjjJ32MQWqB3y+Qz8q5dmYL/O8gQWWs8bz5bII3j47q
         aG4A==
X-Gm-Message-State: AOAM533QVsxNS+wb6BQNDgC4OfkUOhw28soaXFJx//TGC2uKHsEET/hs
        KuPsBelUId3ktIilrhJ7K/KDSV2qxK5VIg==
X-Google-Smtp-Source: ABdhPJzEllMuuoc7c3JTFRMnjxkdfZRbhcCo2eU6Gp5tC6qIwfltfcnWlK2wvYcx6XdqCKFKrDa2IQ==
X-Received: by 2002:a17:906:5e59:: with SMTP id b25mr4991977eju.536.1612992605038;
        Wed, 10 Feb 2021 13:30:05 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id k6sm2186987ejb.84.2021.02.10.13.30.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 13:30:04 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: queue.7, stailq.3, (simpleq.3): Document SIMPLEQ
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <f03cd3b3-8a47-3ec1-2d17-2760545c7b62@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <126f8047-ffa0-340f-1cf2-458f02c3150e@gmail.com>
Date:   Wed, 10 Feb 2021 22:30:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <f03cd3b3-8a47-3ec1-2d17-2760545c7b62@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/10/21 4:06 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> When I refactored queue.3, I found out that there was no documentation
> for SIMPLEQ.  I didn't do anything about it because I've never used it
> and didn't understand what it was, and more importantly why.
> 
> Now I found out that it only exists because of historical reasons [1],
> but it is identical to STAILQ (minus a missing SIMPLEQ equivalent for
> STAILQ_CONCAT()).  So I'd add links simpleq.3, SIMPLEQ_*.3 -> STAILQ.3,
> and add a paragraph to queue.7 and another one to stailq.3.
> 
> What do you think about the following?

I think the proposed patch is okay. Do you want to send me
a final version?

> 
> Also I don't know if we should encourage one of them.  STAILQ seems to
> be more complete.  What would you do about it?

Not knowing, I would say: let's say nothing for now.

Thanks,

Michael


> [1]: <https://gitlab.freedesktop.org/libbsd/libbsd/-/issues/5>
> 
> ---
> 
> $ git diff
> diff --git a/man7/queue.7 b/man7/queue.7
> index f92887a36..c3facafd0 100644
> --- a/man7/queue.7
> +++ b/man7/queue.7
> @@ -138,6 +138,15 @@ Not in POSIX.1, POSIX.1-2001, or POSIX.1-2008.
>  Present on the BSDs.
>  .I <sys/queue.h>
>  macros first appeared in 4.4BSD.
> +.SH NOTES
> +Some BSDs provide SIMPLEQ instead of STAILQ.
> +The interfaces are identical, but for historical reasons
> +they were named differently on different BSDs.
> +STAILQ originated on FreeBSD, and SIMPLEQ originated on NetBSD.
> +For compatibility, glibc provides both sets of macros.
>  .SH SEE ALSO
>  .BR circleq (3),
>  .BR insque (3),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
