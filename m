Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E3863B6AF7
	for <lists+linux-man@lfdr.de>; Tue, 29 Jun 2021 00:31:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234746AbhF1Wdb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Jun 2021 18:33:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232323AbhF1Wda (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Jun 2021 18:33:30 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAA4EC061574
        for <linux-man@vger.kernel.org>; Mon, 28 Jun 2021 15:31:03 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id g198so4536565wme.5
        for <linux-man@vger.kernel.org>; Mon, 28 Jun 2021 15:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=t/MUgb55lN7CBeHr5tAo70odNqFzgjtnRMMiO311pO8=;
        b=lcRpsAA8xWyjrDpHInUYTs5VRSjQ3HgU62dCjNO5uqQQI0cFZQPwL8LuSrYAde2Azm
         3aeJNplaRaibPRGOSh+fnhvBCZdpuwVHEAhCKYvQwYIQkEs1IwawhCA7Xm8mYqc5b3GV
         Rpcr6cGHzD+zHW2/YZo0JPpIZ8OjHAD4JUaQUmVOsWpmwFsr1yH/s9PumQolfRxtHipP
         k4M/W5BfaAWXcFyWe3PbRrC7GbRjRvrFXBrDgp77rZBCbLERe2IUvRkr46t5GueHoJiV
         zMxLfdk4xKmebCHFNv5vSma7lnAipz6lpqH3kaHRhL9dHLi/d0vM3MtkR+tl7jSXTYnp
         cJcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=t/MUgb55lN7CBeHr5tAo70odNqFzgjtnRMMiO311pO8=;
        b=LrKsikUyARF705q79j5zQi73TMP3RnUdTP0nWI/gpqCekvbSLrpG0FzqiPAhYT/Y4l
         yAh+wLPjZSbV4y3Xv8BpWJJsOqpDfTvdiJgdKbOztMsTBwmQfVjydyN9nuCk9roMmrKk
         WwxTUUU/eFcoM0UMl/jdbxuVzIgTl05Sah2ALDhggTrSlv3xx9A1/ptKvxAh9H+vXdiN
         YTBlfF4cXkX3lf8wbaPRDmUbpqTrw+XMuYzlaZ/l4chwPSn9pQnl6OIiiasbbSIIWnh5
         d/9T5OazDHFdkdA0mcjy9p9FgXjy4tOV04dFWwh4IDyDnmanDc9er/BzsqvkXGgz+9gX
         FzKQ==
X-Gm-Message-State: AOAM532/7L9x78hEQLZ20QiYFXvsc0+Dm6C60v6Wla/nV520AoFUQ8LG
        C2FRA6jFbRgx+6ZWC9wD9aIyS0SMxCQ=
X-Google-Smtp-Source: ABdhPJx0WgXje7saGsLv2ZPQRUQNCaC7LFGMU6QywuSGJ3ga+LExNGl3bfNQsJ3JDxErjM8ecSwutA==
X-Received: by 2002:a05:600c:3b28:: with SMTP id m40mr28456822wms.99.1624919462411;
        Mon, 28 Jun 2021 15:31:02 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c7sm16017508wrs.23.2021.06.28.15.31.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 15:31:02 -0700 (PDT)
Subject: Re: [PATCH 2/2] readv.2: Minor tweaks to Will's patch
To:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Cc:     Will Manley <will@williammanley.net>
References: <20210628204002.1056526-1-alx.manpages@gmail.com>
 <20210628204002.1056526-2-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <1d6759dc-a77b-10c6-9edc-b4096aed055f@gmail.com>
Date:   Tue, 29 Jun 2021 00:31:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210628204002.1056526-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 6/28/21 10:40 PM, Alejandro Colomar wrote:
> Cc: Will Manley <will@williammanley.net>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Resending with correct linux-man@.
> ---
>   man2/readv.2 | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/readv.2 b/man2/readv.2
> index 3355fa9d7..0debc2d57 100644
> --- a/man2/readv.2
> +++ b/man2/readv.2
> @@ -245,7 +245,7 @@ If no bytes were read, it will return \-1 and set
>   to
>   .BR EAGAIN
>   (but see
> -.BR BUGS ")."
> +.BR BUGS ).
>   Currently, this flag is meaningful only for
>   .BR preadv2 ().
>   .TP
> @@ -433,7 +433,7 @@ Linux v5.9 and v5.10 have a bug where
>   with the
>   .BR RWF_NOWAIT
>   flag may return 0 even when not at end of file.  See
> -https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u
> +https://lore.kernel.org\:/linux-fsdevel\:/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com\:/T\:/#u
>   .SH SEE ALSO
>   .BR pread (2),
>   .BR read (2),
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
