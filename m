Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40E2D681ABF
	for <lists+linux-man@lfdr.de>; Mon, 30 Jan 2023 20:47:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233828AbjA3Trq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Jan 2023 14:47:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231469AbjA3Trp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Jan 2023 14:47:45 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B74FC157
        for <linux-man@vger.kernel.org>; Mon, 30 Jan 2023 11:47:42 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id MXCupb2wCc9C4Ma7xp6t3a; Mon, 30 Jan 2023 19:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675108061; bh=oJmvQTcc0AEl/BDdD6u3vKSrGAPqoWHJLhZ5SwckGXU=;
        h=Date:To:Cc:References:Subject:Reply-To:From:In-Reply-To;
        b=evOB/BhuclwoJiKUsRTPLSBeE4J6QAVy9SO596LkTbNj1f6BxaUkPn+mwV+z0/AFS
         Wg42RSIQPhZpd1A+GuPNyaaWdoegCkO4p74RgfFlKaLVKRw6HKdscUb7ne9NFwismf
         fiIHb4OreeMTDtNQmc8QakJppGHbfGF6iirqQ5g794o9Trm5Mr5Zz8S5vIsTYRQKcH
         u8QrpQkhzf70cnLPStWFIPI+2cV2qXmkRoW9DgDaYVnGFX41mKzNLd8y/t+2LnHVWE
         9WXncM4pIqRusprS4XC+GxwKZrLK2bwt85Eitc+S9MhoBl9PVBi95oyVUiXoX1X/Ft
         UD7ytHVtXc6QA==
Received: from [10.0.0.5] ([184.64.124.72])
        by cmsmtp with ESMTP
        id Ma7wpsRIDHFsOMa7wpouwC; Mon, 30 Jan 2023 19:47:41 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63d81edd
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=IkcTkHD0fZMA:10 a=pGLkceISAAAA:8 a=Vt2AcnKqAAAA:8 a=uZvujYp8AAAA:8
 a=2CHKNSGiEJdr7o6VHQAA:9 a=QEXdDO2ut3YA:10 a=v10HlyRyNeVhbzM4Lqgd:22
 a=SLzB8X_8jTLwj6mN0q5r:22
Message-ID: <431fb7f6-06b4-e71a-3c3d-8861ccba6baa@Shaw.ca>
Date:   Mon, 30 Jan 2023 12:47:40 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     nabijaczleweli@nabijaczleweli.xyz, alx.manpages@gmail.com
References: <e09ac267-0c0f-56df-2f38-f6fd345f5ad2@gmail.com>
Subject: Re: [PATCH 1/3] timespec.3type: tv_nsec is impl-def-type, glibc llong
 not a bug
Reply-To: Linux Man-Pages <linux-man@vger.kernel.org>
Content-Language: en-CA
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <e09ac267-0c0f-56df-2f38-f6fd345f5ad2@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfNbk2otjomnCrtlepEaCs5mAiPxOmBS8Gh1SsYALOnVT99SGVsJdvsIxIAs/OgEWR54XtkcaTwEq882xtXSLUhHI/0sI6UgOkndIqDA9WtnB3jALMmjM
 TFBjxtHcHr2IigO3v2cuSdx4/ZfQ3+G9bx7ib4Inow1Xie43ZDGcJkUB6oYJcm6LoSuI0J+UkGy5ahR9fbxRyWnfZhxjh/s5Nl7aK2U6WzWBeKAg8B57slRH
 IxQObw3PhDbi6z4PvftYKUofAPrcbFYPwcR5icf/GfU=
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 30 Jan 2023 14:54:39 +0100, Alejandro Colomar wrote:
> On 1/30/23 14:50, G. Branden Robinson wrote:
>> At 2023-01-30T14:15:50+0100, Alejandro Colomar wrote:
>>> On 1/30/23 08:08, Jakub Wilk wrote:
>>>> * Alejandro Colomar <alx.manpages@gmail.com>, 2023-01-29 16:48:
>>>>>> +.BR "    /*\(da*/   tv_nsec;" "  /* Nanoseconds [" 0 ", " 999999999 "] */"

>>>> Please make it
>>>>     /* see below */ tv_nsec
>>>> or maybe
>>>>     long /* but see below */ tv_nsec
>>>> (given that C23 is not a thing yet).

>>> The reason why I seriously considered /*↓*/ is that it is a bit
>>> shocking to the reader, which will prompt it to read the rest of the
>>> page to see what the hell that is.

>> Even more shocking will be 'v', which is what it will degrade to on
>> ASCII, ISO 8859, and code page 1047 terminals.  On top of being
>> startling, it will look simply like an error.

>>> I'm worried that if we make it `long` plus a comment to see below,
>>> many will ignore it.

>> That's on them.  "/* see below */" means what it says.  A person cannot
>> reasonably claim they weren't warned.

>> I think
>> long /* see below */ tv_nsec;
>> meets the requirements at issue.

The last POSIX 202x Issue 8 Draft 2.1 2021-08 says under B.2.8.5 Clocks and 
Timers - • Data Definitions for Clocks and Timers from lines numbered 121835ff:

"Time values are represented in the timespec structure.
The tv_sec member is of type time_t so that this member is compatible
with time values used by POSIX.1 functions and the ISO C standard.
The tv_nsec member is a *signed long* in order to simplify and clarify
code that decrements or finds differences of time values.
Note that because 1 billion (number of nanoseconds per second) is less
than half of the value representable by a signed 32-bit value, it is
always possible to add two valid fractional seconds represented as
integral nanoseconds without overflowing the signed 32-bit value."

and other mentions repeat its 32-bitness, disallow values < 0 or >= 1Mi, laud 
simplicity of arithmetic, and eschew binary fraction representations!

More recent discussions about implementation-defined type start from the 
publicly available archive and mention N2878:

https://www.mail-archive.com/austin-group-l%40opengroup.org/msg09706.html

with replies:

"The Linux issue raised there has been discussed here in the past (2014) and was 
considered simply a bug that either glibc or the kernel should fix."

"(There are other reasons why the motivation for the change seems weak, such as 
that the primary motivating example given is to facilitate working around a 
Linux kernel issue that was fixed five years ago.)"

"...suggestion that perhaps changing this type might be acceptable is being 
taken as approval from the AG that such a change should go into C2x. ..., I 
propose to refute this during the upcoming ballot resolution meeting unless 
someone can persuade me I'm wrong!"

"In any case, if C23 changes it to nsec_t and we decide we want it to remain a 
long in POSIX, we can simply require that nsec_t is defined as a long in Issue 9."

"If that's the proposal, then I agree with you, that's relatively harmless for 
POSIX code (slightly more difficult for strict C code, and they should certainly 
be adding a PRI macro to inttypes.h - all invented printable types should have 
at least one such a macro defined).
But if the proposal is to change it to int32_t (or worse uint32_t) then that 
would be a real problem - despite 32 bits clearly being enough to represent a 
count of nanoseconds within one second (had the tv_nsec field been defined that 
way originally, that would have been OK, but it cannot be changed into that now)."

WG14 documents repeat the long-ness but have little discussion from 2011 drafts 
until N2878 and N3066.

Perhaps some more discussion between committee members who are Linux 
implementers and/or representatives on other/both standards bodies (e.g. liaison 
Nick), could help resolve this discrepancy, before one gets frozen in a position 
that some other can not conform to?

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
