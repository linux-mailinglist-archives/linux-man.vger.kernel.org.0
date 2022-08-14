Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27B1F5926E3
	for <lists+linux-man@lfdr.de>; Mon, 15 Aug 2022 00:59:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229486AbiHNW7H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Aug 2022 18:59:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiHNW7G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Aug 2022 18:59:06 -0400
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 836EE12AB9
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 15:59:04 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id 23199240101
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 00:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.mx; s=2017;
        t=1660517942; bh=L0lrW94wABEmswbKvOTI6QmEh1JYhPad1xktJIdCsXE=;
        h=Date:From:Cc:To:Subject:From;
        b=CU9P5nI392VMcGdUb+1gKGbjueSZNmxsWSG2ciTe/Y7g7G/V46/bWY/419RpyvpjC
         iDUcXQwp9ZK9YIUvfN702JpoQ8k/smOUCqac5QgerJ3O/M7nQYL9Z1SxE8Ho3vwPmh
         xGxOL2w3NujRMeFK1y7ow545gWuPcHmioxdxaQtIFaSJ6iz/G8oUYww5TglOVVFWMB
         ZQqtxQfE5nL4pW6msCLKSv80VYOJl2exVbE1TMXzJKqldZstpy4pC2UZN9b2Nvwxgd
         Emv1GrCFmZYWICVQ+U1vraIzpYfbmHMkeD3sux3gIzihnn9ha2f6oUGMuTl3CSycad
         v3cthuwMDNp4w==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4M5XsJ2vndz9rxG;
        Mon, 15 Aug 2022 00:59:00 +0200 (CEST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Sun, 14 Aug 2022 22:58:59 +0000
Message-Id: <CM64HEBJLDTR.3IKKX3JFOOT3H@grinningface>
From:   "DJ Chase" <u9000@posteo.mx>
Cc:     "Ingo Schwarze" <schwarze@usta.de>,
        "Alejandro Colomar" <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, <groff@gnu.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Standardize roff (was: *roff `\~` support)
References: <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de> <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de> <20220812221035.xd4udngmz5erht5p@illithid>
 <CM52T3SFTBDU.21XFDQOUZP886@grinningface> <Yvj/CAUSL1jVbAot@asta-kit.de>
 <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>
 <20220814223529.tibd5roy5mtds3xv@illithid>
In-Reply-To: <20220814223529.tibd5roy5mtds3xv@illithid>
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun Aug 14, 2022 at 6:35 PM EDT, G. Branden Robinson wrote:
> At 2022-08-14T14:49:10+0000, DJ Chase wrote:
> > On Sun Aug 14, 2022 at 9:56 AM EDT, Ingo Schwarze wrote:
> > > DJ Chase wrote on Sat, Aug 13, 2022 at 05:27:34PM +0000:
> > >
> > > > Have we ever considered a de jure *roff standard?
> > >
> > > No, i think that would be pure madness given the amount of working
> > > time available in any of the roff projects.
>
> Mark your calendars--Ingo and I are in substantial agreement.  ;-)
>
> > This is very sad to hear.
>
> I think the take-away here is that the decision to formally standardize
> a technology, like many things, is an economic one.  There are costs and
> benefits.  Being seduced by the benefits without a full understanding of
> the costs often leads to remorse.  (And, in many domains, fat
> commissions for sales personnel.)
>
> > That=E2=80=99s probably because *I* massively overrate the importance o=
f
> > standardization (I mean I literally carry a standards binder with me).
> > Still, though, it=E2=80=99s rather annoying that end users =E2=80=94 es=
pecially
> > programmers =E2=80=94 don=E2=80=99t value standards as much.
>
> I think it is less that programmers value standards in the wrong amount,
> than that they disregard them for the wrong reasons--like "moving fast"
> and building fragile solutions that will cost more on the back end after
> higher-paid decision makers have moved on to greener pastures.
>
> Nothing succeeds like handing your successor a trash fire.
>
> > Would an informal de jure standard
>
> You just defined "de facto standard".  ;-)
>
> "De jure" is Latin for "of the law".  If something is not codified in
> "law", or a normative document like a formal standard, then what is
> "standard" is simply the intersection of prevailing practices.

By =E2=80=9Cinformal de jure=E2=80=9D, I meant =E2=80=98de jure, but writte=
n in an informal
manner=E2=80=99.

> > be of any use? Like how TOML just has a specification, but it=E2=80=99s
> > somewhat usable as a standard because it=E2=80=99s been pretty stable a=
nd
> > because it=E2=80=99s written clearly enough.
>
> A purely descriptive document, mainly comprising a matrix of features
> with escape sequence, request, and predefined register names on one axis
> and the names of implementations on the other, with version numbers and
> commentary populating the elements, could be a useful thing to have.

I=E2=80=99m on it (except not really, because we=E2=80=99re in the middle o=
f a move,
school resumes shortly, and etc. But eventually=E2=84=A2, I=E2=80=99m on it=
).

Cheers,
--=20
DJ Chase
They, Them, Theirs
