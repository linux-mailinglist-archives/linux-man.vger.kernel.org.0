Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2D1D64CBD8
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 15:11:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229781AbiLNOLE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 09:11:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238437AbiLNOK7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 09:10:59 -0500
Received: from smtp98.iad3b.emailsrvr.com (smtp98.iad3b.emailsrvr.com [146.20.161.98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EB67165BC
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 06:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
        s=20221208-6x11dpa4; t=1671027057;
        bh=ZT/5dBWvQ44qFw39cldDTgmijdIOuNxNV/KI7Upuc5s=;
        h=Date:Subject:To:From:From;
        b=bgyuoh17TdHi4/DHTMLdx0aK2O2gYbN2eWjbjXTE6GPLNDXt02rys+OVw46CZ4zzO
         DAPvP5F/2MPKhZr+rNRvldEo2Ws5JtN4emNeqJ4YqLqysDvzbDJpjF2H1od6AxyW72
         fGbaGllvGoKNionfnM4XIRMC+PrFfZfBQ/jBH0xY=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp21.relay.iad3b.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 8ECB320126;
        Wed, 14 Dec 2022 09:10:56 -0500 (EST)
Message-ID: <c10cf853-19ec-dd88-f366-90262c357151@mev.co.uk>
Date:   Wed, 14 Dec 2022 14:10:55 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>
Cc:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <1f339439-3346-6732-3544-8e0e0a0f9823@mev.co.uk>
 <ypiksfhiafsn.fsf@owlfolio.org>
 <6c9645b1-d0e4-4064-0e55-a0bead7d1f71@mev.co.uk>
 <7d561198-44f7-a64e-06ae-3ee41d156e82@gmail.com>
 <8be4b9ef-7579-fd6a-c2aa-72e92db7adc9@mev.co.uk>
 <dc7e92ad-8b69-fd78-3547-565ed86fa992@gmail.com>
Content-Language: en-GB
From:   Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <dc7e92ad-8b69-fd78-3547-565ed86fa992@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Classification-ID: 156116dd-cc69-418e-926b-d16c3d38b0c5-1-1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 14/12/2022 11:23, Alejandro Colomar wrote:
> 
> 
> On 12/14/22 11:52, Ian Abbott wrote:
>>>>
>>>> '@' isn't included in C's basic character set though.  '&' is 
>>>> available.
>>>
>>> Just a curious question from an ignorant:  what's the difference 
>>> between the basic character set and the source character set?
>>
>> The source character set may contain locale-specific characters 
>> outside the basic source character set.
>>
>> Actually, there are two basic character sets - the basic source 
>> character set and the basic execution character set (which includes 
>> the basic source character set plus a few control characters).  The 
>> source character set and/or execution character set may contain 
>> locale-specific, extended characters outside the basic character set.
>>
>> https://port70.net/~nsz/c/c11/n1570.html#5.2.1
> 
> I still have a small doubt.  C23 added '@' to the source character set, 
> but seems to be a second-class citizen:
> 
> 
> 
>   The execution character set may also contain multibyte characters, which
> need not have the same encoding as for the source character set. For 
> both character sets, the following
> shall hold:
> — The basic character set, @, $, and ` shall be present and each 
> character shall be encoded as a
> single byte.
> 
> What's the difference, and why isn't it part of the basic character 
> set?  Maybe because not all keyboards have those three characters?

I think the inability to type certain characters in the basic source 
character set is the reason why the language contains the horrible 
trigraph sequences (no longer valid since the C23 final draft N3054), 
and the slightly less horrible digraph tokens.

Here is the rationale for inclusion of @ and $ in the source and 
execution character sets, but ` is only mentioned briefly as an also-ran 
at the end of the document in section "Do we also want to add ` in the 
same way as @ and $?":

https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2701.htm

The rationale for exclusion of @ and $ characters from the basic 
character set is given in this paragraph from the document:

"""
By requiring @ and $ in the source and execution character set we, reach 
the goal of making them useable in comments and string literals. By not 
adding them to the basic source character set, we protect the freedom of 
implementations of allowing or disallowing them in identifiers, and 
avoid inconsistency or incompability regarding the use of universal 
character names (currently the use of universal character names for 
characters in the basic source character set is not allowed, so adding 
characters to the basic source character set without lifting that 
restriction could break existing code).
"""

I guess it was decided to add all three proposed characters during the 
Jan/Feb 2022 virtual meeting of WG14 as mentioned here:

https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2913.htm

The first C2x draft that incorporated the change is this one:

https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2912.pdf

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

