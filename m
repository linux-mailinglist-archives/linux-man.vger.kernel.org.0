Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 912403E3800
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 04:42:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230098AbhHHCnQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 22:43:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhHHCnQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 22:43:16 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08063C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 19:42:58 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id u2so12592743plg.10
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 19:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=k/Gg1EpE39+M3M7ahZp9vbYpC+n/TDZ6o71oO47S0+Q=;
        b=NyMzOhOjDcsex7MouXqaumeaKiZcv1hHDwNESLdlfqeuGhX69x5HDZf1CP5B8JqWAX
         Ovu7kWIneEPSA2bDH1mAX2+tbiN1+jJDICEpLoL2xGP7Kidxwb29bpBqaKzA8cz18DHU
         XC/CYhP7xqdRDu9QfkEUJNFrvNPL1jMMsAQ1pkxMjtUoewFNUA3uq8CIGc0j7fnlJPBx
         LWh6gzQobBubb4TrHOV5QX+7tdOIE6UIMdDih0h4qZa7zkYIx47VOlSkpiQfEYxmddAy
         la1WaIBYbuHY9XUkDNGqM6HhEAWqM+N5CAvWKNFIg/Bz6vQ1ESxi/7BdB0DnHWmhsOc2
         qvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=k/Gg1EpE39+M3M7ahZp9vbYpC+n/TDZ6o71oO47S0+Q=;
        b=MJKwDX649SCT8sQ4O2VnqKKD9mnaYnst8SEdbZXxNdZ1rIcAfLQnCTYbRTEHxFS129
         dGngirKMl+cCMFnwDngswgsCKNhV65sXoYVZK/61cjR2dAWOTRTXxx1g1+FD+Tl2sr4q
         dVzpHoHrVC7FYV+E4zg9x4vXTuMhgl1EPN5eo6ZTk/GjQ9O0nYrziPuTd36X5L6w90+V
         6FqQV9ONTG7bt+x1t6GieEObjVLkgHDi0bTrwCRT0l1qoAt4kKN9ClxEAKfPU6XAh/su
         ikWLD+hY1rsApXT8Zxo4+onNVatTJ4/R+6XBrYcb4iFJL/dOpXN2j9zAQVL0QiZTeUHq
         +ADg==
X-Gm-Message-State: AOAM531gGOCwIV5KHrL5m74yxBbmv5aBvwqj74WkBQvJe6fSM16LYLIi
        TL3ZugrvsZoCfI82GQUBjKo=
X-Google-Smtp-Source: ABdhPJwv6gl9GIwCq/LSeqVN0FVR6a2QePwYAIS4H2atloo6+EkizOZr31T+bJZ/DxUR7/ALSkR0vQ==
X-Received: by 2002:a17:90a:de18:: with SMTP id m24mr17830011pjv.78.1628390577603;
        Sat, 07 Aug 2021 19:42:57 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id e7sm15492373pfe.124.2021.08.07.19.42.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 19:42:57 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Will Manley <will@williammanley.net>
Subject: Re: [PATCH 02/32] readv.2: Minor tweaks to Will's patch
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-3-alx.manpages@gmail.com>
 <95690798-14c3-a679-5386-bc96e52e829c@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <70ac06f6-2461-a1ad-f409-006df6ee205c@gmail.com>
Date:   Sun, 8 Aug 2021 04:42:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <95690798-14c3-a679-5386-bc96e52e829c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex and Will

Will, thanks for taking time to write up the patch!

On 8/8/21 4:30 AM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 7/28/21 10:19 PM, Alejandro Colomar wrote:
>> Cc: Will Manley <will@williammanley.net>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> 
> Patch applied, but see my follow-up mail.

Alex, see the follow-up patch that I applied, below.

Cheers,

Michael

commit 76dec7bbd4e8761249a339db5f13f7e63a37aac3 (HEAD -> master)
Author: Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Sun Aug 8 04:34:37 2021 +0200

    readv.2: Minor fixes (part 2) to Will Manley's patch
    
    Mainly: I generally don't want us to be including URLs to mailing
    list discussions in a manual page. Either, the issue in the
    discussion is worth writing up in the manual page (so that
    the reader doesn't have to look elsewhere), or the details
    are less important, in which case it is sufficient to note the
    existence of the bug. I think this is an example of the latter.
    
    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

diff --git a/man2/readv.2 b/man2/readv.2
index 0debc2d57..bd0a6cd2f 100644
--- a/man2/readv.2
+++ b/man2/readv.2
@@ -428,12 +428,17 @@ nwritten = writev(STDOUT_FILENO, iov, 2);
 .EE
 .in
 .SH BUGS
-Linux v5.9 and v5.10 have a bug where
+Linux 5.9 and 5.10 have a bug where
 .BR preadv2()
 with the
 .BR RWF_NOWAIT
-flag may return 0 even when not at end of file.  See
-https://lore.kernel.org\:/linux-fsdevel\:/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com\:/T\:/#u
+flag may return 0 even when not at end of file.
+.\" See
+.\" <https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u>
+.\" The bug was introduced in
+.\"    efa8480a831 fs: RWF_NOWAIT should imply IOCB_NOIO
+.\"and fixed in
+.\"    06c0444290 mm/filemap.c: generic_file_buffered_read() now uses find_get_pages_contig
 .SH SEE ALSO
 .BR pread (2),
 .BR read (2),

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
