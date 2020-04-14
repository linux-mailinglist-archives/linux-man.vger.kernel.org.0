Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 859E81A7786
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2020 11:43:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437720AbgDNJnI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Apr 2020 05:43:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728305AbgDNJnH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Apr 2020 05:43:07 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B0EEC0A3BD0
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 02:43:07 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id d77so12249165wmd.3
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 02:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ObbwmZ6R+RCd8/E7W2gEXc942ncihHDqziO1KEYQDms=;
        b=ed+IcRm6MnyOx8zjarSDZXkYREPz2t1n8a74PZvevk0TrWNbr/xrzkHpI6Bxvrwl/h
         kPOx6IhHzFkyOFfLzmQYWBV+whrfCrdZAD1ELvYCPOUqPIj23GW6hOSQxEtEjMSkVH9Y
         iN6GSJRHv+WQ0IYcSJ+hDsEGBq/tGLaiSyizDaikzocPWKGwXADRS7DztVpBcGqYqOiE
         tRj9JKr4oRhlvDa2Dpevy11N7546RSuD65ddsQKm1lJ4NIuy8EqRulzzDVrRw7D9uILk
         qfKRyDdG8TuIgyKYSzOsHPsau5u21Ksm8JDfGjUPHvNpFM+PQoSroxkSAJkA5TTuSuCR
         Y5Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ObbwmZ6R+RCd8/E7W2gEXc942ncihHDqziO1KEYQDms=;
        b=Sw9mTmc49xyDl002P/5irs5lqMkLu/jXU9KyWYiXZ6wVBW35VpVboQChiZHKKEfLto
         ax5N3lOX+8QNdCYUQ+sU81vc/OSDZHEVVILuAX139kArJy/afY2ieQtJDOuv6TrLtHlD
         lnRW2tZoYx8lY2PQiJLJaycuzzdqMFL84JUYXLYFBg/McxFND0N9uw+ONg0bToVghCXm
         GhdX/gUTNI7tNPVne+VcUOQJSf1tSwryBXvhfFbztBoxWRlgZrLzEzfWGGdv2eWAPw8y
         nGuwRwctrwqC8Fe1M/6BabB4VbOFD4gHy05Yns30AfHepP4EWSUp0HIyzKbj3FZqJwZB
         jw2Q==
X-Gm-Message-State: AGi0PuZC7qeWWostBIrHj88qLQ/5HDeB8p1020C1kYTexAll6QjvUivR
        NUJhliNw6lwqdCh9P5DdzY0=
X-Google-Smtp-Source: APiQypJbdN4kaoiBJs1H+K6olKD8Tkqs0u72K2RVL8jS2XgYmeQZYIVq8iTTNCDTp6fZfluMV/sZZQ==
X-Received: by 2002:a1c:8141:: with SMTP id c62mr22564739wmd.87.1586857385715;
        Tue, 14 Apr 2020 02:43:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id h3sm12979278wrm.73.2020.04.14.02.43.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 02:43:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH 1/1] getdents.2: Mention glibc support for getdents64()
To:     Petr Vorel <pvorel@suse.cz>, linux-man@vger.kernel.org
References: <20191007135315.2214-1-pvorel@suse.cz>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <39488d73-6d42-3213-98c3-5dc4f54203aa@gmail.com>
Date:   Tue, 14 Apr 2020 11:43:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20191007135315.2214-1-pvorel@suse.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Petr,

On 10/7/19 3:53 PM, Petr Vorel wrote:
> Signed-off-by: Petr Vorel <pvorel@suse.cz>
> ---
>  man2/getdents.2 | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/getdents.2 b/man2/getdents.2
> index 712d23c58..a6b7aad1f 100644

Thanks. Patch applied.

Cheers,

Michael


> --- a/man2/getdents.2
> +++ b/man2/getdents.2
> @@ -40,7 +40,8 @@ getdents, getdents64 \- get directory entries
>  .fi
>  .PP
>  .IR Note :
> -There are no glibc wrappers for these system calls; see NOTES.
> +There is no glibc wrapper for getdents().
> +Wrapper for getdents64() was added in glibc 2.30; see NOTES.
>  .SH DESCRIPTION
>  These are not the interfaces you are interested in.
>  Look at
> @@ -203,9 +204,11 @@ File descriptor does not refer to a directory.
>  SVr4.
>  .\" SVr4 documents additional ENOLINK, EIO error conditions.
>  .SH NOTES
> -Glibc does not provide a wrapper for these system calls; call them using
> +Library support for getdents64() was added in glibc 2.30;
> +there is no glibc wrapper for getdents();
> +call getdents() (or getdents64() on earlier versions) requires using
>  .BR syscall (2).
> -You will need to define the
> +In that case you will need to define the
>  .I linux_dirent
>  or
>  .I linux_dirent64
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
