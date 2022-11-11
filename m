Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04BD0626268
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 20:52:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234252AbiKKTwX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Nov 2022 14:52:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233768AbiKKTwW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Nov 2022 14:52:22 -0500
Received: from mailrelay.tugraz.at (mailrelay.tugraz.at [129.27.2.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45B9082929
        for <linux-man@vger.kernel.org>; Fri, 11 Nov 2022 11:52:19 -0800 (PST)
Received: from [192.168.0.150] (84-115-221-90.cable.dynamic.surfer.at [84.115.221.90])
        by mailrelay.tugraz.at (Postfix) with ESMTPSA id 4N88VY4QxKz1LB1y;
        Fri, 11 Nov 2022 20:52:05 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailrelay.tugraz.at 4N88VY4QxKz1LB1y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tugraz.at;
        s=mailrelay; t=1668196327;
        bh=us0QboMBDFu9aHTIQqc0TrvZGpnMDJEB406Ps+h2NJY=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=KGeOQFVIBUpmX68ZijrL+J8OqwfaMfvdOLjCfpnLpT1jJkz0DQTobLb32VPM7nS7Q
         xVny+OLu4MJPa8hPPdr2jI8ypszsTLMDf9xi5LuURH+r4fw5UM/WZPuT6lxnF+v1rh
         NxaJZsWp99i14C7YSPheytc63/FAF0xmPkZb87BQ=
Message-ID: <a0667c528a8e6616df9589754390d883e524bf4f.camel@tugraz.at>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Martin Uecker <uecker@tugraz.at>
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Date:   Fri, 11 Nov 2022 20:52:04 +0100
In-Reply-To: <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
         <Ywn7jMtB5ppSW0PB@asta-kit.de>
         <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
         <YwoXTGD8ljB8Gg6s@asta-kit.de>
         <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
         <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
         <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
         <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
         <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
         <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
         <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
         <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
         <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
         <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
         <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
         <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
         <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
         <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
         <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-TUG-Backscatter-control: G/VXY7/6zeyuAY/PU2/0qw
X-Spam-Scanner: SpamAssassin 3.003001 
X-Spam-Score-relay: -1.9
X-Scanned-By: MIMEDefang 2.74 on 129.27.10.117
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Am Donnerstag, den 10.11.2022, 23:19 +0000 schrieb Joseph Myers:
> On Thu, 10 Nov 2022, Martin Uecker via Gcc wrote:
> 
> > One problem with WG14 papers is that people put in too much,
> > because the overhead is so high and the standard is not updated
> > very often.  It would be better to build such feature more
> > incrementally, which could be done more easily with a compiler
> > extension.  One could start supporting just [.x] but not more
> > complicated expressions.
> 
> Even a compiler extension requires the level of detail of specification 
> that you get with a WG14 paper (and the level of work on finding bugs in 
> that specification), to avoid the problem we've had before with too many 
> features added in GCC 2.x days where a poorly defined feature is "whatever 
> the compiler accepts".

I think the effort needed to specify the feature correctly
can be minimized by making the first version of the feature
as simple as possible.  

> If you use .x as the notation but don't limit it to [.x], you have a 
> completely new ambiguity between ordinary identifiers and member names
> 
> struct s { int a; };
> void f(int a, int b[((struct s) { .a = 1 }).a]);
> 
> where it's newly ambiguous whether ".a = 1" is an assignment to the 
> expression ".a" or a use of a designated initializer.

If we only allowed [ . a ] then this example would not be allowed.

If need more flexibility, we could incrementally extend it.

> (I think that if you add any syntax for this, GNU VLA forward declarations 
> are clearly to be preferred to inventing something new like [.x] which 
> introduces its own problems.)

I also prefer this.

I proposed forward declarations but WG14 and also people in this
discussion did not like them.  If we would actually start using
them, we could propose them again for the next revision.

Martin



