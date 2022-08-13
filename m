Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11287591C25
	for <lists+linux-man@lfdr.de>; Sat, 13 Aug 2022 19:27:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239848AbiHMR1n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Aug 2022 13:27:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235606AbiHMR1m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Aug 2022 13:27:42 -0400
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED40E120BB
        for <linux-man@vger.kernel.org>; Sat, 13 Aug 2022 10:27:40 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id 7E152240105
        for <linux-man@vger.kernel.org>; Sat, 13 Aug 2022 19:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.mx; s=2017;
        t=1660411658; bh=1Z75d2CMNh4PWa1hWBUj8mfreMtYPs08FUNCFUJG06o=;
        h=Date:From:Cc:To:Subject:From;
        b=O6gLwNSPxQL7ff0EwjDMuvm7lAZIq64P0HtKLbtTZyUXClwehkaQ2JAvHnADAyrvv
         5mmtbanq+GaoO2qebiV0eE1FA4EujYkuSkXR7yxOseAaWbkFdeI0CHVgnjWGod7hZ9
         0VJsl9Wq67pIwxdgzBCZ8leCHTdZZG4lb5uhtyn55C1goIwuUHpdDgpcSwED0FCsfJ
         xLA2h6jsD0c26/5JHLkjAHu1vuujZMl9fdAihIHdvtuNajApxo0Tn9vxF9H1pEPuEf
         r59gOvxmPsTaB/OBGgFMn8m6xChV09An0nCRKebL94tKSBpWVaTKS7wcbuIOssSQ4E
         20Lm/FD9qjn4Q==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4M4nYM5SHwz9rxK;
        Sat, 13 Aug 2022 19:27:35 +0200 (CEST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Sat, 13 Aug 2022 17:27:34 +0000
Message-Id: <CM52T3SFTBDU.21XFDQOUZP886@grinningface>
From:   "DJ Chase" <u9000@posteo.mx>
Cc:     "Alejandro Colomar" <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, <groff@gnu.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Ingo Schwarze" <schwarze@usta.de>
Subject: Re: *roff `\~` support (was: [PATCH 4/6] xattr.7: wfix)
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de> <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de> <20220812221035.xd4udngmz5erht5p@illithid>
In-Reply-To: <20220812221035.xd4udngmz5erht5p@illithid>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri Aug 12, 2022 at 6:10 PM EDT, G. Branden Robinson wrote:
> Hi Ingo,
>
> At 2022-08-12T16:30:01+0200, Ingo Schwarze wrote:
> > G. Branden Robinson wrote on Thu, Aug 11, 2022 at 03:17:14PM -0500:
> > > At 2022-08-11T14:48:51+0200, Ingo Schwarze wrote:
> > >> The former is portable and the latter is a GNU extension.
> >=20
> > > ...that is over 30 years old and supported by Heirloom Doctools
> > > troff for 17 years now, neatroff for about six, and your mandoc for
> > > three.
> >=20
> > Actually, mandoc supports \~ at least since Sep 17 2009:
> > https://cvsweb.bsd.lv/mandoc/Attic/chars.in?rev=3D1.1&content-type=3Dte=
xt/x-cvsweb-markup
>
> Whoops!  I regret the error, and will update groff's Texinfo manual to
> correct this.
>
> > > plan9port troff doesn't either, and its laudable introduction
> > > of a man(7) MR macro notwithstanding, its activity level is
> > > not high.
> >=20
> > There are people using Plan 9 for practical work though, they have
> > even occasionally posted on the groff and mandoc lists, so that is a
> > bit more of a problem.
>
> [=E2=80=A6] But, if
> that's what it takes to get this escape sequence de facto standardized,
> and no one else will do it, that will move it up the priority queue.

Have we ever considered a de jure *roff standard? If not, here are just
some reasons:

	=E2=80=A2  [the obvious benefits of standardizing anything]
	=E2=80=A2  A standard could lead to more implementations because
	   developers would not have to be intimately familiar with the
	   {groff,heirloom,neatroff} toolchain before implementing a
	   *roff toolchain themselves.
	=E2=80=A2  It could also lead to more users & use cases because existing
	   users could count on systems supporting certain features, so
	   they could use *roff in more situations, which would lead to
	   more exposure.

Cheers,
--=20
DJ Chase
They, Them, Theirs

PS: It=E2=80=99s ridiculous that *roff isn=E2=80=99t part of POSIX when it =
was Unix=E2=80=99s
    killer feature.
