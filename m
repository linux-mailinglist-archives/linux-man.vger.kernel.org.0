Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1030377C87
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 08:53:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbhEJGzC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 02:55:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229863AbhEJGzB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 02:55:01 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51433C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 23:53:56 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id s5-20020a7bc0c50000b0290147d0c21c51so8200230wmh.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 23:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=J4gPTCO7pqd3oyrnzTDKsbqjpnIHokUwN7/TGT9AKK0=;
        b=AIT7iELh2/jvubRb/6NZzOoOITgRSF8xuuPSvqi/HPu4YMVZbLwS+C4hxBv934uGpP
         vDMkjUD4TAsVAhvrS3gk4c76aZpLNkQK/VTIufE+C+PhK8I4RpMar4Q4CxbaPxWTb/xW
         ZUCabzSoKnG2Hy7MytS0CI6QO+t9weQLEmhOagyAYbBmxsp8ikIbIvMBOU3rOM5RDTOp
         wK7GJccwcUG7BtOw4XO6W9ymjcL1vLNS8EGAZ5BjcQxbCPK6DKK9tm+d/VCxspiPX7mz
         Te1kNaS0qK2ukNVqiM90LRqZsob6BQDFp5U5V7SXKmSICA+PqYR+4lKjenUUrwgAFXMP
         Jy/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=J4gPTCO7pqd3oyrnzTDKsbqjpnIHokUwN7/TGT9AKK0=;
        b=ox1L9POBj+i017zEZWpvfQ7eoc9lBDLUqQWSRdA+J7vO53IsW5RzNwY5ZVzPNCyIpz
         Cdb34zksKB+witQsp4djkoZ+tmrTlg/jMOjlEnKOULH8NcZx9kdhEdaigBXVh15LxULe
         mTjV86Kxc7WE8us8cCC7RzqYUgDOlXDPfdbGgPsfrux42nJDbDL+hUGGZohGdts+ScHE
         QLJpyVfpTKPHmTCeMaamjE5Uh7N+hejFNelsLRcB/m+Dtflnsw6T+x/tuUp0ys6oA0ax
         NzryaYLaGItOCVkhmUWrRn2WLk3VNBEr5+2pKTCM1Nd6BOUlVlhV1+WqDJEaWPoagMLJ
         v9ew==
X-Gm-Message-State: AOAM5320OZc89skWrNSMaDQMehumUTUbjJYa9LMrDzI0U+wIFHMFXAtO
        mDLH9+gEFlzM3rWjKNfi8Bg=
X-Google-Smtp-Source: ABdhPJynBZMC1riYg7/w59o5uvApzp2OXEmORyNEwDOVSkqsZY7cDIcWhD1sLyVqcnNlYE3rpO8jbw==
X-Received: by 2002:a1c:6485:: with SMTP id y127mr20621470wmb.181.1620629634947;
        Sun, 09 May 2021 23:53:54 -0700 (PDT)
Received: from [192.168.0.237] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x17sm24270705wmc.11.2021.05.09.23.53.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 23:53:54 -0700 (PDT)
Subject: Re: [PATCH] Makefile: Simplify error handling
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Dr. Tobias Quathamer" <toddy@debian.org>,
        Matthias Klose <doko@debian.org>,
        Andrej Shadura <andrewsh@debian.org>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-37-alx.manpages@gmail.com>
 <daae8bd2-bfd4-548a-7b28-5744676f27e2@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <90fd4c9b-5470-93e9-496a-0d0cdc2f17d4@gmail.com>
Date:   Mon, 10 May 2021 08:53:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <daae8bd2-bfd4-548a-7b28-5744676f27e2@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Tobias, Mathias, Andrej]

Hi Michael,

On 5/10/21 1:45 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 5/10/21 9:39 AM, Alejandro Colomar wrote:
>> Instead of having to write '|| exit $$?' all the time,
>> use the shell's '-Eeuo pipefail' options, which handle
>> errors even better.  However, pipefail needs bash,
>> so POSIX sh (default) is not valid.
>>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>
>> Hi Michael,
>>
>> I'm not sure how much POSIX sh compatibility is needed for the man pages
>> Makefile.  There are probably projects out there that don't have bash,
>> and still want to use it.  So maybe we should't apply this.  I don't know.
>> Up to you.
> 
> I think I'll skip this one. I'm not sure if it might cause some
> problem for Debian, where the default shall is dash(1), I believe.

Debian has dash(1) as the default _non-interactive_ shell, but also has 
bash(1) as the default _interactive_ shell.  See 
<https://wiki.debian.org/Shell>.

I can confirm that using Debian (sid) myself (and having not installed 
bash(1) myself) I'm using this Makefile without any issue.

However, it's true that other smaller distros might not come with bash(1).

So still up to you :)

I forgot to CC the Debian maintainer of manpages in this patch this 
time; fixed.  I also CCed the bash(1) and dash(1) Debian maintainers, 
just in case they have any comments.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
