Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE64C626A5A
	for <lists+linux-man@lfdr.de>; Sat, 12 Nov 2022 16:57:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231404AbiKLP5A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Nov 2022 10:57:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230257AbiKLP5A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Nov 2022 10:57:00 -0500
Received: from mailrelay.tugraz.at (mailrelay.tugraz.at [129.27.2.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C4571903A
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 07:56:57 -0800 (PST)
Received: from [192.168.0.150] (84-115-221-90.cable.dynamic.surfer.at [84.115.221.90])
        by mailrelay.tugraz.at (Postfix) with ESMTPSA id 4N8gDY2V6Jz3wkt;
        Sat, 12 Nov 2022 16:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tugraz.at;
        s=mailrelay; t=1668268606;
        bh=CBsqfqNFWxA0LAIRY3B/BN20hakic1OF3k/QjfAhk7Q=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=eNu5BHTuR2CmaOMiDTgB+07KOPFpQJ+wTs3B2I5rWwOd2Sp3BWmzEq/oyRVnyCKbr
         EGMZuJ7bumRnsaDUSB0zaIbdB3Alg1ArVhyJRXNm3qh5WLjObNVuRxzPJZj5ubVZF7
         P21IJ/uQasSRtLBx7r7dmmFW3Vt976wNA6oQonJI=
Message-ID: <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Martin Uecker <uecker@tugraz.at>
To:     Joseph Myers <joseph@codesourcery.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Date:   Sat, 12 Nov 2022 16:56:44 +0100
In-Reply-To: <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
         <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
         <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
         <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
         <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
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

Am Samstag, den 12.11.2022, 14:54 +0000 schrieb Joseph Myers:
> On Sat, 12 Nov 2022, Alejandro Colomar via Gcc wrote:
> 
> > Since it's to be used as an rvalue, not as a lvalue, I guess a
> > postfix-expression wouldn't be the right one.
> 
> Several forms of postfix-expression are only rvalues.
> 
> > > (with a special rule about how the identifier is interpreted, different
> > > from the normal scope rules)?  If so, then ".a = 1" could either match
> > > assignment-expression directly (assigning to the postfix-expression ".a").
> > 
> > No, assigning to a function parameter from within another parameter
> > declaration wouldn't make sense.  They should be readonly.  Side effects
> > should be forbidden, I think.
> 
> Such assignments are already allowed.  In a function definition, the side 
> effects (including in size expressions for array parameters adjusted to 
> pointers) take place before entry to the function body.
> 
> And, in any case, if you did have a constraint disallowing such 
> assignments, it wouldn't suffice for syntactic disambiguation (see the 
> previous point I made about that; I have some rough notes towards a WG14 
> paper on syntactic disambiguation, but haven't converted them into a 
> coherent paper).

My idea was to only allow

array-declarator : direct-declarator [ . identifier ]

and only for parameter (not nested inside structs declared
in parameter list) as a first step because it seems this 
would exclude all difficult cases.

But if we need to allow more complicated expressions, then
it starts getting more complicated.

One could could allow more generic expressions, and
specify that the .identifier refers to a
parameter in
the nearest lexically enclosing parameter list or
struct/union.

Then

void foo(struct bar { int x; char c[.x] } a, int x);

would not be allowed (which is good because then we
could later use the syntax also inside structs). If
we apply scoping rules, the following would work:

struct bar { int y; };
void foo(char p[((struct bar){ .y = .x }).y], int x);

But not:

struct bar { int y; };
void foo(char p[((struct bar){ .y = .y }).y], int y);


But there are not only syntactical problems, because
also the type of the parameter might become relevant
and then you can get circular dependencies:

void foo(char (*a)[sizeof *.b], char (*b)[sizeof *.a]);

I am not sure what would the best way to fix it. One
could specifiy that parameters referred to by 
the .identifer syntax must of some integer type and
that the sub-expression .identifer is always
converted to a 'size_t'. 

Maybe one should also add a constraint that all new
type length expressions, i.e. using the syntax,
can not have side effects. Or even that they follow
all the rules of integer constant expressions with
the fictitious assumption that all . identifer 
sub-expressions are integer constant expressions.
The rationale being that this would facilitate
compile time reasoning about length expressions.
 

Martin





