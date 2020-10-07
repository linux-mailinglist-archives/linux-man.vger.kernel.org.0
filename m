Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB1D32858D2
	for <lists+linux-man@lfdr.de>; Wed,  7 Oct 2020 08:53:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726009AbgJGGxi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Oct 2020 02:53:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725970AbgJGGxh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Oct 2020 02:53:37 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EB6CC061755;
        Tue,  6 Oct 2020 23:53:36 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id z1so827353wrt.3;
        Tue, 06 Oct 2020 23:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DkMe7edW+O0Q0nEcrMIpxynBYLmdvAjyQDcYd3ELTdk=;
        b=jJctRa2dKtxrbbDeeWyi6xtSVmO/xZjShDuS9CGvsnUpkbvxlAtco/1AdJd4FU0k5s
         A9iyqW/AwtXICf1c32QCdn3knHsNNDMVWscX+F7xeDbdqh85jh6c5aHGie4sXwabwrXQ
         mLTdQHqrIdy/P7L1E0K45VOftJRfby1ree6So26lHy9VQ1bvsMMP0LoegOyY2rEa/PFa
         zV5yVZzzm2+6NSuX/xCrEfSAGISZO+zf6dVbF9eMKv43bwSdw/mDvEDljx6KJjCeFmzv
         fAYeI8ASrwvR72E/Du1GP/BAQHqYH6x+q/GsjVuGKJCq+G5kFLkYLfd71v4GIwerk6kX
         QeKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DkMe7edW+O0Q0nEcrMIpxynBYLmdvAjyQDcYd3ELTdk=;
        b=iwQc0VoEhjyBimgQoUol2ymxiNOwdeSdhTN1A/DjnKjwoFNkD6GauodjoJ7XC18xXb
         jAc0vA7DQyjtQ+qYCj35GkyX1uj1aOy0yQdmmbBUYwEGC46zbsuqkaL02OqPKam1Tmdt
         R+wNOmRWHEa+/BfwCWRE4hRa7RS7tiAN7O8N3PDKvA2AJs8TMwXzquIJ+ZT1Y/MO5oco
         BfmppcsFkZTRHAHZ5KaPPFKRKQAFfDqHplBl5d18AmTmJlQOVA0yyK3V8xDN0cb/uT27
         tKMqsYigd0ylkn6dZ12ANJe6hj/DVcvFuNYd0IOFWnJhW4QHoeuMJ7yzP1sicsQn3yJM
         TBqQ==
X-Gm-Message-State: AOAM532PjAe5CyNUkLhBw0mQ9ZyiUzY0ht2+/Ci/U494dm0xtuetYJOW
        V8JgG7bhEABcpLqlLX0ZDoo=
X-Google-Smtp-Source: ABdhPJzproDvRTShcdC9xBjS2LpkNgWrBPln23BlRfjfbqmP0jEFD77qxLk94zVGNBFPSVLShUoh3A==
X-Received: by 2002:a5d:568a:: with SMTP id f10mr1749547wrv.30.1602053614820;
        Tue, 06 Oct 2020 23:53:34 -0700 (PDT)
Received: from [192.168.43.156] (dynamic-046-114-000-081.46.114.pool.telefonica.de. [46.114.0.81])
        by smtp.gmail.com with ESMTPSA id o14sm1311642wmc.36.2020.10.06.23.53.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2020 23:53:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jonathan Wakely <jwakely.gcc@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>, David.Laight@ACULAB.COM
Subject: Re: Navigational corrections
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
 <CAH6eHdSLbaqTyXaPnBxnR4n+WVHJCBDF=C9RXa6To1rSuv0D4w@mail.gmail.com>
 <CAKgNAkiHbK4RU_a_165yg3O6W0-GZMNLQoBNbut6ME=bW7pvCw@mail.gmail.com>
 <CAH6eHdQrmsHxZbk3+JxRVZ5qH1fhFzLxyigs+DtEzSg2cet+kw@mail.gmail.com>
 <63826e82-7a19-0ecc-f73c-56aa560a842f@gmail.com>
 <CAH6eHdTpzNk4+Rg-+kUCRDZPLHe7MBBf2PK5i1WqD4VeEs60oQ@mail.gmail.com>
 <4422e4bc-f54c-02cf-9b47-808d07ce8ba5@gmail.com>
 <297e304a-758e-f703-d1e2-6708be3ffca8@gmail.com>
 <9c8f90c5-0f34-609f-8001-a61f90e05849@gmail.com>
 <4c8a8fbf-3577-a242-94db-3044b57f6570@gmail.com>
 <d38a7cf8-6abb-c581-c877-8de7a35befe3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <48edf022-3f20-b334-afd6-4e2bfc4955ba@gmail.com>
Date:   Wed, 7 Oct 2020 08:53:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <d38a7cf8-6abb-c581-c877-8de7a35befe3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/6/20 12:08 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 2020-10-03 13:39, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
> [...]
>>
>> off_t would be great.
>>
>> In case you are looking for some other candidates, some others
>> that I would be interested to see go into the page would be
>>
>> fd_set
>> clock_t
>> clockid_t
>> and probably dev_t
> 
> Great!
> 
> off_t is almost done.  I think I have too many references in "See also".
> 
> I'll send you the patch, and trim as you want :)

Thanks, Alex. I'm teaching a course this week, so less active, 
I'm sorry.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
