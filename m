Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C8706C6712
	for <lists+linux-man@lfdr.de>; Thu, 23 Mar 2023 12:49:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229485AbjCWLtj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Mar 2023 07:49:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231627AbjCWLte (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Mar 2023 07:49:34 -0400
Received: from smtp-8fae.mail.infomaniak.ch (smtp-8fae.mail.infomaniak.ch [IPv6:2001:1600:4:17::8fae])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4EDB32CC9
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 04:49:31 -0700 (PDT)
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Pj3Xn0mw5zMpnWW;
        Thu, 23 Mar 2023 12:49:29 +0100 (CET)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Pj3Xm400NzMt82j;
        Thu, 23 Mar 2023 12:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1679572169;
        bh=P/16bspm0jlMnzD7CIIXzgc/U1jGobVYvpdYcperG1U=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=L9ZEREPw6xlWSOrhIitqREmENYWafSkNhZ7pjsrRLDd0hv13+f9CTR3PeaWr2FVtj
         Aa+B11j7Q6v5BDHiVchEU57KsGGZFHMDhbR3l6/MCMg2JRu3Zn2F/ZTDjKCOSZ8CWQ
         q7WQpP8SjCmMm1kikJJW50LLwc+7iXJH8p6Ipp0Y=
Message-ID: <ffcfa1c9-1861-4190-edbd-19c809ffc9d0@digikod.net>
Date:   Thu, 23 Mar 2023 12:49:27 +0100
MIME-Version: 1.0
User-Agent: 
Subject: Re: [PATCH v4 3/3] landlock.7: Give a pointer to how to implement a
 fallback mechanism
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230310220851.22261-1-gnoack3000@gmail.com>
 <20230310220851.22261-3-gnoack3000@gmail.com>
 <1421ea14-dca4-2969-11b7-4a37720b9886@digikod.net>
 <20230316.49640ba315d3@gnoack.org>
 <02a63754-21b0-681a-3e58-0da053fe818f@gmail.com>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <02a63754-21b0-681a-3e58-0da053fe818f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

OK, so if that makes the sample code simpler, I guess we can assume (and 
note) that this if for a kernel >= 5.19, hence force the use of 
LANDLOCK_ACCESS_FS_REFER (e.g. the app needs to rename files in a 
temporary directory), and only handle the LANDLOCK_ACCESS_FS_TRUNCATE 
right as optional.


On 16/03/2023 14:33, Alejandro Colomar wrote:
> Hi Günther, Mickaël,
> 
> On 3/16/23 07:54, Günther Noack wrote:
>> Alejandro, what are your thoughts?
> 
> It all depends on how much complexity increases.  If it's not much, we
> can keep everything.  You can send the complete example, and then if
> it's too much we can cut pieces of it.
> 
>>   (Happy Birthday, btw :))
> 
> :)
> 
>>
>>
>> (My personal stance is: I'm concerned that the man page example might
>> become too long if we try to add the "best effort" fallback to it, so
>> I would slightly prefer to explain the fallback logic outside, but
>> could be convinced otherwise.  I see the point that people might
>> cut&paste the example from the man page and miss the longer
>> explanation in a different place.
>>
>> I have attempted to explain the "best effort" fallback on my weblog
>> starting from a blank slate, and ended up with the explanation at
>> https://blog.gnoack.org/post/landlock-best-effort/.  I believe that
>> most users can use a simpler "best effort" fallback logic when doing
>> this case analysis, but the explanation is probably too long for the
>> man page.)
>>
>> Another alternative would be to make the example assume Landlock v2
>> (Linux 5.19). In that case, the fallback logic would be simpler and
>> the case analysis from the weblog entry collapse into a single case,
>> but the example would fall back to not using Landlock on Linux 5.13 to
>> 5.18 (including the long-term release 5.15), which is also not nice.)
> 
> Debian Bullseye (stable) has 6.0.12 in bullseye-backports.  Maybe it's
> not crazy to assume >=5.19.  No Debian release has anything in the
> range [5.13, 5.18] (non-backports Bullseye has 5.10).
> 
>>
>> –-Günther
> 
> Cheers,
> 
> Alex
> 
