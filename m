Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 752A568A8C3
	for <lists+linux-man@lfdr.de>; Sat,  4 Feb 2023 08:19:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229449AbjBDHTc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Feb 2023 02:19:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbjBDHTb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Feb 2023 02:19:31 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 440D93BD89
        for <linux-man@vger.kernel.org>; Fri,  3 Feb 2023 23:19:30 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id O511pj91xc9C4OCpdpOENL; Sat, 04 Feb 2023 07:19:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675495169; bh=qcetIpWMGipPn2lqKJH0+owRtdo0rgctUo48PJJHmhk=;
        h=Date:Reply-To:Subject:To:References:Cc:From:In-Reply-To;
        b=Y/QFYp92UPcAFxXIpfvkwNPfohYTzOOWrDO29pIcTph94oYOhHLtqN+vDfFHKTK9O
         oqq9zQSUjr9/+ufOjoeZwdVYng30xHLGBC+YIM1KBtN0Oi7mOrgsHe87jWPfMdd6MA
         Snwt15VcHhE2OA/cR3bvNCqmx4fUivNx2/UVQUF+X5SgmMv73et6qjyo9I7juO0nYT
         gCEcHOoLNXbAB1s5+vY92tpYoWIUBVoGqptAUO867A1nE2NCY9mcLUAgEpP8RHuE3+
         cuU+wUufRN1HmP3Oq0t3N1CHXHHHT2xS2PRsPfRydNUoUbmB7/IH7EprSABKqCNtpe
         Ze9KsZkz6YLwQ==
Received: from [10.0.0.5] ([184.64.124.72])
        by cmsmtp with ESMTP
        id OCpcpnTYiyAOeOCpcpA5j6; Sat, 04 Feb 2023 07:19:29 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63de0701
 a=oHm12aVswOWz6TMtn9zYKg==:117 a=oHm12aVswOWz6TMtn9zYKg==:17
 a=IkcTkHD0fZMA:10 a=-0DEaQdXr7HJxSbumrUA:9 a=QEXdDO2ut3YA:10
Message-ID: <571ee4b8-15cc-470c-88a9-ec6ee09619cb@Shaw.ca>
Date:   Sat, 4 Feb 2023 00:19:28 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Reply-To: Linux Man-Pages <linux-man@vger.kernel.org>
Subject: Re: Using C23 digit separators not locale digit grouping characters
Content-Language: en-CA
To:     Linux Man-Pages <linux-man@vger.kernel.org>
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfB0sMexNuJ6ZPk35oOje/8JOY7GSHJ8t4geWB2nOfceuk5h5xwurs3WeRVNMb0nNWzy56vOaTnZVcXdVhmHIeh6oO0ATGtl5AVZSD4lIRhI2i+u18P2R
 7fnKQtGTkgAnYGsJ1eTF5SCqAoAL+mTB111Y0eIU9B8Gpkwoi+Hqhn9XwBfnCB7+HYGKw8wQNf2Wwjtjg71LN0LTli9DWnbldzUrBvxtGPJippYYYbDz+xpF
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-02-02 16:59, Alejandro Colomar wrote:
> On 2/2/23 23:29, Brian Inglis wrote:> Hi Alex,
>> Took your views on board and changed man2 pages.
>> Attached summary only has file names and changed lines.
> I prefer inline in the email :)
>> Would like feedback on what to continue doing and what to forget doing before 
>> starting man3?
> See below.
>> Of note for review are open.2 octal perms,
> The octals read a bit weirder than the others.  Please keep them in a separate 
> patch, so we can decide on it later.  But I wouldn't discard it for now.

Intend to keep these noted large changes in separate commits, in case of such 
issues.

>> reboot.2 LINUX_REBOOT_MAGIC* adding hex birth dates
> LGTM
>> (arguably should remove the decimals, or all values, and cryptic comment from 
>> doc?),
> Not sure what you mean.

See below - decimal (and added hex) "BCD" values of Linus and kid's birthdates!

