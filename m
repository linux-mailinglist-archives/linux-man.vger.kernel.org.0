Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47B9268E6E1
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 04:58:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbjBHD62 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 22:58:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbjBHD61 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 22:58:27 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F3473AA1
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 19:58:25 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id PXI1pr0zJc9C4PbbEpZtMm; Wed, 08 Feb 2023 03:58:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675828704; bh=pLzCsa5HnDUsw2HbwW9L5d2aNxEKee967ZjVCpIsl0o=;
        h=Date:Reply-To:Subject:To:References:Cc:From:In-Reply-To;
        b=a0A30dpjycYUhdGnru/GrPJYSgUH7s2Lz+sPkb/g8B6pNNOOYMEZwUiLHlqfCIGlV
         dd9V9P5rXuQcpynwJxeuvm6tX2XeXJJMmUCbNSVr2cMfTO5XDACm3COnwyohmktSj1
         6riYV5DHUhXXxZKRuP4MlG22BXvNsdnf5CEKSb321SGvo3l4Q6SluoPCOqu/3KOZEg
         s9ovPbe5fP8QuLTRIdtx80sYNcI+JWtgfdf0hck3jRbIRQpbJj0PlggGJrp6qvg2IN
         A+kn3GethHY/Lv9oSFwJAjPBZO531UqTYbm8W4HRJw1OIbdeFeiOMBqTI7JoHSLUon
         JLnQtQeRtRreQ==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id PbbDpAGs2yAOePbbDpIJiF; Wed, 08 Feb 2023 03:58:24 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63e31de0
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=8pif782wAAAA:8 a=HjEdur_ZAAAA:8 a=uOwCwXZx0VghgB-YxooA:9
 a=QEXdDO2ut3YA:10 a=aD4WmjVXVPxnezg8-Tec:22
Message-ID: <0ff16070-522a-d943-f7b5-3696f002c520@Shaw.ca>
Date:   Tue, 7 Feb 2023 20:58:23 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
Content-Language: en-CA
To:     Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230207201132.49747-1-Brian.Inglis@Shaw.ca>
 <4f2f18f59261d9da0d7e1c530ad6e63b6b367a2d.1675800581.git.Brian.Inglis@Shaw.ca>
 <5683f0e0-f561-d7e8-8727-c1453178bba0@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <5683f0e0-f561-d7e8-8727-c1453178bba0@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfDphFi4JI3XPfm3bBl1v/sGW9pmwuwoG2qnniRq089qicJLvpoWjk4DRaGs2SyHwX/+g9l9395XQyj4xOVBVIP+nG5lgyP1ciemm/E7/gxnYl0JfHfPx
 vg2+rX19ongwGBSOqrZkiLix8JOKlnEHLeaaVpuSgjrhWLUroYT+7lSpkX1QwPWaUpalhO74R6tuG8XdUQts61LCHVrtzjx9Cgs6uauPhucbehiVMfFF3RWd
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

TL;DR: They are bit/byte unit prefixes kibi..., ... but abstract value suffix 
symbols, which is how I think of them, and mainly how we use them. Perhaps we 
should just call them all multiples or symbosl, as we only sometimes(/rarely?) 
use them as unit prefixes (and seldom written out, only to explain the weird Xi 
notation)? Feel free to change the titles and log messages as you see fit.

[BT;DT: Many discussions about units over the decades, including various 
*industry* conventions about "accepted" units, values, and conversion factors, 
invariant regardless of SI and CODATA.

ISO/BIPM etc. uses SI to mean decimal *metric* unit prefixes (and notes that SI 
does not support non-physical units of information) and IEC to mean binary unit 
prefixes for bits, bytes, and also allows Hertz so far. See refs from:

https://en.wikipedia.org/wiki/Binary_prefix#cite_note-bipm-book-91

Bureau International des Poids et Mesures. (2006). "§3.1 SI prefixes" (PDF). The 
International System of Units (SI) (in French and English) (8th ed.). Paris: 
STEDI Media. p. 127. ISBN 978-92-822-2213-3. Archived (PDF) from the original on 
2006-08-13. Retrieved 2007-02-25. [Side note:] These SI prefixes refer strictly 
to powers of 10. They should not be used to indicate powers of 2 (for example, 
one kilobit represents 1000 bits and not 1024 bits). The IEC has adopted 
prefixes for binary powers in the international standard IEC 60027-2: 2005, 
third edition, Letter symbols to be used in electrical technology – Part 2: 
Telecommunications and electronics. The names and symbols for the prefixes 
corresponding to 2^10, 2^20, 2^30, 2^40, 2^50, and 2^60 are, respectively: kibi, 
Ki; mebi, Mi; gibi, Gi; tebi, Ti; pebi, Pi; and exbi, Ei. Thus, for example, one 
kibibyte would be written: 1 KiB = 210 B = 1024 B, where B denotes a byte. 
Although these prefixes are *not part of the SI*, they should be used in the 
field of information technology to avoid the incorrect usage of the SI prefixes.

BIPM SI Brochure 2022 edition (adding ronna/ronta, quetta/quecto, etc.) English 
text only p.143 side note (the only uses of "bit" in the document; "byte" is not 
used; "information" and "word" are used only in the literate senses):

https://www.bipm.org/documents/20126/41483022/SI-Brochure-9-EN.pdf#page=29

"The SI prefixes refer
strictly to powers of 10.
They should not be used to
indicate powers of 2
(for example, one kilobit
represents 1000 bits and
not 1024 bits). The names
and symbols for prefixes to
be used with powers of 2
are recommended as
follows:
kibi Ki 2^10
mebi Mi 2^20
gibi Gi 2^30
tebi Ti 2^40
pebi Pi 2^50
exbi Ei 2^60
zebi Zi 2^70
yobi Yi 2^80"

...no
robi Ri 2^90
qubi Qi 2^100
yet! ;^> ]

On 2023-02-07 16:44, Alejandro Colomar wrote:
> Hi Brian,
> 
> The subject is not correct, IMO.  The SI also defines the Ki, Mi, ... prefixes for binary multipliers.
> Also, they are prefixes, not suffixes.
> 
> Cheers,
> 
> Alex
> 
> On 2/7/23 21:11, Brian Inglis wrote:
>> ---
>>   man2/shmget.2 | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man2/shmget.2 b/man2/shmget.2
>> index cdb2d3bee4b5..4bc18bedf3a9 100644
>> --- a/man2/shmget.2
>> +++ b/man2/shmget.2
>> @@ -354,7 +354,7 @@ for a discussion of why this default value (rather than
>>   is used.
>>   .IP
>>   From Linux 2.2 up to Linux 3.15, the default value of
>> -this limit was 0x2000000 (32\ MB).
>> +this limit was 0x2000000 (32\ MiB).
>>   .IP
>>   Because it is not possible to map just part of a shared memory segment,
>>   the amount of virtual memory places another limit on the maximum size of a

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
