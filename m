Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B50766AF85E
	for <lists+linux-man@lfdr.de>; Tue,  7 Mar 2023 23:16:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbjCGWQ4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Mar 2023 17:16:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229504AbjCGWQz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Mar 2023 17:16:55 -0500
Received: from smtp-1908.mail.infomaniak.ch (smtp-1908.mail.infomaniak.ch [IPv6:2001:1600:4:17::1908])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA3F4A225C
        for <linux-man@vger.kernel.org>; Tue,  7 Mar 2023 14:16:52 -0800 (PST)
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
        by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PWVD11pW4zMrHY6;
        Tue,  7 Mar 2023 23:16:49 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4PWVD03MlJzMtK6S;
        Tue,  7 Mar 2023 23:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1678227409;
        bh=m8kbC7EAylCSatby2K5JAgfYV6fDf+a74pka/xG/Uys=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=cPvax4NTq/n1kuM5tdOJT2E7LLJ4qM1NIOeXRhlRhAhb29oVudFRIMVWgLsd6JgpI
         1HHt0RoZ3nMaNDcAWUoMUclA3HjWeyZD7IpdBvYPCn2YPniDyMKAv7vDCFywVBHT1w
         UXOszsdcff5DSn9Fq+nQX64ZN2IJoQZVa2FRHweo=
Message-ID: <8a18c793-8d77-5781-8856-098bef2b349e@digikod.net>
Date:   Tue, 7 Mar 2023 23:16:47 +0100
MIME-Version: 1.0
User-Agent: 
Subject: Re: [PATCH v3 1/2] landlock.7: Document Landlock ABI v2 (file
 reparenting; Linux 5.19)
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, landlock@lists.linux.dev
References: <20230304171607.8301-1-gnoack3000@gmail.com>
 <20230305.d639b17946bd@gnoack.org>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <20230305.d639b17946bd@gnoack.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks Günther. I agree with this approach. Let's start with a 
common-enough example, and then point to exceptions. Targeting common 
(and simple) utilities at first sounds reasonable.


On 05/03/2023 11:24, Günther Noack wrote:
> +landlock mailing list (feeback welcome)
> 
> Hello!
> 
> On Sat, Mar 04, 2023 at 06:16:06PM +0100, Günther Noack wrote:
>> * Add LANDLOCK_ACCESS_FS_REFER to the code example.
> 
> To follow up on the discussion on the man page update v1 [1] -- let me
> make a constructive proposal for a simpler code example for "best
> effort" fallback in the man page.
> 
> I feel that implementing the full generic "best effort" fallback logic
> would complicate the example too much:
> 
>   (a) examples that try to demonstrate too many things at once
>       tend to become confusing to the reader
>   (b) there are readers to whom the full example might not matter:
>       - readers who know what kernel their software runs on
>       - readers in the future or on cutting-edge distributions
>         who can assume that their kernel is likely to be fresh enough
> 
> The main complication with the "best effort" logic is really just that
> the "refer" right requires a different fallback logic, and this is
> easy to overlook (has happened in multiple instances already).
> 
> I believe that many potential Landlock users, especially smaller
> tools, probably do not need to reparent files ("refer").
> 
> We can group the existing Landlock use cases like this:
> 
> Case 1: Callers who know they *do not* need to reparent files
>          can skip the "refer" complications.
> 
> Case 2: Callers who know they *do* need to reparent files
>          need to fall back to no-op if the kernel only suppports ABI v1,
>          as reparenting files is always forbidden with ABI v1.
> 
> Case 3: Callers who *sometimes do and sometimes don't* reparent files
>          are the only ones where it's harder to implement.
> 
> I've put the required for code cases 1, 2, and 3 on my weblog at [2]
> (skip to the "Implementation" section).
> 
> The complicated case 3 is what we need in the Go and Rust helper
> libraries for Landlock, but it should hopefully not be needed for
> most Landlock users who use it directly from C.
> 
> 
> **This is how I think we should describe it in the man page**:
> 
>    * Define the backwards compatibility table.
>    * Implement fallback logic for programs
>      which do *not* need to reparent files.
>    * Call it out prominently that the fallback code is different
>      if the program needs file reparenting, and explain that separately,
>      in the man page or elsewhere.
> 
> I believe this should cover the use cases for a large chunk of simple
> Unix tools, and I would like to encourage the use of Landlock in
> these.  Readers should not have to adapt the example code to work in
> their program.
> 
> Let me know what you think!
> –Günther
> 
> [1] https://lore.kernel.org/linux-man/Y%2FcvfmEM1XEL%2FTPz@galopp/
> [2] https://blog.gnoack.org/post/landlock-best-effort/
