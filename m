Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7531435414D
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:51:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232625AbhDEKvT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:51:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232518AbhDEKvT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:51:19 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA70FC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:51:11 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id o19so12100794edc.3
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CKpl8ACLISc1wDq7QO4nYRhrHdDwk9QUSHxOCVfTgtk=;
        b=ufWW/1fcXalGC23au96x93ylHRW1jXzsUxDazsm01xH/Y2sbM3RQZauILTjyYCAMV3
         TQ5ET8PigWrL+WkqY2lzyr3yts4W8/o+rjZG4Ho5UIS0TL1Ropafii8zhmQASQtI+TsF
         dIW8vodJfB3zbHSt7McqYpHVx9jLojalwWNnZFM2/oTawTyECBG3EkDU9n+qYcJowJKn
         OUCT4ELK+TF4q7H45Ssa1NWLSGeCjPY3yR0V4EDlrYZSLFtxkV7izaWWmqPeo19jugJD
         duBIRA2EASo+le9O9N+pP2xFdCsl1HYt2GHzqIFXw3qUwwv9SxhRgiEwX8Id1+7IZ0Ir
         005w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CKpl8ACLISc1wDq7QO4nYRhrHdDwk9QUSHxOCVfTgtk=;
        b=KlQ/04Zur2wV41Q3sXiFWpsr+TedQDQUu7LmS/cC5Xn/WNHuWzca7hW1GAC7fB8F4l
         g1MTKP4/K21vizzYolCQg9ymTFpY6PeIV7EjtlrMYpM8Zh+UZwqcL3UfKNuNspEPIKAe
         jSzkj1KW+QjRughFcdbMO+cN9xWAnfSIVa8oKhqfk/qHuEjPZeFvp+NrSixKPu067lRk
         OGFOi/M3Fk+y8S3QkM38FtXuCzJbcCDDvUJTXmE78mQn2wCY1JflXCJaCV1Npm720KBI
         E52DJZactbVXJaEGmAo1YMNUaLsRRJD9jVXE+Iv4NdvUju4wdAvOdy3nfH5OtKBW9BIk
         XdFA==
X-Gm-Message-State: AOAM530Ldf0h1n75gqdMzoE14mPkMHoRHa9DDuWEmDEd8/WBhOvaLi7k
        Os39gdrnMBUSZUHlCBXKleWniH2+tmY=
X-Google-Smtp-Source: ABdhPJxscOkd79eyt7QfZSlPFLzlCpqHc0p5TgDOTeDqlSV57FVDcQuNBvJWSguiQuAwT7NgEQI92g==
X-Received: by 2002:a05:6402:254c:: with SMTP id l12mr8192983edb.119.1617619870473;
        Mon, 05 Apr 2021 03:51:10 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id p22sm778128eju.85.2021.04.05.03.51.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:51:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 06/35] add_key.2: Remove unused include
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-7-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9f81d096-427e-f910-33b5-29764ac52e00@gmail.com>
Date:   Mon, 5 Apr 2021 12:51:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-7-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> <sys/types.h> was only needed for size_t, AFAIK.  That is already
> (and more precisely) documented in system_data_types(7).  Let's
> remove it here, as it's not really needed for calling add_key().
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied.

Thanks,

Michael

> ---
>  man2/add_key.2 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man2/add_key.2 b/man2/add_key.2
> index f3d803adf..dca44b8e7 100644
> --- a/man2/add_key.2
> +++ b/man2/add_key.2
> @@ -14,7 +14,6 @@
>  add_key \- add a key to the kernel's key management facility
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/types.h>
>  .B #include <keyutils.h>
>  .PP
>  .BI "key_serial_t add_key(const char *" type ", const char *" description ,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
