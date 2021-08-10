Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B9473E50AD
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 03:39:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235066AbhHJBkS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 21:40:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234710AbhHJBkR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 21:40:17 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9CD0C0613D3
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 18:39:56 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id m24-20020a17090a7f98b0290178b1a81700so2908919pjl.4
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 18:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1MNnIFcVoVSIa1198YlvMsEhse0hxxrAWGTA5ouE9ZM=;
        b=P3gzRye6Eh1AUnksJaOscw16jpLtuRJj/62MQnDdSp242MAtZ643T74w/3GKRLZL68
         D+eMcH5523l/H5J6lXIPjhcgVB3wWt4ZVlJ4ViKNzvPEjZ4yzzvzo89XWYOQq62gnVJ9
         15K1cHk3PuzL4JXw0arzQ+moPmUqCtgy97za3YP8s2PLpPoP/eWIUt5TbFTt3V23eN5K
         2fPX/srW0jbmj84Nw03/ilSQhhaP6sTTyAZMCT21q1XLZFxpfmvQiLhf07H5/iJvkpiY
         edYFcP2C1njJjlT54rrcjKJAyxLbsQFdPgCs4x4GGYEx7RXrRnLQtEVNebMPAAHfHugq
         zChA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1MNnIFcVoVSIa1198YlvMsEhse0hxxrAWGTA5ouE9ZM=;
        b=OUtQIcy18YPKm10248yGmgrGKicSKsbVa6bAzEJmqDhuowrpzcxbhv0dknlb3kcIVf
         ON95rXh7kZ8eNgIYRghzuz4JryeuiaT2QwIBdI1HPptsvqlwQz2+59Q5O6ksd1iCbh2I
         +Of3hiNkL/15wOHRU3SmLRFp/daJ2/QFL18ILdGZcPxIedwBONx7xO75VnkxWIKbpIQY
         XTdnXbKdiyr7TwcK9Ttx2CmRvDTyAse1DSfIlgg8O3xm5JoIYjsktE0bLzrBGZtcT+Qx
         BJpn1tolDebLB90RrfTsYvtVOiElrN0CuQgKoVO9Jnar5CUqyCY9RI4MDYwsuDTnqf1w
         rRkA==
X-Gm-Message-State: AOAM533uSbCks9oVylnA41/NUsrR6V6gKMBu1mc2x4+S69AUUPPs5/+0
        rrh35O46/TZRWBZs61LdT7/BgL38Zjc=
X-Google-Smtp-Source: ABdhPJxyG8oCjGfpc5nfa/s2PDXqINp98ZSBI0lv7kz+L9DtXJ2X455wvBcp8AGSFCzwbNhai5rJ7g==
X-Received: by 2002:a63:8f04:: with SMTP id n4mr26857pgd.317.1628559596040;
        Mon, 09 Aug 2021 18:39:56 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id y26sm22173063pfp.176.2021.08.09.18.39.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 18:39:55 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 00/23] More patches from others
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ff359444-b197-1ce9-63cc-42d1d3998e89@gmail.com>
Date:   Tue, 10 Aug 2021 03:39:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> 
> Hello, Michael!
> 
> Here's another patch set with patches from others,
> and a few small fixes of mine.

I think I've dealt with all of these now.
Most patches merged, but Mike Rapoport's
memfd_secret() page still needs some work from Mike.

Again, thanks for taking care of all of these patches!

Cheers,

Michael


> Alejandro Colomar (7):
>   sigaction.2: Apply minor tweaks to Peter's patch
>   futex.2: Minor tweaks to Kurt's patch
>   getopt.3: Minor tweak to James's patch
>   termios.3: ffix
>   mount_setattr.2: Minor tweaks to Chirstian's patch
>   ldd.1: Fix example command
>   close_range.2: Glibc added a wrapper recently
> 
> Christian Brauner (1):
>   mount_setattr.2: New manual page documenting the mount_setattr()
>     system call
> 
> G. Branden Robinson (1):
>   man-pages.7: wfix
> 
> James O. D. Hunt (1):
>   getopt.3: Further clarification of optstring
> 
> Kurt Kanzenbach (1):
>   futex.2: Document FUTEX_LOCK_PI2
> 
> Michael Weiß (1):
>   namespaces.7: ffix
> 
> Mike Rapoport (1):
>   man2: new page describing memfd_secret() system call
> 
> Pali Rohár (6):
>   termios.3: Document missing baudrate constants
>   termios.3: Use bold style for Bnn and EXTn macro constants
>   ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2, TCSETSW2, TCSETSF2
>   ioctl_tty.2: Update DTR example
>   termios.3: Add information how to set baud rate to any other value
>   termios.3: SPARC architecture has 4 different Bnnn constants
> 
> Peter Collingbourne (1):
>   sigaction.2: Document SA_EXPOSE_TAGBITS and the flag support detection
>     protocol
> 
> Štěpán Němec (1):
>   unix.7: tfix
> 
> наб (2):
>   pipe.7: also mention writev(2) in atomicity section
>   regex.3: wfix
> 
>  man1/ldd.1           |    5 +-
>  man2/close_range.2   |    5 -
>  man2/futex.2         |  111 +++--
>  man2/ioctl_tty.2     |   32 +-
>  man2/memfd_secret.2  |  146 ++++++
>  man2/mount_setattr.2 | 1006 ++++++++++++++++++++++++++++++++++++++++++
>  man2/sigaction.2     |  133 ++++++
>  man3/getopt.3        |   10 +-
>  man3/regex.3         |    4 +-
>  man3/termios.3       |   74 +++-
>  man7/man-pages.7     |    2 +-
>  man7/namespaces.7    |    3 +-
>  man7/pipe.7          |    2 +
>  man7/unix.7          |    2 +-
>  14 files changed, 1478 insertions(+), 57 deletions(-)
>  create mode 100644 man2/memfd_secret.2
>  create mode 100644 man2/mount_setattr.2
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
