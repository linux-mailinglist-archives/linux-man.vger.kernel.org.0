Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11A40628811
	for <lists+linux-man@lfdr.de>; Mon, 14 Nov 2022 19:14:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236888AbiKNSNn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Nov 2022 13:13:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238304AbiKNSNZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Nov 2022 13:13:25 -0500
Received: from esa4.mentor.iphmx.com (esa4.mentor.iphmx.com [68.232.137.252])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2D282983D
        for <linux-man@vger.kernel.org>; Mon, 14 Nov 2022 10:13:19 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,164,1665475200"; 
   d="scan'208";a="86846140"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa4.mentor.iphmx.com with ESMTP; 14 Nov 2022 10:13:20 -0800
IronPort-SDR: CksuF99aYULDFL0SPSPLNLz+udvtf+xF2QvscV5/sdXWiC1/j8GQZ545N9GYxNId3SxSl6O/LM
 SBtkstzJwgUyKjVuhgsp0yTgzQcKJUaCAwTbY1Idp0zaktRo6Xww0k7j2SFL2rcB9l0denUg6B
 JBp2ciOrxRanJuBsfvvf9FmS+LSkl2RVS4FZ8zXPTohZdOgWRsWsBNTYbmdRk8DwoegSF1GYbL
 9u2DDFNO86qS+vguCsyHFLeLqXHW/bc8qZ1KRzaUiSyUs/mdUuxFkLT7j5rR3NKvjoAbV+OHvV
 7TI=
Date:   Mon, 14 Nov 2022 18:13:13 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>,
        <linux-man@vger.kernel.org>, <gcc@gcc.gnu.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
In-Reply-To: <9560a2e4-0234-d07e-2d7a-302015318771@gmail.com>
Message-ID: <f4665b70-fec0-d0b7-e683-cd53ca5afce8@codesourcery.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com> <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at> <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com> <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com> <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at> <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com> <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com> <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com> <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com> <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at> <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com> <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com> <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at> <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com> <9560a2e4-0234-d07e-2d7a-302015318771@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-14.mgc.mentorg.com (139.181.222.14) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, 13 Nov 2022, Alejandro Colomar via Gcc wrote:

> SYNOPSIS:
> 
> unary-operator:  . identifier

That's not what you mean.  See the standard syntax.

unary-expression:
  [other alternatives]
  unary-operator cast-expression

unary-operator: one of
  & * + - ~ !

> -  It is not an lvalue.
> 
>    -  This means sizeof() and _Lengthof() cannot be applied to them.

sizeof can be applied to non-lvalues.

>    -  This prevents ambiguity with a designator in an initializer-list within
> a nested braced-initializer.

No, it doesn't.  See my previous points about syntactic disambiguation 
being a separate matter from "one parse would result in a constraint 
violation, so choose another parse that doesn't" (necessarily, because the 
constraint violation that results could in general be at an arbitrary 
distance from the point where a choice of parse has to be made).  Or see 
e.g. the disambiguation rule about enum type specifiers: there is an 
explicit rule "If an enum type specifier is present, then the longest 
possible sequence of tokens that can be interpreted as a specifier 
qualifier list is interpreted as part of the enum type specifier." that 
ensures that "enum e : long int;" interprets "long int" as the enum type 
specifier, rather than "long" as the enum type specifier and "int" as 
another type specifier in the sequence of declaration specifiers, even 
though the latter parse would result in a constraint violation later.

Also, requiring unbounded lookahead to determine what kind of construct is 
being parsed may be considered questionable for C.  (If you have an 
initializer starting .a.b.c.d.e, possibly with array element access as 
well, those could all be designators or .a might be a reference to a 
parameter of struct or union type and .b.c.d.e a sequence of references to 
members within it and disambiguation under your rule would depend on 
whether an '=' follows such an unbounded sequence.)

> -  The type of a .identifier is always an incomplete type.
> 
>    -  This prevents circular dependencies involving sizeof() or _Lengthof().

We have typeof as well, which can be applied to expressions with 
incomplete type.

> -  Shadowing rules apply.
> 
>    -  This prevents ambiguity.

"Shadowing rules apply" isn't much of a specification.  You need detailed 
wording that would be added to 6.2.1 Scopes of identifiers (or equivalent 
elsewhere) to make it clear exactly what scopes apply for identifiers 
looked up using this construct.

>    -
>        void foo(struct bar { int x; char c[.x] } a, int x);
> 
>        Explanation:
>        -  Because of shadowing rules, [.x] refers to the struct member.

I really don't think standardizing VLAs-in-structures would be a good 
idea.  Certainly it would be a massive pain to specify meaningful 
semantics for them and this outline doesn't even attempt to work through 
the consequences of removing the rule that "If an identifier is declared 
as having a variably modified type, it shall be an ordinary identifier (as 
defined in 6.2.3), have no linkage, and have either block scope or 
function prototype scope.".

The idea that .x as an expression might refer to either a member or a 
parameter is also a massive change to the namespace rules, where at 
present those are in completely different namespaces and so in any given 
context a name only needs looking up as one or the other.

Again, proposals should be *minimal*.  And even when they are, many issues 
may well arise in practice (see the long list of constexpr issues in my 
commit message for that C2x feature, for example, which I expect to turn 
into multiple NB comments and at least two accompanying documents).

-- 
Joseph S. Myers
joseph@codesourcery.com
