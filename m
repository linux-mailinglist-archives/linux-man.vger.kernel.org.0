Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B599D68016C
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 22:04:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234378AbjA2VEv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 16:04:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbjA2VEv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 16:04:51 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAC7D213E
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 13:04:49 -0800 (PST)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id M5BKpZ0khc9C4MEr2p4FU0; Sun, 29 Jan 2023 21:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675026288; bh=twaboT/5r8vw61W0g4m1nu8Ge7LDtoQEJNO2oqOWdZ0=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=trEdYjP028bZPHbzCPAXZ6lzDv/eMflEqmtBbShVLrE+Co/MAGukxt5wTdmmTi9t8
         6AjDv2YHRBi0Fp0+xBBDeB9KaxZFpfFTts+ugrDaFlLJge0Awx+/1ESd8RjWwFlJsu
         qExivBi48NrjP/Vu24UULsFEuNhc+JNAoTUxrTPh4/KatXEGzQgfKu7qaQBzgaulPZ
         3FrcUG6LzkgtIYmQ+60ssbzkgzi2W2/D3RFc329hGpSv0NhutuuUo2+3RMKXAiPfOz
         NqVNBgbY60VciyPUVQfHTwJ3s+Md0PQAN3wi9aS5TxVbU4pABUH9hodlyicjlsAMWm
         RdXT9cDReT8gg==
Received: from [10.0.0.5] ([184.64.124.72])
        by cmsmtp with ESMTP
        id MEr2pq1JU3fOSMEr2py3g8; Sun, 29 Jan 2023 21:04:48 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=63d6df70
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=IkcTkHD0fZMA:10 a=cZUlWac7m9qrY66vypkA:9 a=QEXdDO2ut3YA:10
Message-ID: <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
Date:   Sun, 29 Jan 2023 14:04:47 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Reply-To: Linux Man-Pages <linux-man@vger.kernel.org>
Subject: Re: Using C23 digit separators not locale digit grouping characters
Content-Language: en-CA
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfIrlYDjmXWjn42R46GarFVe5m3AMBpoEePhKIc4x0DLHG+W38rxPqJCMI38r9u9MgzGu+R0K7jYFnQpNkhWUDOuhJbIno9dUNEu01OrRyWgn0hjjH+F6
 wZYWsV2434S6QvKTXH9T1DEd/5WMmhpXfc/kPmhAhYtXKY0hzi6sdFDJw76taWGcySPZcED3LhRS5skXn8RssDgXN8nlQRyK+27IfaXmf9v1e4ZEVniwa9go
 yeMn7DIC50YqayycybRHRXDXE3+/Kf5gJUdhpfgh1i8=
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-01-29 07:38, Alejandro Colomar wrote:
> On 1/28/23 21:40, Brian Inglis wrote:
>> Seeing the recent tv_nsec patches drop the standard locale digit grouping 
>> characters "," from the member range [0-999,999,999] made me regret the loss 
>> of the punctuation which provides better and quicker comprehension of long 
>> strings of digits.

> Nice! Didn't remember about that separator.  It makes a lot of sense to use it 
> in comments and the likes in the pages.  Maybe we should be a bit more cautious 
> in source code examples, but definitely for big numbers outside of running code 
> should have them.
The major compilers support them from draft C23, and the code is in examples, 
not source that has to compile on older compilers, so not much to be concerned 
about there, although some more opinions would be helpful.

> наб, would you please update your patches with that?  I also have a few
> comments that I'll write in a moment in answers to your patches.
>> It may be time to consider using the locale independent C23 digit
>> separator characters "'" wherever more than a handful of digits occur,
>> possibly convert grouping character uses in existing man pages as they are
>> changed, and specify a future standard policy approach to provide better
>> and quicker comprehension of long strings of digits: perhaps using a new
>> digit separator register and glyph escape sequence \*ds \*[ds] \[ds] \(ds
>> if not in use by base groff?
> The sequence for the unslanted single quote is \(aq.
Granted, but would it not be better to consider using a semantic digit separator 
groff man escape sequence, especially in text, whose rendering could be tweaked, 
rather than a generic literal apostrophe quote used everywhere?
If nothing else is proposed and accepted, I will use the generic \(aq, and if 
future changes are required, they can be targeted by digit context.

> We could add somewhere in man-pages(7) that decimal numbers should use a 
> separator every 3 digits, and hex and binary should use it every 4 digits.
As well as the 3 decimal, 4 binary/hex, we could use yyyy'mm['dd]L for POSIX and 
similar date digit strings, and 0x10'ffff for Unicode code points, 
distinguishing between the Basic and Supplementary Multilingual Plane indices 
and codes, just as examples from what I've seen so far.

I've also noticed a lot of apparently random decimal digit strings that are 
binary powers or close deltas: those would be more comprehensible if rendered in 
text as Ki/Mi/Gi[+/-n], so would that be preferable, using the IEC i suffix to 
avoid ambiguity?

>> As well as the recently modified pages:
>> 
 >> clock_getres.2
 >> timer_settime.2
 >> timerfd_create.2
 >> utimensat.2
>> 
>> there appear to be obvious occurrences in only the following pages:
>> 
 >> futex.2
 >> read.2
 >> sendfile.2
 >> write.2
 >> mallopt.3
 >> keyrings.7
 >> mq_overview.7
 >> sched.7
 >> time_namespaces.7
>> 
>> but there appear to be about 400 pages with more than 6 decimal digit
>> strings (some spurious glibc hex commits and address outputs) where it
>> could perhaps help, such as in POSIX version dates e.g. 2001'12L, and
>> undoubtedly more with long digit strings in other radixes.
> Would you mind preparing a patch for all of those?  If you'll do it, better
> wait until we merge наб's patches, to avoid conflicts.
I'll start anyway, need to review over 300 files with over 900 digit strings, 
having cut a bunch more pages with output examples.

Any particular subdivision of files patched into git logged patches, by section, 
by type of edit, separate logged patches for files with many edits, or...?

FYI although many hits are likely output, the top candidates so far are:

80 man5/proc.5
55 man2/statfs.2
34 man7/feature_test_macros.7
32 man3/dl_iterate_phdr.3
30 man7/units.7
30 man5/rpc.5
23 man3/termios.3
20 man3/malloc_info.3
17 man2/userfaultfd.2
16 man7/keyrings.7
15 man7/time_namespaces.7
14 man7/posixoptions.7
14 man3/mallopt.3
13 man7/utf-8.7
12 man2/reboot.2
12 man2/keyctl.2

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
