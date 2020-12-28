Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D8B62E6BC3
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 00:14:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730676AbgL1Wzw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 17:55:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729491AbgL1VJa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 16:09:30 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 781C6C0613D6
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 13:08:49 -0800 (PST)
Received: from localhost (unknown [IPv6:2804:431:c7f5:e396:88cd:ceb6:57aa:eaba])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: krisman)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 09A541F4430B;
        Mon, 28 Dec 2020 21:08:46 +0000 (GMT)
From:   Gabriel Krisman Bertazi <krisman@collabora.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v5] prctl.2: Document Syscall User Dispatch
Organization: Collabora
References: <20201223182911.4066380-1-krisman@collabora.com>
        <85b23b60-a92c-a5a8-1cc5-24bdfb8b3530@gmail.com>
        <c73ca93d-b723-adc1-0603-4c7f9ecc458e@gmail.com>
        <CAKgNAkgUabNogtQGzGGo4K8CN1wTL-nH=gjuFNGfXM+ysQ+CQQ@mail.gmail.com>
        <869fca51-770f-ed44-4196-e99189832e69@gmail.com>
        <CAKgNAkiGg0=TF4TCKvSFxmBnC2FwwvySxFte8Lnz+ny2T692pA@mail.gmail.com>
Date:   Mon, 28 Dec 2020 18:08:42 -0300
In-Reply-To: <CAKgNAkiGg0=TF4TCKvSFxmBnC2FwwvySxFte8Lnz+ny2T692pA@mail.gmail.com>
        (Michael Kerrisk's message of "Mon, 28 Dec 2020 21:53:36 +0100")
Message-ID: <877dp1y6xx.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:

> On Mon, 28 Dec 2020 at 21:41, Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>>
>>
>>
>> On 12/28/20 9:06 PM, Michael Kerrisk (man-pages) wrote:
>> > Hi Alex,
>> >
>> > On Mon, 28 Dec 2020 at 19:24, Alejandro Colomar (man-pages)
>> > <alx.manpages@gmail.com> wrote:
>> >>
>> >> Hi Michael & Gabriel,
>> >>
>> >> I disagree on a comment; see below.
>> >>
>> >> On 12/24/20 10:18 AM, Michael Kerrisk (man-pages) wrote:
>> >>> Hello Gabriel,
>> >>>
>> >>> Thanks for the revisions!
>> >>>
>> >> [...]
>> >>>> +.IP
>> >>>> +When
>> >>>> +.I arg2
>> >>>> +is set to
>> >>>> +.BR PR_SYS_DISPATCH_ON ,
>> >>>> +.I arg3
>> >>>> +and
>> >>>> +.I arg4
>> >>>> +respectively identify the
>> >>>> +.I offset
>> >>>> +and
>> >>>> +.I length
>> >>>> +of a single contiguous memory region in the process map
>> >>>> +from where system calls are always allowed to be executed,
>> >>>> +regardless of the switch variable
>> >>>> +(Typically, this area would include the area of memory
>> >>>> +containing the C library).
>> >>>
>> >>> s/)./.)/
>> >>
>> >> That point is ending the full sentence starting at 'When',
>> >
>> > I see it the other. The piece in parentheses is a free-standing idea
>> > that should be (parenthetical) sentence on its own.
>> >
>> > But, if that was not the case, your points below would hold.
>>
>> Hi Michael,
>>
>> I see; but there still isn't any separator between '... switch
>> variable', and 'arg5 points to ...'.
>>
>> Would you then do?:
>>
>> [
>> +regardless of the switch variable_._
>> ]
>>
>> Or what?
>
> Oh yes. I missed that. That period also needs to be added!
>

Which one?

> +regardless of the switch variable_._

or

> I see; but there still isn't any separator between '... switch
> variable', and 'arg5 points to ...'.

which would be .). 

-- 
Gabriel Krisman Bertazi
