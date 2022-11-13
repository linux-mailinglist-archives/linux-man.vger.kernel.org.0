Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4803627034
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 16:32:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233810AbiKMPcU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 10:32:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233522AbiKMPcT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 10:32:19 -0500
Received: from mailrelay.tugraz.at (mailrelay.tugraz.at [129.27.2.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99326A183
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 07:32:17 -0800 (PST)
Received: from [192.168.0.150] (84-115-221-90.cable.dynamic.surfer.at [84.115.221.90])
        by mailrelay.tugraz.at (Postfix) with ESMTPSA id 4N9Gdn47JYz3wjB;
        Sun, 13 Nov 2022 16:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tugraz.at;
        s=mailrelay; t=1668353534;
        bh=0ahabcbEbdl6jaLsl0mK6o8CuS7k15SXWitCDkO3OOg=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=Rhwrbvwa/tU1/iI5CxQiNSYFjum7BKf69GuEDrnEdpbju4nGYK3mDsthkUDJdu2xe
         OzalyvBV26O1N7Ev2cgVzdLzPmkBPKa6Uqep7Q1e4liYy/YtYgXg6GO5rSi7V33/BU
         wLZxcRHqP6aaex2t4jl1ChbsX/xgtDP/7zks9bb4=
Message-ID: <ca99275884247e2c1a39af3bd4fd88e65ac59ea1.camel@tugraz.at>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Martin Uecker <uecker@tugraz.at>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Date:   Sun, 13 Nov 2022 16:32:13 +0100
In-Reply-To: <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
         <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
         <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
         <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
         <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
         <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
         <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
         <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
         <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
         <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
         <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
         <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
         <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
         <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
         <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
         <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
         <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
         <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
         <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>
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

Am Sonntag, den 13.11.2022, 16:15 +0100 schrieb Alejandro Colomar:
> Hi Martin,
> 
> On 11/13/22 15:58, Martin Uecker wrote:
> > Am Sonntag, den 13.11.2022, 15:02 +0100 schrieb Alejandro Colomar:
> > > On 11/13/22 14:33, Alejandro Colomar wrote:
> > > > On 11/13/22 14:19, Alejandro Colomar wrote:
> > > > > > But there are not only syntactical problems, because
> > > > > > also the type of the parameter might become relevant
> > > > > > and then you can get circular dependencies:
> > > > > > 
> > > > > > void foo(char (*a)[sizeof *.b], char (*b)[sizeof *.a]);
> > > > > 
> > > > > This seems to be a difficult stone in the road.
> > 
> > But note that GNU forward declarations solve this nicely.
> 
> How would that above be solved with GNU fwd decl?  I'm guessing that it can't. 
> How do you forward declare incomplete VMTs?.

You can't express it. This was my point: it is impossible
to create circular dependencies.

...

> > > > > {
> > > > >       for (/* void */; dst <= end; dst++) {
> > > > >           *dst = *src++;
> > > > >           if (*dst == '\0')
> > > > >               return dst;
> > > > >       }
> > > > >       /* Truncation detected */
> > > > >       *end = '\0';
> > > > > 
> > > > > #if !defined(NDEBUG)
> > > > >       /* Consume the rest of the input string. */
> > > > >       while (*src++) {};
> > > > > #endif
> > > > > 
> > > > >       return end + 1;
> > > > > }
> > > > And I forgot to say it:  Default promotions rank high (probably the highest) in
> > > > my list of most hated features^Wbugs in C.
> > 
> > If you replaced them with explicit conversion you then have
> > to add by hand all the time, I am pretty sure most people
> > would hate this more. (and it could also hide bugs)
> 
> Yeah, casts are also in my top 3 list of things to avoid (although in this case 
> there's no bug); maybe a bit over default promotions :)
> 
> I didn't mean that all promotions are bad.  Just the gratuitous ones, like 
> promoting everything to int before even needing it.  That makes uint16_t a 
> theoretical type, because whenever you try to use it, you end up with a signed 
> 32-bit type; fun heh? :P  _BitInt() solves that for me.

uint16_t is for storing data.  My expectation is that people
will find _BitInt() difficult and error-prone to use for
small sizes.  But maybe I am wrong...

> But sure, in (1u + 1l), promotions are fine to get a common type.
> 
> > > > I wouldn't convert it to size_t, but
> > > > rather follow normal promotion rules.
> > 
> > The point of making it size_t is that you then
> > do need to know the type of the parameter to make
> > sense of the expression. If the type matters, then you get
> > mutual dependencies as in the example above.
> 
> Except if you treat incomplete types as... incomplete types (for which sizeof() 
> is disallowed by the standard).  And the issue we're having is that the types 
> are not yet complete at the time we're using them, aren't they?

It is not an incomplete type. When doing parsing and do not have
a declaration we know nothing about it (not just not the size).
If we assume we know the type (by looking ahead) we get mutual
dependencies.

Also the capability to parse, fold, and do type checking
in one go is something worth preserving in my opinion. 

Martin


> Kind of like the initialization order fiasco, but since we're in a limited 
> scope, we can detect it.




