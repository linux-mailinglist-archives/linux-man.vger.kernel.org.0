Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAF336E6DB1
	for <lists+linux-man@lfdr.de>; Tue, 18 Apr 2023 22:50:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232406AbjDRUud (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Apr 2023 16:50:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230491AbjDRUuc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Apr 2023 16:50:32 -0400
Received: from smtp-8fae.mail.infomaniak.ch (smtp-8fae.mail.infomaniak.ch [IPv6:2001:1600:4:17::8fae])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3199B2
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 13:50:28 -0700 (PDT)
Received: from smtp-2-0001.mail.infomaniak.ch (unknown [10.5.36.108])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Q1GJv3WD6zMpvcb;
        Tue, 18 Apr 2023 22:50:23 +0200 (CEST)
Received: from unknown by smtp-2-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4Q1GJt5cymzMpqPZ;
        Tue, 18 Apr 2023 22:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1681851023;
        bh=ddOb/dVheYjq7ewXaKVsD1jeIjQ/Owng+TCq8d4ExzY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=KJ4xj8QslgPp5owmPJ+NUiJafPCFRlNUhWraGDqVzgzlNV0N/8QMvGcC+SEmSeTBM
         aZivFy71/7ZhU+yvLsbjEkKnw8pu2ZrIounDW7F5v8VWdx2x8ohHb8NkEseiD616DD
         pTHou2Te0bLmRAYGLrTzFVMUMgX6J3YXFKVzrE9A=
Message-ID: <1f68915c-daf6-83ba-3358-e090fca34909@digikod.net>
Date:   Tue, 18 Apr 2023 22:50:27 +0200
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
 <dca3298a-c65a-1270-6540-7ec66feb0c49@digikod.net>
 <da83fef9-5275-f149-6cf7-988220ae0b27@gmail.com>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <da83fef9-5275-f149-6cf7-988220ae0b27@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 18/04/2023 16:37, Alejandro Colomar wrote:
> Hi Mickaël,
> 
> On 4/17/23 22:54, Mickaël Salaün wrote:
>>>>> BTW, now I checked that while in Linux ENOTSUP and EOPNOTSUPP are
>>>>> equivalent, in POSIX the latter has a connotation that it's about
>>
>> For Linux:
>> #define	EOPNOTSUPP	95	/* Operation not supported on transport endpoint */
>> #define ENOTSUPP	524	/* Operation is not supported */
> 
> $ errno 95
> EOPNOTSUPP 95 Operation not supported
> $ errno 524
> $ echo $?
> 1
> 
> 
> $ grepc -k ENOTSUP /usr/include/
> /usr/include/x86_64-linux-gnu/bits/errno.h:30:#  define ENOTSUP		EOPNOTSUPP
> $ grepc -k ENOTSUPP /usr/include/
> $ grepc -k EOPNOTSUPP /usr/include/
> /usr/include/asm-generic/errno.h:78:#define	EOPNOTSUPP	95	/* Operation not supported on transport endpoint */
> 
> 
> Is ENOTSUPP a kernel thing?  User space we doesn't seem to agree with
> that :).  I'm on Debian Sid.

Indeed, ENOTSUPP is a kernel error type, only EOPNOTSUPP should be used 
to return error to user space. ENOTSUPP is not used by the kernel, it is 
only defined by the libc:

# ifndef ENOTSUP
#  define ENOTSUP		EOPNOTSUPP
# endif


> 
> 
> Indeed, it seems a kernel thing:
> 
> $ man -Kaw ENOTSUPP
> /usr/local/man/man1/checkpatch.1
> 
> 
> That page is one I wrote extracting info from checkpatch.rst.  It seems
> checkpatch.pl warns about use of ENOTSUPP.
> 
> 
>>
>> EOPNOTSUPP is not only used for network error, but to identify generic
>> unsupported operations, while ENOTSUPP was initially dedicated to NFS
>> error (but now also slipped to other areas)
>>
>>>>> sockets.  Should we document ENOTSUP in landlock_create_ruleset(2)
>>>>> instead of EOPNOTSUPP? >>
>>>> EOPNOTSUP is also used in Landlock's kernel documentation,
>>>> we'd maybe have to update it there as well.
>>>> I'll have a look at what is more common.
>>>
>>> Thanks.  In the man pages I see both often, so maybe we need to fix
>>> consistency there too.
>>
>> No, ENOTSUP*P* is not used by Landlock.
> 
> But should it?  I mean ENOTSUP, not ENOTSUPP.

ENOTSUP doesn't exist in the kernel source, so it is legitimate that 
Landlock and any other kernel interfaces use EOPNOTSUPP.  ENOTSUP should 
then not replace EOPNOTSUPP for Landlock nor any other kernel interfaces.
