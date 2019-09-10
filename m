Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 28E25AE576
	for <lists+linux-man@lfdr.de>; Tue, 10 Sep 2019 10:26:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725981AbfIJI0f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Sep 2019 04:26:35 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:36046 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725876AbfIJI0f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Sep 2019 04:26:35 -0400
Received: by mail-wr1-f65.google.com with SMTP id y19so18271262wrd.3
        for <linux-man@vger.kernel.org>; Tue, 10 Sep 2019 01:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8wJ788b0tkaI+2WFNRYDbxCC/XixkhXQMiTq+7f+uew=;
        b=NWTPqQ30EYIISEf83YzWqnaiXG3cB6lwZIo2KJ7LoFj9BaWlbANdWGVBx7KIpD1jMW
         vsU1hhMoSQ3v5uggM+FkdIMxTv5Ud8aQKHQ4CBX0h75bGE/Spjr/DZLnCrplpvFI5T2N
         zIpDajeHWQQEtetPltD4wOuq6wjOnUuGGR5bVKuN3ur+OKn9GdIKH7Rot7n5DvLxKd2m
         e13CLFjdgo4Y/7x7lMzwAIM6BLSQbnfCK1Inh9+aherdoIkUCiA8GLMBrThDA52pWuI7
         niH1hp/g9Chx5ag/KszS81bRglzQj0u9SuKQpuBOg/0tiMl7CQ/p0qShQcR0aSNGQPM3
         yLgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8wJ788b0tkaI+2WFNRYDbxCC/XixkhXQMiTq+7f+uew=;
        b=lNYc9gaRL8GSymodMrzVQqk9nEj3c8U8dpwp+oexlDG1j/sCWl2QkayGPD4uzflGhn
         DmZ/VzCNkloEY6OeNWaCPxYHMLiyAFBhwSnOs7eVLDZq11esNru1SK/I0lhEYO5TvYFF
         p49dsUsccUGUg9LWpWkto6GK7D0X5yaO1S3HFWVqusn/RcVoPeFFzdgard+6xQPXWNTm
         aet7H7AvqBcOAFAS1t5UEz4w/EOVmH/5nu721Fy8eaxG8qpgzM2NROxbac+fQl6EERhz
         D4eF3CkkrvtmwAugJOeiZ9djCmXIh37fy7ZMpOnCIG6sByS/TPrW9+p9jMYI6YiJyi43
         qXsA==
X-Gm-Message-State: APjAAAVOs9CFZbg67rTBUpqAssMBQSR4HRW7xKkvDsavcN/qVmOJvdKL
        haSf0D9X7JUMt+Goo8gDJ0u2kP3y
X-Google-Smtp-Source: APXvYqyiZTNUyyzU3N7qSlsYGZtBY03S5hUDgkD1lAS2/deNCXjZ/8AO0apy+HKe2cgKXhgKRmYKwQ==
X-Received: by 2002:adf:f151:: with SMTP id y17mr4529076wro.244.1568103993052;
        Tue, 10 Sep 2019 01:26:33 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id f143sm2299293wme.40.2019.09.10.01.26.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 01:26:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        Florin Blanaru <florin.blanaru96@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Quick fix for syscall man page
To:     Adam Borowski <kilobyte@angband.pl>, walter harms <wharms@bfs.de>
References: <CAMkHNDzkn10oZLyK9S8-UnjGn=OyMy=P8Bx7+vf0iEBwpc5p2g@mail.gmail.com>
 <CAKgNAkhOCxB_go-+qSJBAabJxi67c=iBXfajTY09CXUMUj=hnQ@mail.gmail.com>
 <5D761692.9090905@bfs.de> <20190909182747.GA12602@angband.pl>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6da7ef65-c9aa-b670-7305-25c7f4e9f9f8@gmail.com>
Date:   Tue, 10 Sep 2019 10:26:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190909182747.GA12602@angband.pl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Adam,

Thanks for jumping in.
On 9/9/19 8:27 PM, Adam Borowski wrote:
> On Mon, Sep 09, 2019 at 11:08:34AM +0200, walter harms wrote:
>> Am 09.09.2019 10:52, schrieb Michael Kerrisk (man-pages):
>>> [Adding Adam Borowski in CC, since he wrote the riscv text back at the
>>> start of 2018, andand he may have a comment.]
> 
> I don't know RISCV; I needed to learn how to issue syscalls to port
> something -- so I've searched for relevant documentation, tested that it
> indeed works, then submitted that line to make the man page complete.
> 
>>> On Thu, 5 Sep 2019 at 18:35, Florin Blanaru <florin.blanaru96@gmail.com> wrote:
>>>> http://man7.org/linux/man-pages/man2/syscall.2.html
>>>>
>>>> In the first table, for the riscv Arch/ABI, the instruction should be
>>>> ecall instead of scall.
>>>>
>>>> According the official manual, the instruction has been renamed.
>>>> https://content.riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf
> 
> What matters for us, and the vast majority of programmers, is that the
> rename predates merging into official releases of binutils.  Thus, there is
> no reason to ever use the old name in actual code.
> 
>> Maybe it would be helpful to add a "footnote" that this is a rename only.
>> Otherwise people may get confused.
> 
> I wonder, perhaps just a commit message would be enough?  The alias is
> historic only; new documentation is supposed to use the new name.  Man pages
> contain a lot of data that has been obsolete for decades -- it might be good
> to avoid stuff that became obsolete before the official release.
> 
> But it's up to you -- you know better what's your policy about historical
> information.

On reflection, I agree. I'll trim this back to a note in the commit
message only. (Nevertheless, thanks, Walter.)

Cheers,

Michael

>>> --- a/man2/syscall.2
>>> +++ b/man2/syscall.2
>>> @@ -196,7 +196,7 @@ mips        syscall v0      v0      v1      a3      1, 6
>>> -riscv  scall   a7      a0      a1      -
>>> +riscv  ecall   a7      a0      a1      -
> 
> 
> Meow!
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
