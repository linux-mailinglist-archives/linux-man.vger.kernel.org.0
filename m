Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF0C62C543F
	for <lists+linux-man@lfdr.de>; Thu, 26 Nov 2020 13:54:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389750AbgKZMxX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Nov 2020 07:53:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389266AbgKZMxX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Nov 2020 07:53:23 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26E08C0613D4
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 04:53:21 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id 23so2023345wrc.8
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 04:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aP6S5HjhaGiN94SD7Njjam0+1OZWPyDD0MYYGpn2bE8=;
        b=cJWnE9fOC5TmrFpwS97W8L6qZI6AWZC8A8GGBCZwtZyqBOQ5uMpYQIU305x27gOfGV
         JJ93jsH65YLijR+usupXmQgzWqP13bTP2yGVGhZk/GN30lDvhHglmk1cGSEy9qZKBXqy
         fOdpeGqgcrre+dlUgs1ta94oAh+xMPjqt0Kv3pISGhsSv1BXH2YMXkEA8JRqIvulbv31
         Y5Exr7jjRJvy6mICw/bxa+3Lc4k9vdUDDqEAImk404ywkYVHgjVDeM3x45dkGYGxNyW7
         vGSYMYsi5aLfWXK4AhOv/BPYlaQJv10EQwJGpzaJv+YbPlw7F5Uu9lGPxJW0XzylJfsx
         v/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aP6S5HjhaGiN94SD7Njjam0+1OZWPyDD0MYYGpn2bE8=;
        b=m3D1P+PMTWi0GydY3Mqb1QJEKTeNzqH96Lt/Q9bNjvF14LZXYWW9TC64Rdyj1716j5
         lLs96rlkLhDdtRQez6Y5XiNa+V9DhBGvZOLujQdwF3T1bA1lUHPhqt9rEwWy+qOa2MN4
         iD6S5J2YJfOltuV6x+HT1YKM4cwRCK02A+b/D+FkedO8HsQm4Zs70dD2hemaCwT2MrBo
         HjMwBneA55I8+cMFAoH8nbqOFhlajaZ6MhQupPpj+fvQXd2+khlAvTbTZuB8zJJgTlu2
         EYoxvTm5QW4unxkmJvIOBA8YKhYCHYzgK7JkTj0rnWTPy71KwT6NsZkvxVbQrlYaZGtU
         6uyw==
X-Gm-Message-State: AOAM531utoAnPCj1CIPom1JGkJwSvw3zLvJ6haTxgmo9/B4CNsgNmmNG
        02z403EvPdzl9LDnoCPAKv9VwNOyjpXQbw==
X-Google-Smtp-Source: ABdhPJy+rlP8aCPAZr9G6KOQE37rVZwPEzQDTCeQaSIcTDr8WrtO6S14jK9fUnCsPmIQnKR+4gZH6w==
X-Received: by 2002:a5d:6852:: with SMTP id o18mr3699033wrw.336.1606395199899;
        Thu, 26 Nov 2020 04:53:19 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id r1sm8955213wra.97.2020.11.26.04.53.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2020 04:53:19 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Mathias Rav <mathias@scalgo.com>
Subject: Re: [patch] link.2: ERRORS: add ENOENT when target is deleted
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Mathias Rav <m@git.strova.dk>
References: <20201125142732.22c47097@alcyone.localdomain>
 <a99da26b-db18-8fa9-62ff-a33a2735f5e9@gmail.com>
 <a91363d4-8f46-401a-e214-e93ada9f71aa@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5598aa4b-cb11-302b-6215-eb664c64055f@gmail.com>
Date:   Thu, 26 Nov 2020 13:53:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <a91363d4-8f46-401a-e214-e93ada9f71aa@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/26/20 1:36 PM, Alejandro Colomar (man-pages) wrote:
> Hi Mathias & Michael,
> 
> Please, see a fix below.


Thanks, Alex. Fixed!

Cheers,

Michael

> Cheers,
> 
> Alex
> 
> On 11/26/20 11:00 AM, Michael Kerrisk (man-pages) wrote:
>> On 11/25/20 2:27 PM, Mathias Rav wrote:
>>> Linux kernel commit aae8a97d3ec30788790d1720b71d76fd8eb44b73
>>> (part of kernel release v2.6.39) added a check to disallow creating a
>>> hardlink to an unlinked file.
>>>
>>> Signed-off-by: Mathias Rav <m@git.strova.dk>
>>
>> Thanks, Matthias. Patch applied.
>>
>>> ---
>>> The manual page already describes the trick of using AT_SYMLINK_FOLLOW
>>> as an alternative to AT_EMPTY_PATH, and for AT_EMPTY_PATH the manual
>>> page already notes that it "will generally not work if the file has a
>>> link count of zero". However, the precise error (ENOENT) is not mentioned,
>>> and the error case isn't mentioned in the ERRORS section at all.
>>>
>>> This makes it easy to overlook the fact that the AT_SYMLINK_FOLLOW
>>> trick on /proc/self/fd/NN won't work on deleted files, as evidenced by
>>> the follow message (which turns up when googling "linkat deleted ENOENT"):
>>> https://groups.google.com/g/linux.kernel/c/zZO4lqqwp64
>>
>> I think the above piece is actually worth including in the
>> commit message, so I added it.
>>
>> Thanks,
>>
>> Michael
>>
>>>  man2/link.2 | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git a/man2/link.2 b/man2/link.2
>>> index 1e7b2efd8..202119c6e 100644
>>> --- a/man2/link.2
>>> +++ b/man2/link.2
>>> @@ -318,6 +318,10 @@ open(path, O_TMPFILE | O_EXCL, mode);
>>>  .IP
>>>  See
>>>  .BR open (2).
> 
> +.TP
> 
>>> +.B ENOENT
>>> +An attempt was made to link to a
>>> +.I /proc/self/fd/NN
>>> +file corresponding to a file that has been deleted.
>>>  .TP
>>>  .B ENOENT
>>>  .I oldpath
>>>
>>
>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
