Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 378F16E99A1
	for <lists+linux-man@lfdr.de>; Thu, 20 Apr 2023 18:35:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234612AbjDTQfq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 12:35:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232929AbjDTQfm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 12:35:42 -0400
Received: from smtp-42af.mail.infomaniak.ch (smtp-42af.mail.infomaniak.ch [IPv6:2001:1600:3:17::42af])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1033410D7
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 09:35:09 -0700 (PDT)
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
        by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Q2NXj3DwyzMqWrw;
        Thu, 20 Apr 2023 18:34:29 +0200 (CEST)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Q2NXh5Qj5zMppDY;
        Thu, 20 Apr 2023 18:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1682008469;
        bh=eDAKZSMZOOjnK7ztiR0rOEDI7RyaYvNbNy8yCa58UHE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=tepWjBK2m4i4ZMN/1OpffeTgcnkBgGI09YM4x0OAn/IxuBatZEsmQzXs5+yMuhPlB
         mCF8nu+uBPBPpav+lp9tuY/cYTG/GvrwVec5/geLDAEVWMJz7D0x6hvHXgrA1AI1pG
         hZ6i8ZDBeqCGt0dXSlkqrtCmxyfhPyPjg7fAZEVk=
Message-ID: <f5a7172d-d47b-957c-d456-f5298666ba20@digikod.net>
Date:   Thu, 20 Apr 2023 18:34:27 +0200
MIME-Version: 1.0
User-Agent: 
Subject: Re: [PATCH 0/4] landlock.7: Code example improvements
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230419185443.7368-1-gnoack3000@gmail.com>
 <e7e34004-ab5c-68dd-da7b-1d275ccde190@gmail.com>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <e7e34004-ab5c-68dd-da7b-1d275ccde190@gmail.com>
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


On 19/04/2023 22:37, Alejandro Colomar wrote:
> Hi Günther!
> 
> On 4/19/23 20:54, Günther Noack wrote:
>> Various improvements as pointed out by Mickaël Salaün in
>> https://lore.kernel.org/linux-man/5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net/
>>
>> * Checking system call results differently, for consistency
>> * Use constants for the compatibility table
>>    (I'm not very attached to the other solution)
>> * Better wording for error message if Landlock unusable
>> * Return instead of exit() if Landlock unusable
>>
>> Regarding the EOPNOTSUPP/ENOTSUP discussion, the consensus seems to be
>> that EOPNOTSUPP is preferable, because that is the only of the two
>> error codes that the kernel knows about.
>>
>> Günther Noack (4):
>>    landlock.7: Check syscall result with == -1 instead of <= 0
>>    landlock.7: Use LANDLOCK_* constants for compatibility table
>>    landlock.7: wfix: Error message wording in code example
>>    landlock.7: Return instead of exit() if Landlock is unusable
> 
> Thanks!  Patch set applied.  (I tweaked the commit messages a little
> bit.)

Thanks Günther and Alex!

> 
> Cheers,
> Alex
> 
>>
>>   man7/landlock.7 | 12 ++++++------
>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>
>>
>> base-commit: 6693a21cf73c502f2429b4ec07698130a2be9a93
> 
