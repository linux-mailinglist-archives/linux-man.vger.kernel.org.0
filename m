Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E0496488F6
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 20:28:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbiLIT2b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 14:28:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbiLIT2a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 14:28:30 -0500
Received: from smtp81.iad3a.emailsrvr.com (smtp81.iad3a.emailsrvr.com [173.203.187.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2046AC6DA
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 11:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
        s=20221208-6x11dpa4; t=1670614107;
        bh=jFFmyUHyS2mEdSRVI7PZz42h72L1P9ArWxGUe8WV57o=;
        h=Date:Subject:To:From:From;
        b=okrowGoK51QXIjwb+/AnyoYXFPmlN4QvLijIQTbbvBP55ThcHyHQGSWyu4zb1QwNm
         gbdwdUsTUppR2U6VylMENMYFQPIprFijbISb6dMlp1qMyruQocX4bN4AXQDYs8rFU4
         RtKwNrAkHd8OSSGcyhxpaW3UZcua9wcM/RauP6Jk=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp27.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 51BB124846;
        Fri,  9 Dec 2022 14:28:27 -0500 (EST)
Message-ID: <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
Date:   Fri, 9 Dec 2022 19:28:26 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-GB
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
From:   Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Classification-ID: 74b4b762-0813-45e7-8ac6-0393c2075b2e-1-1
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 09/12/2022 18:59, Alejandro Colomar wrote:
> Hi Ian,
> 
> On 12/8/22 13:34, Ian Abbott wrote:
>> The `scanf()` function does not intentionally set `errno` to `ERANGE`.
>> That is just a side effect of the code that it uses to perform
>> conversions.  It also does not work as reliably as indicated in the
>> 'man' page when the target integer type is narrower than `long`.
>> Typically (at least in glibc) for target integer types narrower than
>> `long`, the number has to exceed the range of `long` (for signed
>> conversions) or `unsigned long` (for unsigned conversions) for `errno`
>> to be set to `ERANGE`.
>>
>> Documenting `ERANGE` in the ERRORS section kind of implies that
>> `scanf()` should return `EOF` when an integer overflow is encountered,
>> which it doesn't (and doing so would violate the C standard).
>>
>> Just remove any mention of the `ERANGE` error to avoid confusion.
>>
>> Fixes: 646af540e467 ("Add an ERRORS section documenting at least some 
>> of the errors that may occur for scanf().")
>> Cc: Michael Kerrisk <mtk.manpages@gmail.com>
>> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> 
> I see.  How about saying something like "it may also fail for any of any 
> errors that functions used to perform the conversions may fail"?

It depends what you mean by "fail".  These errors do not make scanf 
return EOF.  Technically, the behavior is undefined if the result of the 
conversion cannot be represented in the object being assigned to by 
scanf.  (In the case of glibc, that probably results in either the 
integer object being set to a truncated version of the input integer, or 
the integer object being set to a truncated version of LONG_MIN or 
LONG_MAX, depending on the actual number.)

Setting errno to 0 before calling scanf and expecting errno to have a 
meaningful value when scanf returns something other than EOF is bogus usage.

> 
> Cheers,
> 
> Alex

Cheers,
Ian

> 
>> ---
>>   man3/scanf.3 | 7 -------
>>   1 file changed, 7 deletions(-)
>>
>> diff --git a/man3/scanf.3 b/man3/scanf.3
>> index ba470a5c1..c5ff59f45 100644
>> --- a/man3/scanf.3
>> +++ b/man3/scanf.3
>> @@ -576,10 +576,6 @@ is NULL.
>>   .TP
>>   .B ENOMEM
>>   Out of memory.
>> -.TP
>> -.B ERANGE
>> -The result of an integer conversion would exceed the size
>> -that can be stored in the corresponding integer type.
>>   .SH ATTRIBUTES
>>   For an explanation of the terms used in this section, see
>>   .BR attributes (7).
>> @@ -609,9 +605,6 @@ The functions
>>   and
>>   .BR sscanf ()
>>   conform to C89 and C99 and POSIX.1-2001.
>> -These standards do not specify the
>> -.B ERANGE
>> -error.
>>   .PP
>>   The
>>   .B q
> 

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

