Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCF08649BDA
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 11:17:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231683AbiLLKRQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 05:17:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231875AbiLLKRH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 05:17:07 -0500
X-Greylist: delayed 589 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 12 Dec 2022 02:17:05 PST
Received: from smtp107.iad3b.emailsrvr.com (smtp107.iad3b.emailsrvr.com [146.20.161.107])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A1432C8
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 02:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
        s=20221208-6x11dpa4; t=1670839636;
        bh=gQdFebfYZcP7p9JUFuvn+6IBK4Wo2WtyJm3YpRwE/UE=;
        h=Date:Subject:To:From:From;
        b=D2oBZELh9099eBz8mD0MX9a8ci10qRkmAPBJD/tw9JCdre+VduWaCPTfN9A6mwTQt
         js+3XAfrhltpdwEzZbF7ubCX3ICI446GE7WnUIKcxqJps3x1C/EUrT4P1p3FjHoa+e
         rF1JFUutrxndzKKfo+/V3Vfdc1Rk1jpYf+YxW5ZY=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp14.relay.iad3b.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 9DCA6E00F9;
        Mon, 12 Dec 2022 05:07:15 -0500 (EST)
Message-ID: <5af4f708-337f-fddf-9a2d-e0e4602d3a72@mev.co.uk>
Date:   Mon, 12 Dec 2022 10:07:13 +0000
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
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
From:   Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Classification-ID: 64c27f69-6426-427e-b097-a550a7c08a94-1-1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 09/12/2022 19:33, Alejandro Colomar wrote:
> Hi Ian,
> 
> On 12/9/22 20:28, Ian Abbott wrote:
>> On 09/12/2022 18:59, Alejandro Colomar wrote:
>>> On 12/8/22 13:34, Ian Abbott wrote:
>>>> The `scanf()` function does not intentionally set `errno` to `ERANGE`.
>>>> That is just a side effect of the code that it uses to perform
>>>> conversions.  It also does not work as reliably as indicated in the
>>>> 'man' page when the target integer type is narrower than `long`.
>>>> Typically (at least in glibc) for target integer types narrower than
>>>> `long`, the number has to exceed the range of `long` (for signed
>>>> conversions) or `unsigned long` (for unsigned conversions) for `errno`
>>>> to be set to `ERANGE`.
>>>>
>>>> Documenting `ERANGE` in the ERRORS section kind of implies that
>>>> `scanf()` should return `EOF` when an integer overflow is encountered,
>>>> which it doesn't (and doing so would violate the C standard).
>>>>
>>>> Just remove any mention of the `ERANGE` error to avoid confusion.
>>>>
>>>> Fixes: 646af540e467 ("Add an ERRORS section documenting at least 
>>>> some of the errors that may occur for scanf().")
>>>> Cc: Michael Kerrisk <mtk.manpages@gmail.com>
>>>> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
>>>
>>> I see.  How about saying something like "it may also fail for any of 
>>> any errors that functions used to perform the conversions may fail"?
>>
>> It depends what you mean by "fail".  These errors do not make scanf 
>> return EOF. 
> 
> Just to clarify.  Does scanf(3) _never_ fail (EOF) due to ERANGE?  Or is 
> it that ERANGE sometimes makes it fail, sometimes not?

The glibc implementation certainly doesn't return EOF when ERANGE is 
detected.  __vfscanf_internal() in stdio-common/vfscan-internal.c does 
not contain any code to deal with ERANGE - it's just a side-effect of 
the calls to __strtol_internal(), __strtoul_internal(), 
__strtoll_internal(), or __strtoull_internal().

> If it's the former, I agree with your patch.  When a function hasn't 
> reported failure, errno is unspecified.
> 
> If it's the latter, I'd write something about it.

For the glibc implementation, it's the former.

>> Technically, the behavior is undefined if the result of the conversion 
>> cannot be represented in the object being assigned to by scanf.  (In 
>> the case of glibc, that probably results in either the integer object 
>> being set to a truncated version of the input integer, or the integer 
>> object being set to a truncated version of LONG_MIN or LONG_MAX, 
>> depending on the actual number.)
> 
> Hmm, UB.  Under UB, anything can change, so error reporting is already 
> unreliable.  If EOF+ERANGE can _only_ happen under UB, I'd rather remove 
> the paragraph.  Please confirm.

Yes, it is UB as per C17 7.21.6 paragraph 10: "[...] Unless assignment 
suppression was indicated by a *, the result of the conversion is placed 
in the object pointed to by the first argument following the format 
argument that has not already received a conversion result. If this 
object does not have an appropriate type, or if the result of the 
conversion cannot be represented in the object, the behavior is undefined."

>> Setting errno to 0 before calling scanf and expecting errno to have a 
>> meaningful value when scanf returns something other than EOF is bogus 
>> usage.
> 
> Yep, that's bogus.
> 
> 
> Cheers,
> 
> Alex

Best regards,
Ian

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

