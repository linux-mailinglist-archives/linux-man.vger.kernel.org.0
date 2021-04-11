Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04D8C35B6BC
	for <lists+linux-man@lfdr.de>; Sun, 11 Apr 2021 21:23:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235758AbhDKTXh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Apr 2021 15:23:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235323AbhDKTXh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Apr 2021 15:23:37 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75876C061574
        for <linux-man@vger.kernel.org>; Sun, 11 Apr 2021 12:23:20 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id b9so10717332wrs.1
        for <linux-man@vger.kernel.org>; Sun, 11 Apr 2021 12:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZY4SwBgi/tjHyUGLDPGpwuTBPJvHgwyp9ogpnox3Hzc=;
        b=IG/1XbakAHPxphIOyvoP/e9a0w/znOCExklaS5ZZg1bfKUieDsvePK6r2podLani5n
         QfxA8WkV6/44i5jc5sOQ7ttHJDi7qSsxNFuw9iMsV45A3novzuXsXtcx5TEWGhHo38JR
         Xdeeiad4CS4MTZ93QuAeqagX6JYaY4wHuofIv4lQg6srA+SI0Q7QXuFc+2vpOuN+Q13Z
         fNs8PB+8xrefg5Sal+8RliRGMmqJd9LR9M4eRvFmOjyspaWn8glEqsUsORgGVTLKyO3H
         XcPjgl+GaaXjmpKFft9q5su9GIwS73Caj8PEVw4zBBothFgOZA4I6etCZZipxonL9x53
         r4og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZY4SwBgi/tjHyUGLDPGpwuTBPJvHgwyp9ogpnox3Hzc=;
        b=TRRmdMfBmws8ShZ3k9n+dqN6Q9yNIYdtMRYSQBWyNlQewC8dzyfqKAR21zaZv6pv+J
         zuSjwt1UlKmz/xiCwnjSLCAzsML7Xy13nzsSDqhfEt8xZmoNK/ycDNtGSzELMBwk0eMf
         Dik+3zEkjGF9l4D1GGQCQJMjZ1skIYW6UHIIVlT/6C5kFLr7IT0KW69HTJoPPxneXdwy
         zF5FnI0RRvEEXyHHF24JVqJ137x+O/35R1YTOsifNPexwdu+Ura6TBcUdlu7QOuA+l/l
         CaPqUt5zPdZeNvzSb0hHP0Gz5PUJG7CiIJlsLb8y9BDdRoo86E9ZECJN+jqlqSEp1xQu
         4+pA==
X-Gm-Message-State: AOAM531LMQc2Y+7Jt8c9XEMXXtnAtPL/a0FrXuo/WJFM54HFAuSDvA1/
        BM9kUeNBPzQOH7+4qCuIru8=
X-Google-Smtp-Source: ABdhPJyFzCsHqT412jB2INJbo2VyzOwPfps3RSvMCWtjF1EYHtXVWpcKrWIY4E87dhyqY/Yqz41mbA==
X-Received: by 2002:a5d:650d:: with SMTP id x13mr15021687wru.264.1618168999321;
        Sun, 11 Apr 2021 12:23:19 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id m25sm12128818wmi.33.2021.04.11.12.23.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 12:23:18 -0700 (PDT)
Subject: Re: [PATCH v5 00/35] SYNOPSIS: Use syscall(SYS_...); and fix
 '#include's
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-1-alx.manpages@gmail.com>
 <4298cc3c-8f24-5a3c-3c54-b24ca804d373@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <7750fa83-c252-7a60-bddc-34fb7ebed0bf@gmail.com>
Date:   Sun, 11 Apr 2021 21:23:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <4298cc3c-8f24-5a3c-3c54-b24ca804d373@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 4/5/21 1:49 PM, Michael Kerrisk (man-pages) wrote:
> So, I think I'm okay with the syscall() changes in the SYNOPSIS.
> It might just take me a moment to get used to them. However, I do
> wonder if it is worth retaining a comment in the SYSNOPSIS,
> something like:
> 
>     SYNOPSIS
>         #include <asm/prctl.h>        /* Definition of ARCH_* constants */
>         #include <sys/syscall.h>      /* Definition of SYS_* constants */
>         #include <unistd.h>
> 
>         int syscall(SYS_arch_prctl, int code, unsigned long addr);
>         int syscall(SYS_arch_prctl, int code, unsigned long *addr);
> 
>         Note: glibc provides no wrapper for arch_prctl(), necessitating
>         the use of syscall(2).
> 
> Without something like this, the reader may be puzzled at the use of
> syscall().
> 
> What do you think?

Yes.  I had doubts, and you confirmed them.  I'll add that.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
