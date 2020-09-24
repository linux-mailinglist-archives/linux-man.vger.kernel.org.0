Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5094E276B70
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 10:06:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727166AbgIXIG3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 04:06:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727089AbgIXIG2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 04:06:28 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AA5CC0613CE;
        Thu, 24 Sep 2020 01:06:28 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id k14so2474323edo.1;
        Thu, 24 Sep 2020 01:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DhS5zCUfUZ5BpudzCueI3P+8aqCX/31QjaGKTQtiybo=;
        b=Lm09FPDzX2HQ6SYT4Dp4mSGZpkmXWi9C7O2x8X2iUia+mTEg5Isp6ofoZ51RbAN0GU
         f/qEGEtJTeFvY1njXD9WoBXhDwnn2BYsQO3bJ1gQ62iBHzXvT90Zcj95YsWXAxwQVNYd
         K5DoaexSnWKE/ePaXTXwh1DdMhJjHHyOHZkkr2yU7t5IT/W7cNz24ffXcg76+eOgI1d8
         hvjvGjNiL5TwLf7R8bZHP6Z92rLeOzMtN0YH/Tky7G5P8dOfBh1Gvbctww8LzfeaEDpO
         W8UDQyYLEQZzpYKUgEMMkeMTTfQ9PsD+MqEOgyzdkpXSTtBkFI9ceuT8fuTG7mZx+16p
         574w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DhS5zCUfUZ5BpudzCueI3P+8aqCX/31QjaGKTQtiybo=;
        b=HCbW+xGo5kxFnpNWOTIp9V6IlWwreoeze9smd6HZ3Bv+DSSFm8u1SFEPxGqS24LdRG
         YTdK2T3XbHdkLmHuq0W58MjBF4srwwfOACPbDoPQikBLFOTxyFTY2wNM/YvcSGIs91fR
         W7hcTvve6j6lWRvjjWQhGluMmgMmB9S6lceDsxU9vkGmGBhvsqja339p76Nclhj4rS0R
         SQHXoY7oUkPgLvDHhRdnaGkXy6iTjwqJYwS3CVe1ES6vNMy7uROqR7YAceC5nPUd0eUk
         v0RaqH4nax8CR60GkLEnSkrWodeegK5rrN6DXsbuQMRkpA1KrgFVPm7KoVOj/u9yuO9T
         0wlQ==
X-Gm-Message-State: AOAM532GMcI2Jr7ovN6H+VMaVE+9+W+dPUg62KTPzbexamhCGC685X1z
        ZKmDRTxj/kdxmsfdgRcNU44=
X-Google-Smtp-Source: ABdhPJzIprzDU3RErUhZ32VFhVr2cg98LN+NVaRKC6CfXxw5WUEhgcEVYjL/KcqC5+uueBKFH1uNBQ==
X-Received: by 2002:a05:6402:3c8:: with SMTP id t8mr3244616edw.266.1600934787086;
        Thu, 24 Sep 2020 01:06:27 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id f17sm1952836eds.45.2020.09.24.01.06.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 01:06:26 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-23-colomar.6.4.3@gmail.com>
 <4ace434523f5491b9efcc7af175ad781@bfs.de>
 <20200921143617.2iskdncu3diginqn@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2862c745-a23a-95d2-157e-7f91f671f839@gmail.com>
Date:   Thu, 24 Sep 2020 10:06:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200921143617.2iskdncu3diginqn@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 9/21/20 4:36 PM, G. Branden Robinson wrote:
> At 2020-09-11T12:58:08+0000, Walter Harms wrote:
>> the groff commands are ducument in man 7 groff
>> .nf       No filling or adjusting of output-lines.
>> .fi       Fill output lines
>>
>> (for me) a typical use is like this:
>> .nf
>>
>> struct timeval {
>>     time_t      tv_sec;     /* seconds */
>>     suseconds_t tv_usec;    /* microseconds */
>> };
>> .fi
>>
>> In the top section you prevent indenting (if any).
> 
> The above will not work as desired for typesetter output, a.k.a., "troff
> devices", such as PostScript or PDF.  The initial code indent might work
> okay but the alignment of the field names will become
> ragged/mis-registered and the comments even more so.

Yes.

> This is because a proportional font is used by default for troff
> devices.  The classical man macros, going back to Version 7 Unix (1979)
> had no good solution for this problem and Unix room tradition at Murray
> Hill going all the way back to (what we now call) the First Edition
> manual in 1971 was to read the man pages on a typewriter--a Teletype
> Model 33 or Model 37.  Typewriters, of course, always[1] used monospaced
> fonts.
> 
> Version 9 Unix (1986) introduced .EX and .EE for setting material in a
> monospaced font even if the device used proportional type by default.
> (Plan 9 troff inherited them.)  GNU roff has supporteds .EX and .EE as
> well, for over 13 years, and its implementations are ultra-permissively
> licensed so other *roffs like Heirloom Doctools have picked them up.
> Therefore I recommend .EX and .EE for all code examples.
> 
> They are very simple to use.  In the above, simply replace ".nf" with
> ".EX" and ".fi" with ".EE".
> 
> Regards,
> Branden
> 
> [1] Not completely true; variable-pitch typewriters (such as 10/12 point
> selectable) were fairly common and some expensive models like the IBM
> Executive even featured true proportional type.

Thanks for the interesting history, Branden!

From time toi time I wonder if the function prototypes in
the SYNOPSIS should also be inside .EX/.EE. Your thoughts?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
