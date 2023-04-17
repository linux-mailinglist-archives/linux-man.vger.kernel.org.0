Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 434A46E53B8
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 23:13:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229838AbjDQVNy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 17:13:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbjDQVNx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 17:13:53 -0400
Received: from smtp-190e.mail.infomaniak.ch (smtp-190e.mail.infomaniak.ch [IPv6:2001:1600:4:17::190e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A23C14232
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 14:13:51 -0700 (PDT)
Received: from smtp-2-0001.mail.infomaniak.ch (unknown [10.5.36.108])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Q0ftQ0DxMzMqkCg;
        Mon, 17 Apr 2023 23:13:50 +0200 (CEST)
Received: from unknown by smtp-2-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4Q0ftP1lnBzMppvg;
        Mon, 17 Apr 2023 23:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1681766029;
        bh=G3TpkXM9qrPtq/sfKqRDWv+8LhaMXG1m4KvWSGMY7Do=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=iL7JcEdIUbaawdzTCVQg39dGkjdYmSqoU2Et5EUPCmr/m3o2BtVPnPjrMTrYgJ5WU
         KzrOVQyFHKiaYsKD87mBWEA9CWd9xGIitNfVq2w5cu7F4ma3EuLCASgodxypVeMaS4
         cBa3RPrUICIG+jzxYJ/7F3mVlPBEVqbByrEdglKw=
Message-ID: <b2397aa5-9e39-fabd-7a87-8c404dc9f933@digikod.net>
Date:   Mon, 17 Apr 2023 23:13:48 +0200
MIME-Version: 1.0
User-Agent: 
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
 <20230401.1316d7f843d7@gnoack.org>
 <7eda6974-1f1f-66aa-f63c-f33daf2ab6e1@gmail.com>
 <20230404.16675e4d7765@gnoack.org>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <20230404.16675e4d7765@gnoack.org>
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


On 04/04/2023 09:33, Günther Noack wrote:
> Hello!
> 
> On Sun, Apr 02, 2023 at 12:01:43AM +0200, Alejandro Colomar wrote:
>> On 4/1/23 19:19, Günther Noack wrote:
>>> (It feels out of scope for this documentation patch, but do you think
>>> these bitmasks should be defined in the uapi/linux/landlock.h header?
>>> You have looked at so many man pages already -- Do you happen to know
>>> other places in the kernel API where such a problem has come up?)
>>
>> I don't remember having seen something similar in other pages.
>>
>> I think defining a macro in uapi headers could be the right thing to
>> do.  Something like LANDLOCK_ACCESS_FS_RIGHTS_MASK_ABI_{1,2,3} or
>> other similar name?
> 
> Noted it on my TODO list - it's probably best discussed on the kernel
> list whether this is the right approach.
> 
> 
>>> 1) Make assumptions about the numbers, for brevity
>>>     (as done in the patch I sent).
>>>
>>>     [...]
>>>
>>> 2) Use the constants from the header and OR them.
>>>
>>>     [...]
>>>
>>> 3) Third option is the middle way,
>>>     naming the "highest" known access right for each ABI version:
>>>
>>> __u64 landlock_fs_access_rights[] = {
>>>      (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) - 1,  /* ABI v1                 */
>>>      (LANDLOCK_ACCESS_FS_REFER << 1) - 1,     /* ABI v2: add "refer"    */
>>>      (LANDLOCK_ACCESS_FS_TRUNCATE << 1) - 1,  /* ABI v3: add "truncate" */
>>> }
>>
>> I'm not sure if I like this one.  I'll leave it up to you to decide
>> the one you like.  :)
> 
> I'll ponder it a bit and send a new patch soon.
> 
> Mickaël, do you have any opinions/preferences on this?

Sorry, I missed this thread. I prefer your third solution because it is 
explicit and relies on non-harcoded/magic values. I replied to the last 
version of this patch but it might be a bit late now.

I'm not sure that defining a mask per ABI should be part of UAPI 
(instead of dedicated libraries), but I'll think about that.
