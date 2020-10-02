Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2488F281172
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 13:45:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387810AbgJBLpE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 07:45:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387806AbgJBLpC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 07:45:02 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87DB2C0613D0;
        Fri,  2 Oct 2020 04:45:02 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id l17so1308659edq.12;
        Fri, 02 Oct 2020 04:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iDo1ehDnl5KudQ0LiIjt7kplcA3BrKpkXk2fRzyUDDM=;
        b=vgvF7JnfevYuOp5ujHe3Zt1dI9vUhfrvWLOfLnxEDwc2Cz+6tNzGCn2bT1523pBPib
         jGja+JAtFxpxAqafaWkAZ3ccFyuOdBV4goGjA1tM1W0F0H4R0CL9gz2kC9gOV+3z0mDR
         BGJhegLZO63L2mt1mp389spBEigSDv+ASwfY4p4zWyZxRQESgsHkT9CVJEKrawm7VYzs
         i3AovSRmqnIjrimjHIeesuFEyw7PGQqSZlIYkq1aKzowrgCslhjnQKNmHnIhEDQujnBF
         uVue2JK/p+KWZlluq0SLP4J9ps4MkGElZh5H/6nKhSWvfX9kAew6BAlchir300JKHvp8
         umxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iDo1ehDnl5KudQ0LiIjt7kplcA3BrKpkXk2fRzyUDDM=;
        b=ITj13zFn3o5SVtHz4bXgGhcpmOulqvB9jt78YkQYhFTXCHVztOtcIc1G2sT8XnKbKx
         Ag2jMC/L5DwdRNFrpnsNEesLDc1CbcFUQxOWlSBo4YFaDWLKidyQzeChPCuRpOM2Uz+p
         4EMylWeBBcTmr2KY5RlxZBAVNIxLhwJ49e04KdfwgkXdkAomcGBZDaQjY8YN7E/Fh+7T
         KxpjxeOW1DXvjo+msl06KREvthRp2hjXouNiPCeWbdgV/T4ZYe7Sc21nJtLQqxG4ObK0
         I3+pB7G6GT2Bm17Zzg7HRx2FzVfOcFRHsw0aK79aPs28P0kaaTJFN3l3x0HLeK+2dDMC
         fk0A==
X-Gm-Message-State: AOAM531o45mv4WginMBzMZx1XmNnBXNzv6WtE0HKXAErmE7oszz7AStr
        mk+m7r9gRy/1lq6HoDXJyrj/W9ChlUE=
X-Google-Smtp-Source: ABdhPJy8MuBx4mvqZc7pChUoxZ2JTMZmjcjUxkf0R555YnUiGz3rWE3jgRbbOS0APTuE1t3HBP8Gig==
X-Received: by 2002:a05:6402:2050:: with SMTP id bc16mr1915119edb.342.1601639100967;
        Fri, 02 Oct 2020 04:45:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id j15sm1002020ejs.5.2020.10.02.04.44.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 04:45:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Paul Eggert <eggert@cs.ucla.edu>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
 <7c55f6cf-8cb1-7b63-30ec-990f8c370bf5@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5d83f043-ff60-94f3-b3a7-e72876ce8dd2@gmail.com>
Date:   Fri, 2 Oct 2020 13:44:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <7c55f6cf-8cb1-7b63-30ec-990f8c370bf5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/2/20 10:48 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 2020-10-02 10:24, Alejandro Colomar wrote:
>> On 2020-10-01 19:32, Paul Eggert wrote:
>>  > For 'void *' you should also mention that one cannot use arithmetic on
>>  > void * pointers, so they're special in that way too.
>>
>> Good suggestion!
>>
>>  > Also, you should
>>  > warn that because one can convert from any pointer type to void * and
>>  > then to any other pointer type, it's a deliberate hole in C's
>>  > type-checking.
>>
>> Also good.  I'll talk about generic function parameters for this.
> I think the patch as is now is complete enough to be added.
> 
> So I won't rewrite it for now.
> Please review the patch as is,
> and I'll add more info to this type in the future.

Actually, I would rather prefer one patch series, rather than 
patches on patches please. It also makes review of the overall
'void *' text easier if it's all one patch. So, If you could
squash the patches together and resubmit, that would be helful.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