>> statsf.2 hex *_MAGIC,
> LGTM
>> changing large arbitrary values to SI/IEC suffix forms (as the exact decimal 
>> values are not as informative or useful),
> But I'd use multipliers that result in exact values.  See below.
>> and feature docs using yyyy\(aqmmL (no example *code* was changed, although 
>> comments were).
> LGTM.
>> -the supplied value is clamped to the range (\-32768000, +32768000).
>> +the supplied value is clamped to the range (\-31.25Mi, +31.25Mi).
> I'd prefer here (\-32000Ki, +32000Ki).  Decimals on multipliers induce doubts on 
> how much precision you kept; round numbers make it clear.

Dithered about representing 32kKi - again magnitude seemed more important to 
document, but did not consider using decimals might introduce uncertainty about 
precision!

>> -is outside the range [0..999,999,999].
>> +is outside the range [0..999\(aq999\(aq999].
> Please fix also the format of the range, now that you're at it (in a separate 
> commit, if you don't mind).  I prefer mathematical notation, where possible: [0, 
> 999'999'999].
>> -field was not in the range 0 to 999999999 or
>> +field was not in the range 0 to 999\(aq999\(aq999 or
> Same here: [0, 999'999'999]

If we are changing to consistent interval notation in a separate patch, should 
we replace the closed inclusive limit strings of "[0, ...999]" by open exclusive 
limits e.g. "[0, 1G)" etc. or would semi-open be too ambiguous, as intervals 
seen in the sample so far are either open (...) or closed [...]?
I presume doc readers have less familiarity with maths and computer arithmetic 
than engineers or technical devs may require.

>> -source, a maximum of 33554431 bytes is returned by a single call to
>> +source, a maximum of 32Mi-1 bytes is returned by a single call to
> When the value is not an exact one, as here where it's the multiplier minus one, 
> I prefer a more correct mathematical notation: 2^25-1

I don't think that notation is meaningful documentation to most readers.
The original decimal value is easier to comprehend.
Even the hex 0x2000000-1 would be a bit more informative (0x20Mi-1).
An odd binary power does not bring a value quickly to mind, and has to be 
decoded to 2^5*2^20-1 to make any sense: I had to evaluate it to be sure!
With large values, the magnitude is more important to get across clearly with 
binary or decimal suffixes, although the value must be exact.

>> -(that is, 0xfee1dead) and
>> +(that is, 0xfee1\(aqdead) and
>> -(that is, 672274793).
>> +(that is, 672\(aq274\(aq793 0x2812\(aq1969).
>> -(that is, 85072278)
>> +(that is, 85\(aq072\(aq278 0x0512\(aq1996)
>> -(that is, 369367448)
>> +(that is, 369\(aq367\(aq448 0x1604\(aq1998)
>> -(that is, 537993216)
>> +(that is, 537\(aq993\(aq216 0x2011\(aq2000)
> In these cases, where you added the hex equivalent, I think it would need a 
> comma as a separator, and maybe some connector?

That's the decimal and "BCD" values of Linus and kid's birthdates if you look at 
the hex, to which the following "...meaningful" comment refers.
Suggest we separate with a dash, or I wondered if we should just drop the "cute" 
values and comments?
They are in the header if anyone other than Linus cares.

>> -this limit was 0x2000000 (32\ MB).
>> +this limit was 0x200\(aq0000 (32\ MiB).
> Could you please separate the bugfixes such as this one in a different patch, if 
> you don't mind?  I don't care about the order of them, though.
>> -AFS_SUPER_MAGIC       0x5346414f
>> -ANON_INODE_FS_MAGIC   0x09041934 /* Anonymous inode FS (for
>> +AFS_SUPER_MAGIC       0x5346\(aq414f
>> +ANON_INODE_FS_MAGIC   0x0904\(aq1934 /* Anonymous inode FS (
> I'm getting a bit confusing while reading the diff. The \(aq syntax is 
> definitely a bit confusing when mixed with other random characters that the 
> brain doesn't recognize as words. We can solve this by using \[aq] notation, 
> which I like more personally. Please use this syntax. We'll also need some 
> global fixes to change the notation all across the pages. I'm not asking you
> to do this though. It's probably a lot of work. I can do that after your
> patches.

Agree here, that's why I wanted you to have a look at the changes first.

> Other than those minor comments, I like the diff very much.  Please continue :)

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
