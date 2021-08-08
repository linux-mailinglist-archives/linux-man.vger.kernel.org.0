Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 675FA3E3CA2
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 22:08:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230337AbhHHUI7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 16:08:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbhHHUI7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 16:08:59 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5694EC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 13:08:40 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id bo18so2576666pjb.0
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 13:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6z5aqd4r6s9jU8r5JlJoz9PGxGijzydsg5DGD++mOfg=;
        b=tIFAgmvgi0qwZNRo+vKl7rhd15ptoOOf/zr3ccpoGAQeiA4qpQy7sHwDEkmrXTw3w2
         g0ymdKsDhkBZcgxQmQnKV+PKhYhQtKtTmQD3CpAszlTTdU3Le3wGVrKXbnUJygXMZay7
         sgjzQnf+8TWeT9XkZOn4T8L3Bx65FExgNTb/FRAQ5GoUPqHMg22HcyLa+RIyz031AjzR
         JGsYFC7FZ7esD0Pk1kX8pHRkA7ILus+oHfXSu5ZAZI0Kxe8Ov4yMAI+3v7/2B24Sh8K4
         pHnQPqtBucDQ9GDiH3/JIToMD4ZFuuuD2vKxjQpVxXVI9umMVDOVtrGnJfYLoCxwfBpn
         U8dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6z5aqd4r6s9jU8r5JlJoz9PGxGijzydsg5DGD++mOfg=;
        b=e7S54I2Hd/bh/AESTZyat3gZvUQAV5wh8FhSUe2cXNmmt8U50z6vFp9JslR2+a+zCf
         U18FF49F5LwtUMZ94Za3R4b0gNwNrwDFzhDtWYdoiJ3pMW7SNBCwS3RrVpOfQCJzsgaf
         +2sLZiBuEP6AozuHnHQWRRC+Bp1QCHiaCsd70CT1sFn03nncfQjrBR96VS8y59IfrXX3
         vPy2lXXJhxc6vbD7uW59yTEZ9WJIGa/SSpksKkX/1HD/f0VqOwvWVS9KqRB9xtj31RXo
         ZOl1x+KajQjMezfMm3U9b+9iYaYxQnDQeAJwHYUoFMxq3lJprmL9lfYy2sWfzPXagGAu
         cUpA==
X-Gm-Message-State: AOAM532TM4t36PjvCOKRZK7S5szqYEqCxR8EumaDzX31PL4Q4Yoa4zqo
        cjLjzWUN7yfcvS/xY11nBqxlwXF2g3k=
X-Google-Smtp-Source: ABdhPJxugpYFpA5+pcukUH8YXM/2yaV46xFG850++h+QGfggQAOKfqNoqmm3m0HVyIxUpj4vO6qWmg==
X-Received: by 2002:a63:1056:: with SMTP id 22mr2267204pgq.178.1628453319464;
        Sun, 08 Aug 2021 13:08:39 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id x19sm17758947pfa.104.2021.08.08.13.08.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 13:08:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?Q?Michael_Wei=c3=9f?= <michael.weiss@aisec.fraunhofer.de>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 04/23] namespaces.7: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-5-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c9eed7fe-f2ed-ee4b-294c-6df806ed368d@gmail.com>
Date:   Sun, 8 Aug 2021 22:08:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-5-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael and Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: Michael Weiß <michael.weiss@aisec.fraunhofer.de>
> 
> Signed-off-by: Michael Weiß <michael.weiss@aisec.fraunhofer.de>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks, patch applied.

Cheers,

Michael

> ---
>  man7/namespaces.7 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man7/namespaces.7 b/man7/namespaces.7
> index 0ac32c77e..850dca844 100644
> --- a/man7/namespaces.7
> +++ b/man7/namespaces.7
> @@ -71,7 +71,8 @@ Time	CLONE_NEWTIME	\fBtime_namespaces\fP(7)	T{
>  Boot and monotonic
>  clocks
>  T}
> -User	CLONE_NEWUSER	\fBuser_namespaces\fP(7)	T{User and group IDs
> +User	CLONE_NEWUSER	\fBuser_namespaces\fP(7)	T{
> +User and group IDs
>  T}
>  UTS	CLONE_NEWUTS	\fButs_namespaces\fP(7)	T{
>  Hostname and NIS
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
