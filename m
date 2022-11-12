Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3A39626627
	for <lists+linux-man@lfdr.de>; Sat, 12 Nov 2022 02:10:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233752AbiKLBKy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Nov 2022 20:10:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230037AbiKLBKx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Nov 2022 20:10:53 -0500
X-Greylist: delayed 62 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 11 Nov 2022 17:10:52 PST
Received: from esa1.mentor.iphmx.com (esa1.mentor.iphmx.com [68.232.129.153])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78599391CC
        for <linux-man@vger.kernel.org>; Fri, 11 Nov 2022 17:10:52 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,158,1665475200"; 
   d="scan'208";a="89660245"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa1.mentor.iphmx.com with ESMTP; 11 Nov 2022 17:09:49 -0800
IronPort-SDR: PcCPWSU1yFMEViumujzP0ckjKZ0oJJhUNiDs2Atq15baYjGbcyCYlCx4v9lSTyc8vyVp6FLABc
 tfpEgHr7fFpMLQT792zfAW6dnOMkLurz7KXK7B8dpfX7fT2SgPrqiHM63ePa17ZTjsYJUrr3xa
 KvEX8fploDbQGCunBSRPqnFltxUUeCTYlGTubRW1lxn3xtYfOFgJ0Jc+KEhienvBVwJ1tyVgUh
 +bvtp4EZxejaCtAQvgeKd0cazZIgzEh1xz+LfJegB2iqfkJaRBtpl9mgAjxFyF1JaalNt8OAHi
 1nY=
Date:   Sat, 12 Nov 2022 01:09:44 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Martin Uecker <uecker@tugraz.at>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>,
        <linux-man@vger.kernel.org>, <gcc@gcc.gnu.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
In-Reply-To: <a0667c528a8e6616df9589754390d883e524bf4f.camel@tugraz.at>
Message-ID: <fa58c9a0-9a7b-15f2-677a-23608a618b86@codesourcery.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com> <YwoXTGD8ljB8Gg6s@asta-kit.de> <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com> <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com> <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com> <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com> <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at> <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com> <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com> <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at> <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com> <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com> <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at> <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com> <a0667c528a8e6616df9589754390d883e524bf4f.camel@tugraz.at>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 11 Nov 2022, Martin Uecker via Gcc wrote:

> > Even a compiler extension requires the level of detail of specification 
> > that you get with a WG14 paper (and the level of work on finding bugs in 
> > that specification), to avoid the problem we've had before with too many 
> > features added in GCC 2.x days where a poorly defined feature is "whatever 
> > the compiler accepts".
> 
> I think the effort needed to specify the feature correctly
> can be minimized by making the first version of the feature
> as simple as possible.  

The version of constexpr in the current C2x working draft is more or less 
as simple as possible.  It also went through lots of revisions to get 
there.  I'm currently testing an implementation of C2x constexpr for GCC 
13, and there are still several issues with the specification I found in 
the implementation process, beyond those raised in WG14 discussions, for 
which I'll need to raise NB comments to clarify things.

I think that illustrates that you need the several iterations on the 
specification process, *and* making it as simple as possible, *and* 
getting implementation experience, *and* the implementation experience 
being with a close eye to what it implies for all the details in the 
specification rather than just getting something vaguely functional but 
not clearly specified.

-- 
Joseph S. Myers
joseph@codesourcery.com
