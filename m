Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 754FA624E5D
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 00:20:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229559AbiKJXUC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 18:20:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbiKJXUB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 18:20:01 -0500
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4645513DCE
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 15:20:00 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,155,1665475200"; 
   d="scan'208";a="86837884"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa2.mentor.iphmx.com with ESMTP; 10 Nov 2022 15:20:00 -0800
IronPort-SDR: u/DnvJ53g2Z0c8LZJi9X8m8CeslM7y+ybmHOV6fGv7adUk3V85iYMThBNRQ2u8tGpiszoXX55T
 vweOtdkPu3N/P+CBCuFtrYN5unnd3rngxdB3kK8IrZcGO4dfRJ1QnnMqI5fWT6vCUxbmjqnogB
 tsxRsOGDUlIQmH/fSRDYvhiksZxeQObuRUTUgX/axx8eMSE5DxnVDp/wI46Jt7FbS8axuHvHuP
 B+OZK4oke6P/y30l7NeV5eLdtedFKsGcynEKE2B1TrzENLwXteUAWsQEPe7VaVhfDAvpHkf3Yd
 Lio=
Date:   Thu, 10 Nov 2022 23:19:54 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Martin Uecker <uecker@tugraz.at>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>,
        <linux-man@vger.kernel.org>, <gcc@gcc.gnu.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
In-Reply-To: <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
Message-ID: <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com> <Ywn7jMtB5ppSW0PB@asta-kit.de> <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com> <YwoXTGD8ljB8Gg6s@asta-kit.de> <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com> <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com> <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com> <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com> <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at> <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at> <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com> <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at> <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com> <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com> <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-15.mgc.mentorg.com (139.181.222.15) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 10 Nov 2022, Martin Uecker via Gcc wrote:

> One problem with WG14 papers is that people put in too much,
> because the overhead is so high and the standard is not updated
> very often.  It would be better to build such feature more
> incrementally, which could be done more easily with a compiler
> extension.  One could start supporting just [.x] but not more
> complicated expressions.

Even a compiler extension requires the level of detail of specification 
that you get with a WG14 paper (and the level of work on finding bugs in 
that specification), to avoid the problem we've had before with too many 
features added in GCC 2.x days where a poorly defined feature is "whatever 
the compiler accepts".

If you use .x as the notation but don't limit it to [.x], you have a 
completely new ambiguity between ordinary identifiers and member names

struct s { int a; };
void f(int a, int b[((struct s) { .a = 1 }).a]);

where it's newly ambiguous whether ".a = 1" is an assignment to the 
expression ".a" or a use of a designated initializer.

(I think that if you add any syntax for this, GNU VLA forward declarations 
are clearly to be preferred to inventing something new like [.x] which 
introduces its own problems.)

-- 
Joseph S. Myers
joseph@codesourcery.com
