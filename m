Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C5F8623BD8
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 07:29:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229484AbiKJG3W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 01:29:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbiKJG3V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 01:29:21 -0500
X-Greylist: delayed 478 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 09 Nov 2022 22:29:19 PST
Received: from mailrelay.tugraz.at (mailrelay.tugraz.at [129.27.2.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 854CF11144
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 22:29:19 -0800 (PST)
Received: from [192.168.0.150] (84-115-221-218.cable.dynamic.surfer.at [84.115.221.218])
        by mailrelay.tugraz.at (Postfix) with ESMTPSA id 4N7BYM6BZHz1LZ3K;
        Thu, 10 Nov 2022 07:21:11 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailrelay.tugraz.at 4N7BYM6BZHz1LZ3K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tugraz.at;
        s=mailrelay; t=1668061272;
        bh=74Am5ej3uTvRYPooAkMuHiPL49G1DMx9TGp10DtBRgE=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=Na2Tkg+fINrnR1j+wiflaTH/85dYdArmWksWKa6d28OTRDKF5xkCnxqlOIj2hV084
         lOgMdm52F5BwF0ils6KHQOKIZJuLqc64KGPSstFCala3Jmj0RHLzeVFFZ60kZuc9fb
         S+CNpDDwvDiLtZPbdAlWpvK0JrPz1ATn7FbSWNY4=
Message-ID: <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Martin Uecker <uecker@tugraz.at>
To:     Joseph Myers <joseph@codesourcery.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Date:   Thu, 10 Nov 2022 07:21:11 +0100
In-Reply-To: <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
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
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-TUG-Backscatter-control: G/VXY7/6zeyuAY/PU2/0qw
X-Spam-Scanner: SpamAssassin 3.003001 
X-Spam-Score-relay: -1.9
X-Scanned-By: MIMEDefang 2.74 on 129.27.10.116
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Am Donnerstag, den 10.11.2022, 01:39 +0000 schrieb Joseph Myers:
> On Thu, 10 Nov 2022, Joseph Myers wrote:
> 
> > On Thu, 10 Nov 2022, Alejandro Colomar via Gcc wrote:
> > 
> > > I've shown the three kinds of prototypes that have been changed:
> > > 
> > > -  Normal VLA; nothing fancy except for the '.'.
> > > -  Complex size expressions.
> > > -  'void *' VLAs (assuming GNU conventions: sizeof(void *)==1).
> > 
> > That doesn't cover any of the tricky issues with such proposals, such as 
> > the choice of which entity is referred to by the parameter name when there 
> > are multiple nested parameter lists that use the same parameter name, or 
> > when the identifier is visible from an outer scope (including in 
> > particular the case where it's declared as a typedef name in an outer 
> > scope).
> 
> In fact I can't tell from these examples whether you mean for a '.' token 
> after '[' to have special semantics, or whether you mean to have a special 
> '. identifier' form of expression valid in certain context (each of which 
> introduces its own complications; for the former, typedef names from outer 
> scopes are problematic; for the latter, it's designated initializers where 
> you get complications, for example).  Designing new syntax that doesn't 
> cause ambiguity is generally tricky, and this sort of language extension 
> is the kind of thing where you'd expect to so through at least five 
> iterations of a WG14 paper before you have something like a sound 
> specification.

I am not sure what Alejandro has in mind exactly, but my idea of using
a new notation [.identifier] would be to limit it to accessing other
parameter names in the same parameter list only, so that there is 

1) no ambiguity what is referred to  and  
2) one can access parameters which come later 

If we want to specify something like this, I think we should also
restrict what kind of expressions one allows, e.g. it has to
be side-effect free.  But maybe we want to make this even more
restrictive (at least initially).

One problem with WG14 papers is that people put in too much,
because the overhead is so high and the standard is not updated
very often.  It would be better to build such feature more
incrementally, which could be done more easily with a compiler
extension.  One could start supporting just [.x] but not more
complicated expressions.

Later WG14 can still accept or reject or modify this proposal
based on the experience we get.

(I would also be happy with using GNU forward declarations, and
I am not sure why people dislike them so much.) 


Martin



