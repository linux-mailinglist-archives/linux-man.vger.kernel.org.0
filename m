Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 432F864C771
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 11:52:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238113AbiLNKwg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 05:52:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237881AbiLNKwa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 05:52:30 -0500
Received: from smtp74.ord1d.emailsrvr.com (smtp74.ord1d.emailsrvr.com [184.106.54.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53AC623BF9
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 02:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
        s=20221208-6x11dpa4; t=1671015148;
        bh=ZplDRQqZ6uSpSA+n64SF6GH05U3nnM26l0BM/u52RXY=;
        h=Date:Subject:To:From:From;
        b=aT2/9Sts9XiJhElwyZm9dOivUmrEq00j+ITjvsIVWtVQuU/r9QsWAcEt1plyGrAYC
         Yb9s2cV/y6/ELXa7h0JImh2CVysmJaa1O2RWE3fdjmey1b2uXYgUfW10u/c24AQZam
         ZKD4G2PKQNhmcTAfNFsY3HS/JIwCWldlKG9RYdbs=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp2.relay.ord1d.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 0B0ED20077;
        Wed, 14 Dec 2022 05:52:27 -0500 (EST)
Message-ID: <8be4b9ef-7579-fd6a-c2aa-72e92db7adc9@mev.co.uk>
Date:   Wed, 14 Dec 2022 10:52:27 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-GB
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
From:   Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <7d561198-44f7-a64e-06ae-3ee41d156e82@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Classification-ID: ec3c1cc1-6482-483b-9adb-f7aa81d7a441-1-1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2022-12-14 10:39, Alejandro Colomar wrote:
> Hi Ian & Zack,
> 
> On 12/14/22 11:22, Ian Abbott wrote:
>> On 14/12/2022 02:18, Zack Weinberg wrote:
>>> Ian Abbott <abbotti@mev.co.uk> writes:
>>>
>>>> On 12/12/2022 02:11, Zack Weinberg wrote:
>>>>> Field widths are awkward to use because you have to write them as
>>>>> decimal constants _inside the format string_…
>>>>
>>>> It's a shame that scanf's maximum field width couldn't be specified
>>>> using an integer parameter in the same was as printf's minimum field
>>>> width, but the '*' flag was already taken!
>>>
>>> Yup.  I suppose we could make up another flag … ‘@’ isn’t used for
>>> anything …
>>
>> '@' isn't included in C's basic character set though.  '&' is available.
> 
> Just a curious question from an ignorant:  what's the difference between 
> the basic character set and the source character set?

The source character set may contain locale-specific characters outside 
the basic source character set.

Actually, there are two basic character sets - the basic source 
character set and the basic execution character set (which includes the 
basic source character set plus a few control characters).  The source 
character set and/or execution character set may contain 
locale-specific, extended characters outside the basic character set.

https://port70.net/~nsz/c/c11/n1570.html#5.2.1

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
