Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDEED1A740A
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2020 09:03:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406262AbgDNHDV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Apr 2020 03:03:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406265AbgDNHDM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Apr 2020 03:03:12 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C50BC0A3BDC
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 00:03:09 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id ca21so13303696edb.7
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 00:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=1a2lntY+jCArMeqvlMv45ipI6CJLpxJmXEhtR1n6FD8=;
        b=ZFoFcwv3nkinbNyA9OUS1SHk7TlgazM1g5INFl+wx4QMWdFfl7ccYMrjo1tZdfuHXZ
         AXWF6mUA+xKKktRVeqfUZNNNl4AU7Bq6Zo2kr4BOqyrZ7EcRbDogOYQmH16GZ11l/yeN
         XEvsFGo3RKprX0G+bT+MqjLCPd0NxLgkSPXKlbZRAoykdii7W+vKCHcs4g7PCWuTpMZe
         sDI2gWuYHZmlBe8VWs3jm8NNSv8P5SFba7g1RHmfQ9JkhjdAlscvOyWHrVs0q987hUO9
         vkf4kJ+1ui1fBNi2gc9ZA+9+eb9WEUd2XxIKWoMvAN23WX6REExj0ik0F77RVKOuct5g
         OWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=1a2lntY+jCArMeqvlMv45ipI6CJLpxJmXEhtR1n6FD8=;
        b=UJ54NR7WnJ0csin6zTOmCARRHe9hx9Mliyi12fPXMEzrixUOgWaFibqs2/iBjm3qJ9
         v9JrtYOj6TVe72tXOnvYp1NpF+8pqyR8PPB61mTPT9XmrgT3sUcxa5cs1sX6JkIfGscO
         qKTmjBsp9Ws2duQ8+J0xAkhWLjy0rBnFlJzHTQlZK1emsTWipoYQI+QU5zyqN1R1qySm
         JRRR4G+L+OUIg/g+XeZLfViX4YNub3aOyQS9FnD1CjLTM9l3QycFemUyyyyEKTHNo114
         SND9hYwI7rleWk6i6kig2gGu1S+f+byODvfv3iXauwAuEJsHWxDce7r0wDpubx1ZGG5t
         mL+Q==
X-Gm-Message-State: AGi0PuYFGbs0STFQ5RVXig6tf6X888be1vbfyDhQG2JwL8EIcsJfbQlN
        s36dEha4Kx4g+gn8BHsJD2f0iYTMalS0TxahlbqBMQ==
X-Google-Smtp-Source: APiQypLgV/nsf8/rgSg3wInQKQKAfCPvorciBFbHUqch9a74knDt+ypNhG+EYw4xzkHRg7w54Ei7xTvUJBNzqY0dbNo=
X-Received: by 2002:a17:906:2488:: with SMTP id e8mr19071299ejb.157.1586847787844;
 Tue, 14 Apr 2020 00:03:07 -0700 (PDT)
MIME-Version: 1.0
References: <ygf1vkhrmuj.fsf@janus.isnogud.escape.de>
In-Reply-To: <ygf1vkhrmuj.fsf@janus.isnogud.escape.de>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 14 Apr 2020 09:02:57 +0200
Message-ID: <CAKgNAkiqhE51w9+8W_StW0+9eD+HD79y-Tngcnu9yBEygQbRqQ@mail.gmail.com>
Subject: Re: [patch] strftime.3: ISO week number can be 52, add example
To:     Urs Thuermann <urs@isnogud.escape.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Urs,

On Mon, 2 Nov 2009 at 16:05, Urs Thuermann <urs@isnogud.escape.de> wrote:
>
> A year cannot only begin with week number 53 of the previous year but
> also with week number 52.  Year 2011 is an example for this case, as
> can be easily seen with GNU date:
>
> $ date -d "jan 1 2011" "+%c %V %G"
> Sat Jan  1 00:00:00 2011 52 2010
>
> This patch is against the current man-pages git repository.

Patch applied!

Cheers,

Michael


> diff --git a/man3/strftime.3 b/man3/strftime.3
> index 8dfe58c..a516979 100644
> --- a/man3/strftime.3
> +++ b/man3/strftime.3
> @@ -360,13 +360,15 @@ the first week of the year that contains a Thursday;
>  or, the week that has 4 January in it).
>  When three of fewer days of the first calendar week of the new year fall
>  within that year,
> -then the ISO 8601 week-based system counts those days as part of week 53
> -of the preceding year.
> +then the ISO 8601 week-based system counts those days as part of week 52
> +or 53 of the preceding year.
>  For example, 1 January 2010 is a Friday,
>  meaning that just three days of that calendar week fall in 2010.
>  Thus, the ISO\ 8601 week-based system considers these days to be part of
>  week 53 (\fB%V\fP) of the year 2009 (\fB%G\fP) ;
>  week 01 of ISO\ 8601 year 2010 starts on Monday, 4 January 2010.
> +Similarly, the first two days of January 2011 are considered to be part
> +of week 52 of the year 2010.
>  .SS Glibc Notes
>  Glibc provides some extensions for conversion specifications.
>  (These extensions are not specified in POSIX.1-2001, but a few other



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
