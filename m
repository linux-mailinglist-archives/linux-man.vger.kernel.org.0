Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C3756E5392
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 23:05:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbjDQVFA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 17:05:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230271AbjDQVEm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 17:04:42 -0400
X-Greylist: delayed 624 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 17 Apr 2023 14:04:36 PDT
Received: from smtp-42ab.mail.infomaniak.ch (smtp-42ab.mail.infomaniak.ch [IPv6:2001:1600:3:17::42ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC6ABB3
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 14:04:36 -0700 (PDT)
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [10.4.36.107])
        by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Q0fRd3lgQzMr7Ht;
        Mon, 17 Apr 2023 22:54:05 +0200 (CEST)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Q0fRc60Rqz1Gs;
        Mon, 17 Apr 2023 22:54:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1681764845;
        bh=xPN/dvK9GeuuhWqEYk/o6YxJKDNt/A9uDUcg34kEzmQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=C068Y+iokGBm5b/YNpMP1bFUBclIu52WqUJwqrrPRe+cidSPzPd6DRAb0VDNZJS2m
         6qo5yZZ9TbPFNhSMmnyiV8w/DRRWuekAIQlYLro8oQau2aYHFF+taxABFI7CW39ZQD
         AWXPJP1BGEmjHGohi95nRiWj93dD0Cxhv82CCx/E=
Message-ID: <dca3298a-c65a-1270-6540-7ec66feb0c49@digikod.net>
Date:   Mon, 17 Apr 2023 22:54:04 +0200
MIME-Version: 1.0
User-Agent: 
Subject: Re: [PATCH v6 1/1] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230414155926.6937-1-gnoack3000@gmail.com>
 <20230414155926.6937-2-gnoack3000@gmail.com>
 <ba15e85d-db90-88cf-ca60-1d4a11a40c31@gmail.com>
 <20230415.de079bcd1e29@gnoack.org>
 <31ecebc5-1b97-b610-a097-f260ec4d4c8d@gmail.com>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <31ecebc5-1b97-b610-a097-f260ec4d4c8d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 17/04/2023 19:24, Alejandro Colomar wrote:
> Hello Günther!
> 
> On 4/15/23 09:16, Günther Noack wrote:
>> Hello Alejandro!
>>
>>>> +if (abi <= 0) {
>>>> +    perror("Giving up \- No Landlock support");
>>>
>>> Using perror(3) will already print "Operation not supported", since
>>> errno is ENOTSUP.  Maybe this string is redundant?  How about the
>>> following?
>>>
>>> 	perror("landlock_create_ruleset");  // EOPNOTSUPP
>>
>> The fallback code assumes that we don't know the kernel that we run on,
>> so in practice we also have to handle ENOSYS.
>>
>> See https://docs.kernel.org/userspace-api/landlock.html#landlock-abi-versions
>>
>> I'd suggest to just make it more explicit here that it can be two
>> different error codes:
>>
>> if (abi <= 0) {
>>      /* ENOTSUP or ENOSYS */
>>      perror("Giving up \- No Landlock support");
>> }
>>
>> Does that sound reasonable?
> 
> Sounds reasonable (with a call to exit(3) too).
> 
> BTW, now I see ENOSYS is not documented in syscall(2) (there's actually no
> ERRORS section there).  Should we add it?
> 
>>
>>
>>> BTW, now I checked that while in Linux ENOTSUP and EOPNOTSUPP are
>>> equivalent, in POSIX the latter has a connotation that it's about

For Linux:
#define	EOPNOTSUPP	95	/* Operation not supported on transport endpoint */
#define ENOTSUPP	524	/* Operation is not supported */

EOPNOTSUPP is not only used for network error, but to identify generic 
unsupported operations, while ENOTSUPP was initially dedicated to NFS 
error (but now also slipped to other areas)

>>> sockets.  Should we document ENOTSUP in landlock_create_ruleset(2)
>>> instead of EOPNOTSUPP? >>
>> EOPNOTSUP is also used in Landlock's kernel documentation,
>> we'd maybe have to update it there as well.
>> I'll have a look at what is more common.
> 
> Thanks.  In the man pages I see both often, so maybe we need to fix
> consistency there too.

No, ENOTSUP*P* is not used by Landlock.
