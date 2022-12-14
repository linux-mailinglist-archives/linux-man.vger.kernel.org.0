Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59FBB64C7A5
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 12:03:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237788AbiLNLDx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 06:03:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237566AbiLNLDY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 06:03:24 -0500
Received: from smtp127.ord1d.emailsrvr.com (smtp127.ord1d.emailsrvr.com [184.106.54.127])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 435E624F19
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 03:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
        s=20221208-6x11dpa4; t=1671015789;
        bh=sqdpTGZCfbt4/mjXrrvSxTiM4/EKD2ih9v6hkmrlZ+E=;
        h=Date:Subject:To:From:From;
        b=ZY835JPaYTRokpnmXg6PaIfW6fm6skLeNCoi3A0ZwTzCHO6BTe6siP6UF8FhHMdF2
         eAGdW26rWwJP8GmmGA6XC4c97nbKdHZXBquyjXOMw1t9n1mMgmq7GXF2QNbcCXsifE
         Ba2xHpmwSY+jhhQf6xi6CJcwL7yasfxSBe0vebKg=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp16.relay.ord1d.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id A2E9140098;
        Wed, 14 Dec 2022 06:03:08 -0500 (EST)
Message-ID: <d5c2f98f-5341-eb19-b54e-6d049f80de8d@mev.co.uk>
Date:   Wed, 14 Dec 2022 11:03:07 +0000
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
 <a7a60a45-afb2-2fae-f6b0-a26db649c09c@gmail.com>
 <ypikwn6uag11.fsf@owlfolio.org>
 <4fe9ed93-8fb9-64d0-26f1-a9560387d108@gmail.com>
From:   Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <4fe9ed93-8fb9-64d0-26f1-a9560387d108@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Classification-ID: 5589a1cb-1f94-4871-9ba1-421925b9485b-1-1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2022-12-14 10:47, Alejandro Colomar wrote:
> On 12/14/22 03:13, Zack Weinberg wrote:
>> Alejandro Colomar <alx.manpages@gmail.com> writes:
>>>> In a more sober tone of voice I suggest this text for the manpage:
>> …
>>> That makes sense to me.  Would you mind sending a patch?  :)
>>
>> I do not have time to do that anytime soon.  Also, maybe glibc’s
>> behavior on numeric input overflow should be fixed first.
> 
> That also makes sense ;)
> 
> In short:
> 
> (1)  Numeric conversion specifiers are broken but can be fixed, and you 
> plan to fix them.
> 
>       (1.1)  I'll revert the deprecation warning now; since they are 
> only broken because the _current_ standard and implementations are 
> broken, but not by inherent design problems.
> 
>       (1.2)  When you fix the implementation to not be UB anymore, it 
> will also make sense to revert the patch that removed the ERANGE error, 
> since you'll need to report it.

And would ERANGE cause scanf to return EOF in the fixed implementation? 
That seems like it would break a lot of existing code (even though it is 
currently UB).  It would probably be better to silently set errno to 
ERANGE without returning EOF, and to set the integer object's value to 
the maximum or minimum value for its type (as it currently does for 
signed/unsigned long).

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
