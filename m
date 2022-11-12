Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC04862698A
	for <lists+linux-man@lfdr.de>; Sat, 12 Nov 2022 14:03:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232841AbiKLNDh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Nov 2022 08:03:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232311AbiKLNDg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Nov 2022 08:03:36 -0500
Received: from esa1.mentor.iphmx.com (esa1.mentor.iphmx.com [68.232.129.153])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC9A9BB5
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 05:03:33 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,159,1665475200"; 
   d="scan'208";a="89683342"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa1.mentor.iphmx.com with ESMTP; 12 Nov 2022 05:03:33 -0800
IronPort-SDR: DBmus25gbQ9wLnON5Z0nWpbCyP3Xj6Bj5rBBqWMkSp9Xy8ZPnPJWPFMOhfu2smKxyG4yShGfK8
 btlDq03oBI68Awi1+y1hUclFeCRMLRDHFaznCrZuwXBz0inA7bM2Kq9ZZUYBnCS9E+xUawLAs2
 g6VkWJBbjrxVZ8neAyunLC/qRahHBBUmFZf7kAcFluMsp3iadA3b26G4zeN+13evEasaKWoCCf
 SOf1boIZbAqzuqcOND2abgTbG6AiTGyeWA9y+Wg8YD4cdjCFeJ3max4CBAb7FpGM5LyBkgNXJ7
 AyU=
Date:   Sat, 12 Nov 2022 13:03:27 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>,
        <linux-man@vger.kernel.org>, <gcc@gcc.gnu.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
In-Reply-To: <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
Message-ID: <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com> <YwoXTGD8ljB8Gg6s@asta-kit.de> <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com> <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com> <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com> <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com> <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at> <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com> <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com> <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at> <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com> <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com> <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at> <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com> <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
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

On Sat, 12 Nov 2022, Alejandro Colomar via Gcc wrote:

> > struct s { int a; };
> > void f(int a, int b[((struct s) { .a = 1 }).a]);
> 
> Is it really ambiguous?  Let's show some currently-valid code:

Well, I still don't know what the syntax addition you propose is.  Is it

postfix-expression : . identifier

(with a special rule about how the identifier is interpreted, different 
from the normal scope rules)?  If so, then ".a = 1" could either match 
assignment-expression directly (assigning to the postfix-expression ".a").  
Or it could match designation[opt] initializer, where ".a" is a 
designator.  And as I've noted many times in discussions of C2x proposals 
on the WG14 reflector, if some sequence of tokens can match the syntax in 
more than one way, there always needs to be explicit normative text to 
disambiguate the intended parse - it's not enough that one parse might 
lead later to a violation of some other constraint (not that either parse 
leads to a constraint violation in this case).

Or is the syntax

array-declarator : direct-declarator [ . assignment-expression ]

(with appropriate variants with static and type-qualifier-list and for 
array-abstract-declarator as well, and with different identifier 
interpretation rules inside the assignment-expression)?  If so, then there 
are big problems parsing [ . ( a ) + ( b ) ], where 'a' is a typedef name 
in an outer scope, because the appropriate parse would depend on whether 
'a' is shadowed by a parameter - unless of course you add appropriate 
wording like that present in some places about not being able to use this 
syntax to shadow a typedef name.

Or is it just

array-declarator : direct-declarator [ . identifier ]

which might avoid some of these problems at the expense of being less 
expressive?

If you're proposing a C syntax addition, you always need to be clear about 
exactly what the new cases in the syntax would be, and how you resolve 
ambiguities with any other existing part of the syntax, how you interact 
with rules on scopes, namespaces and linkage of identifiers, etc.

-- 
Joseph S. Myers
joseph@codesourcery.com
