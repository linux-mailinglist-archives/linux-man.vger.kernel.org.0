Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 923742C51B6
	for <lists+linux-man@lfdr.de>; Thu, 26 Nov 2020 11:00:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387515AbgKZKAL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Nov 2020 05:00:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387445AbgKZKAL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Nov 2020 05:00:11 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC80AC0613D4
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 02:00:10 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id x22so1547439wmc.5
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 02:00:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=x4NyPkTR5VxT9loH4ShS5Tq0ALvBxhDMu8LMPb+5xfU=;
        b=Kz408kELA64o6V1GflNdSU0wOcipEQZjusSdLJfSpqYdVGtKkFHakDvgkiSP5bwAnh
         0erv0cx5U0eWyfxYl/64pRNVgPSxyYlOdqyuhDOcWSMVSDRWzG5Dh4E5i85pG3lfkLEd
         kHDd8UdjpvMQDck0BEhA5wYffWXTLq4WQlSW7GE/WbeGJWySRVBVyMaagyXBNdDZfT/q
         5QR5OzSukrVSlkfVgcFIyZZJ75MCh/8jGwd+Q+Qv4xJJvad+gD+xTvJ8BeLgjQBYDGNh
         aNXWgt3oJurlRJPvN2T7JPXuLgpCaZ85wJnfKjfApwn/yC7a9HWyAy44J9jL3PGVpOzF
         wjpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=x4NyPkTR5VxT9loH4ShS5Tq0ALvBxhDMu8LMPb+5xfU=;
        b=LGPE3r1EIwli/9M/3VwoaQPgswrMtB8dGp302t9l136kaS+U5AYd1uJzsVc0huqPaI
         AKl82YToLZWQy702dOztmU7Zcp4HlJNHBXumZ/UMO6+wgV9KDDOhtfnYe78hO00msUYd
         9g6y6qCuUpjoqyCfdVk6H0MKMnUpQhL0VqxVjcDrtovVfCy8k+7jUw2+FM9gFVxUb9uX
         oPcFeARzyFr97UWcOFBysKq35g7vH2kHo03DZ5cOei1j9q0QgxHAtg28FC54cOBkOmI4
         jZvlJAD9k4tn9PR8PmTJZQs8SxvRm7Z7P8400itP5tyhjgN2B0cweeXy/wGiKD3kwP6N
         A+tA==
X-Gm-Message-State: AOAM533GQpdg9K31S8ZPtSAKH5l+OeDTHKbrux2etvftwIzrNTtleqX/
        cjJCBwJ2L58YjHG4rI+x9Byxzllyr0rjXg==
X-Google-Smtp-Source: ABdhPJwi+BcGpYr5abA8378SosLm2331POXPImJRapcTzrY4dUWtXjRJy98e5PcuIQOwAhfQIysjjw==
X-Received: by 2002:a1c:a402:: with SMTP id n2mr2467960wme.185.1606384809734;
        Thu, 26 Nov 2020 02:00:09 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id n128sm8545528wmb.46.2020.11.26.02.00.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2020 02:00:09 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Mathias Rav <mathias@scalgo.com>
Subject: Re: [patch] link.2: ERRORS: add ENOENT when target is deleted
To:     Mathias Rav <m@git.strova.dk>
References: <20201125142732.22c47097@alcyone.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a99da26b-db18-8fa9-62ff-a33a2735f5e9@gmail.com>
Date:   Thu, 26 Nov 2020 11:00:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201125142732.22c47097@alcyone.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/25/20 2:27 PM, Mathias Rav wrote:
> Linux kernel commit aae8a97d3ec30788790d1720b71d76fd8eb44b73
> (part of kernel release v2.6.39) added a check to disallow creating a
> hardlink to an unlinked file.
> 
> Signed-off-by: Mathias Rav <m@git.strova.dk>

Thanks, Matthias. Patch applied.

> ---
> The manual page already describes the trick of using AT_SYMLINK_FOLLOW
> as an alternative to AT_EMPTY_PATH, and for AT_EMPTY_PATH the manual
> page already notes that it "will generally not work if the file has a
> link count of zero". However, the precise error (ENOENT) is not mentioned,
> and the error case isn't mentioned in the ERRORS section at all.
> 
> This makes it easy to overlook the fact that the AT_SYMLINK_FOLLOW
> trick on /proc/self/fd/NN won't work on deleted files, as evidenced by
> the follow message (which turns up when googling "linkat deleted ENOENT"):
> https://groups.google.com/g/linux.kernel/c/zZO4lqqwp64

I think the above piece is actually worth including in the
commit message, so I added it.

Thanks,

Michael

>  man2/link.2 | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/man2/link.2 b/man2/link.2
> index 1e7b2efd8..202119c6e 100644
> --- a/man2/link.2
> +++ b/man2/link.2
> @@ -318,6 +318,10 @@ open(path, O_TMPFILE | O_EXCL, mode);
>  .IP
>  See
>  .BR open (2).
> +.B ENOENT
> +An attempt was made to link to a
> +.I /proc/self/fd/NN
> +file corresponding to a file that has been deleted.
>  .TP
>  .B ENOENT
>  .I oldpath
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
