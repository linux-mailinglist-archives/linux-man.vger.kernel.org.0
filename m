Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD8E124EF1F
	for <lists+linux-man@lfdr.de>; Sun, 23 Aug 2020 20:04:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725883AbgHWSEf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Aug 2020 14:04:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725867AbgHWSEc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Aug 2020 14:04:32 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A68C061573
        for <linux-man@vger.kernel.org>; Sun, 23 Aug 2020 11:04:32 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id y3so6514500wrl.4
        for <linux-man@vger.kernel.org>; Sun, 23 Aug 2020 11:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=x7dav8BPhe1dJjrT++UlvsVe5kOm10xZmmb45mTgKkM=;
        b=GMsymzSeCMNRBa7M21IPv2WJcpxCQFu/Jlit/jtMMHAe4H6fJ3vWtpiVwa6LZ1DHbU
         LHKyO6r6AyDYLTVT3sCnzpBCbyxNHvHuiD/rELmkIozavryZGmdWiNNvwiGmWEljHt8Z
         wNazh5zoQBfNymohMYfagYTOU9tnCpL7kD5Eei6M5mYnqdr0usfN8Og5tYNXi1rmNNPZ
         nGaI4M9vNU0vztJXuR3BjY2LOGR/WOL/h4zwQNImQZ48DyeJphIiyTZzf+grF0NLQ7ic
         Zb0v70rPHPJ+bFU728Vr23WCx4xj09CostL8u2Ovb7RJO86MnLCqP3lJoqY2cO+0GwnI
         6Y4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=x7dav8BPhe1dJjrT++UlvsVe5kOm10xZmmb45mTgKkM=;
        b=ZpG56Wqtao5OEjA/yVoMPKI0znX+/E7Hud8F+RosZ+a6SnlK6PDApwLgzKJK2UCIVp
         JyOS9/NcOMIrmyThi6Spctz1/VGvC27cJ8PruBOF/KtzYvoDGP/nDTx6cq+HoChf3Gkk
         Z/3E5I6JkuPI/zrwInl7eikOWnCK+p+hp5NTLTg/AwwXF3QafENQ8Mttj8OvHdp0sD+z
         0nWzWFmu/9ERLBa/16HGN/u4wW4bGRYbRifekv3+S+fiS2hrf4VjCxKMrP6Vbvww/39R
         zRvDbyzq51ePk9Oll1Be4pDtd79mC8jbRZqK2MAd5iyuQGrBxPRrfudd15SE756r4S6u
         sLPw==
X-Gm-Message-State: AOAM531mVUaoTaIKJhAAcnwzZRtorDjmc8H/jL59bBhmXhU4L+7nTvR+
        TOYpVTz+iyuOkgvreM+KuciB+cj3O2Iayw==
X-Google-Smtp-Source: ABdhPJy7AiauJPpqyIwwO8W0nAQH0kYJkn5ViaBszi06zl59zZgZMgAfDnhDUuRbsmI2cLZla5t9lQ==
X-Received: by 2002:adf:9ed1:: with SMTP id b17mr2403551wrf.227.1598205870682;
        Sun, 23 Aug 2020 11:04:30 -0700 (PDT)
Received: from localhost.localdomain ([194.230.147.231])
        by smtp.gmail.com with ESMTPSA id u7sm18223198wrq.89.2020.08.23.11.04.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Aug 2020 11:04:30 -0700 (PDT)
Subject: Re: [patch] strtod.3: Fix return value for underflow
To:     Jonathan Wakely <jwakely@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <20200807083057.GA2498597@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c24ec25e-1041-6a1c-09db-9dba72196693@gmail.com>
Date:   Sun, 23 Aug 2020 20:04:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200807083057.GA2498597@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi again Jonathan,

On 8/7/20 10:30 AM, Jonathan Wakely wrote:
> In C89 strtod returns zero on underflow, but since C99 it can return
> non-zero. This means the strtod.3 page contradicts all recent C and
> POSIX standards. Both C and POSIX say "smallest normalized positive
> number", but for consistency with HUGE_VAL, HUGE_VALF and HUGE_VALL
> this patch uses the constants for those numbers.
> 
> Also slightly improve the presentation of return values for overflow.


Thanks. I've also applied this patch.

Cheers,

Michael

> diff --git a/man3/strtod.3 b/man3/strtod.3
> index a271498d5..56ddb5f27 100644
> --- a/man3/strtod.3
> +++ b/man3/strtod.3
> @@ -138,15 +138,23 @@ is stored in the location referenced by
>   .IR endptr .
>   .PP
>   If the correct value would cause overflow, plus or minus
> -.B HUGE_VAL
> -.RB ( HUGE_VALF ,
> -.BR HUGE_VALL )
> -is returned (according to the sign of the value), and
> +.BR HUGE_VAL ,
> +.BR HUGE_VALF ,
> +or
> +.B HUGE_VALL
> +is returned (according to the return type and sign of the value),
> +and
>   .B ERANGE
>   is stored in
>   .IR errno .
> -If the correct value would cause underflow, zero is
> -returned and
> +.PP
> +If the correct value would cause underflow,
> +a value with magnitude no larger than
> +.BR DBL_MIN ,
> +.BR FLT_MIN ,
> +or
> +.B LDBL_MIN
> +is returned and
>   .B ERANGE
>   is stored in
>   .IR errno .
> 
