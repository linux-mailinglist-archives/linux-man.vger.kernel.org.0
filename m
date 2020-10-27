Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68FFA29ADC8
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 14:49:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1752542AbgJ0NtS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 09:49:18 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:36778 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1752540AbgJ0NtS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 09:49:18 -0400
Received: by mail-wr1-f66.google.com with SMTP id x7so2002683wrl.3
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 06:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kRHHTQrp6yT0152MnBrHRRLynfUppz+NSGI66c0v2vE=;
        b=eWDZCIUPAOgoBsALYXvYwj3B5bGkmRtLAPz6nXPhACYjQi6Jw7rqUENAIJgf6qxS+v
         WvhHnfgp2Z3aE3AOxJKMdIj+c/cN5Fvxfq7rXvYzVYU/+T3TQU4rSSMrJBgovUXPKP+L
         7rA0+RGaGULoTL1YFRUFDgmk0hZjZ3eXKWWl1kIPZZs6VWi9exJyadVGpQcpGZANI+OE
         4lESwpGj3jv+Aw7sNTazYtuY40vzlAMmxeXtrMFffExk6mVUzWzBw4nL1lCAScM9IAbK
         m1PndXCo7YjRRgW9qjxB4qT2kra7bifJaN9hpblOOfPiK2yQEYX/1jafOwPYJJNjdOTm
         Bggg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kRHHTQrp6yT0152MnBrHRRLynfUppz+NSGI66c0v2vE=;
        b=rQ1NcKPHniO5DhGh7SydSPvQtpwLKGZss94WqzHTOE799NT/XiO+FOboY3jr8FqeiX
         fJ+Un3m53U4FHBZQrV25MVa3bDzVW18gCU0MaG4vmGWLw7xcGt9AZO6aD/7izvltJyEN
         HomMI8Du2WIDc6hDrPaXDJSUKGJMnv0MwAn4QE7a/jCqHMxHAKoOE7dIueKd2LyODcGZ
         VXBNFJyhQAmtRX8PyP1aVpLTBUFa0TdiysZfXvf6h5QduwJdgaeKNlZZmqb8RHdZAac+
         NiC9LbJvxl+hrfPYi2x3aiX3bJAymBF+Rx3Y3wH0ce+Rk0/k4g1iEmPUgSP/eOcUTQAY
         fQuQ==
X-Gm-Message-State: AOAM531ZK5oSXpIh3jciXz1vVsXBBFtEAdDPTVDCdOgD6rqOoi/sexbd
        21qNHMPt9fjo6MSZhGcBXpQ=
X-Google-Smtp-Source: ABdhPJxrq9imRCCQB/25UMOKQaR3KYm3htFxX6iZ5ey+qapDghbL52QvkuDwhemquZpkgY4TXMre4A==
X-Received: by 2002:adf:df03:: with SMTP id y3mr2998505wrl.70.1603806556703;
        Tue, 27 Oct 2020 06:49:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id w7sm2385959wre.9.2020.10.27.06.49.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 06:49:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Linux-MM <linux-mm@kvack.org>,
        Mark Mossberg <mark.mossberg@gmail.com>,
        Michal Hocko <mhocko@suse.com>
Subject: Re: [PATCH] proc.5: Document inaccurate RSS due to SPLIT_RSS_COUNTING
To:     Jann Horn <jannh@google.com>
References: <20201012114940.1317510-1-jannh@google.com>
 <CAG48ez17=x9eHLGR-Uyx3xsVJv3W=4WsTs3HG5Fam5UP=CWXbQ@mail.gmail.com>
 <0a090c14-6b70-4284-bb2d-4fbfd1146aaf@gmail.com>
 <CAG48ez2gigjfi3_nmbyhDnb2bsi9K0Yc24y7HdSNDvtumWGbiw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b979d164-1abc-0be9-50a0-0548978c627f@gmail.com>
Date:   Tue, 27 Oct 2020 14:49:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAG48ez2gigjfi3_nmbyhDnb2bsi9K0Yc24y7HdSNDvtumWGbiw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/27/20 11:35 AM, Jann Horn wrote:
> On Tue, Oct 27, 2020 at 8:05 AM Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
>> On 10/12/20 4:52 PM, Jann Horn wrote:
>>> On Mon, Oct 12, 2020 at 1:49 PM Jann Horn <jannh@google.com> wrote:
>>>> Since 34e55232e59f7b19050267a05ff1226e5cd122a5 (introduced back in
>>>> v2.6.34), Linux uses per-thread RSS counters to reduce cache contention on
>>>> the per-mm counters. With a 4K page size, that means that you can end up
>>>> with the counters off by up to 252KiB per thread.
>>>
>>> Actually, as Mark Mossberg pointed out to me off-thread, the counters
>>> can actually be off by many times more...
>>
>> So, does your patch to proc.5 need tweaking, or can I just apply as is?
> 
> The "(up to 63 pages per thread)" would have to go, the rest should be correct.
> 
> But as Michal said, if someone volunteers to get rid of this
> optimization, maybe we don't need the documentation after all? But
> that would probably require actually doing some careful
> heavily-multithreaded benchmarking on a big machine with a few dozen
> cores, or something like that, so that we know whether this
> optimization actually is unimportant enough that we can just get rid
> of it...

Okay -- in the meantime, I've applied your patch, with your 
suggested edit, to remove "(up to 63 pages per thread)".

Thanks!

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
