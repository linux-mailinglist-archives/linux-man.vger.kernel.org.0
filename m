Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1E585AE894
	for <lists+linux-man@lfdr.de>; Tue, 10 Sep 2019 12:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729604AbfIJKqA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Sep 2019 06:46:00 -0400
Received: from mx01-fr.bfs.de ([193.174.231.67]:21455 "EHLO mx01-fr.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728238AbfIJKqA (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 10 Sep 2019 06:46:00 -0400
Received: from mail-fr.bfs.de (mail-fr.bfs.de [10.177.18.200])
        by mx01-fr.bfs.de (Postfix) with ESMTPS id A0E7520358;
        Tue, 10 Sep 2019 12:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1568112353; h=from:from:sender:reply-to:reply-to:subject:subject:date:date:
         message-id:message-id:to:to:cc:cc:mime-version:mime-version:
         content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=FHoJ618uOSDpnhJjaDquP/wIT7cljtjIK7QSJC1BE88=;
        b=RdN/U1kG2gceFViaPJxQCcPtLJ1w4XHj7gnTYXUzAKXOc0/P4cPhb6OBQPZ3bRhdReMU5D
        zMK5SFs7ISlS/N2z39hICZZ2i3IrzGPgyHwrSjfJvT7kciRXznFbq1Af0Q/8OvIS6+EjDj
        wMuw5aqRxtrmy7rVdL9E6G9+STeNsjCrU3QA0T9nJ9cqrxRbJ16aMGeCkCbGwi5GOSrdhm
        5J13xblkq8PoZoR+Ni8JAQEMLXLS65T97BaeaZBcmdSkCpf5G2b2/LdVXLOkYkevXoGosC
        zuSSV3dRIHjJOspJS5mTP3/+hBf2YS2fnWGt14wG4KZEXhoXK1JsHJds8XpXHQ==
Received: from [134.92.181.33] (unknown [134.92.181.33])
        by mail-fr.bfs.de (Postfix) with ESMTPS id 9E7C7BEEBD;
        Tue, 10 Sep 2019 12:45:52 +0200 (CEST)
Message-ID: <5D777EE0.6030906@bfs.de>
Date:   Tue, 10 Sep 2019 12:45:52 +0200
From:   walter harms <wharms@bfs.de>
Reply-To: wharms@bfs.de
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; de; rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Thunderbird/3.0.11
MIME-Version: 1.0
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     Adam Borowski <kilobyte@angband.pl>,
        Florin Blanaru <florin.blanaru96@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Quick fix for syscall man page
References: <CAMkHNDzkn10oZLyK9S8-UnjGn=OyMy=P8Bx7+vf0iEBwpc5p2g@mail.gmail.com> <CAKgNAkhOCxB_go-+qSJBAabJxi67c=iBXfajTY09CXUMUj=hnQ@mail.gmail.com> <5D761692.9090905@bfs.de> <20190909182747.GA12602@angband.pl> <6da7ef65-c9aa-b670-7305-25c7f4e9f9f8@gmail.com>
In-Reply-To: <6da7ef65-c9aa-b670-7305-25c7f4e9f9f8@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.10
Authentication-Results: mx01-fr.bfs.de
X-Spamd-Result: default: False [-3.10 / 7.00];
         ARC_NA(0.00)[];
         HAS_REPLYTO(0.00)[wharms@bfs.de];
         BAYES_HAM(-3.00)[100.00%];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         REPLYTO_ADDR_EQ_FROM(0.00)[];
         HAS_WP_URI(0.00)[];
         TO_DN_ALL(0.00)[];
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-0.999,0];
         FREEMAIL_TO(0.00)[gmail.com];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         RCVD_TLS_ALL(0.00)[]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



Am 10.09.2019 10:26, schrieb Michael Kerrisk (man-pages):
> Hello Adam,
> 
> Thanks for jumping in.
> On 9/9/19 8:27 PM, Adam Borowski wrote:
>> On Mon, Sep 09, 2019 at 11:08:34AM +0200, walter harms wrote:
>>> Am 09.09.2019 10:52, schrieb Michael Kerrisk (man-pages):
>>>> [Adding Adam Borowski in CC, since he wrote the riscv text back at the
>>>> start of 2018, andand he may have a comment.]
>>
>> I don't know RISCV; I needed to learn how to issue syscalls to port
>> something -- so I've searched for relevant documentation, tested that it
>> indeed works, then submitted that line to make the man page complete.
>>
>>>> On Thu, 5 Sep 2019 at 18:35, Florin Blanaru <florin.blanaru96@gmail.com> wrote:
>>>>> http://man7.org/linux/man-pages/man2/syscall.2.html
>>>>>
>>>>> In the first table, for the riscv Arch/ABI, the instruction should be
>>>>> ecall instead of scall.
>>>>>
>>>>> According the official manual, the instruction has been renamed.
>>>>> https://content.riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf
>>
>> What matters for us, and the vast majority of programmers, is that the
>> rename predates merging into official releases of binutils.  Thus, there is
>> no reason to ever use the old name in actual code.
>>
>>> Maybe it would be helpful to add a "footnote" that this is a rename only.
>>> Otherwise people may get confused.
>>
>> I wonder, perhaps just a commit message would be enough?  The alias is
>> historic only; new documentation is supposed to use the new name.  Man pages
>> contain a lot of data that has been obsolete for decades -- it might be good
>> to avoid stuff that became obsolete before the official release.
>>
>> But it's up to you -- you know better what's your policy about historical
>> information.
> 
> On reflection, I agree. I'll trim this back to a note in the commit
> message only. (Nevertheless, thanks, Walter.)
> 

Just my view on this:

most people that work on this level may know about that. NTL they also
tend to stick what worked last time. IMHO is the note important since
this is a naming only, you look at the man page not at the archive when
you are in doubt.

Something like: "In 2017 scall war renamed as ecall" is a harmless note.

note; i am not a risc programmer. it is just a general concern.

re,
 wh

> Cheers,
> 
> Michael
> 
>>>> --- a/man2/syscall.2
>>>> +++ b/man2/syscall.2
>>>> @@ -196,7 +196,7 @@ mips        syscall v0      v0      v1      a3      1, 6
>>>> -riscv  scall   a7      a0      a1      -
>>>> +riscv  ecall   a7      a0      a1      -
>>
>>
>> Meow!
>>
> 
> 
