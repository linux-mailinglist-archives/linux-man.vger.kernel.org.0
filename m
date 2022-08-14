Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED26C592042
	for <lists+linux-man@lfdr.de>; Sun, 14 Aug 2022 16:49:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229731AbiHNOtS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Aug 2022 10:49:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbiHNOtR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Aug 2022 10:49:17 -0400
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE14915828
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 07:49:15 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id 007CE240103
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 16:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.mx; s=2017;
        t=1660488553; bh=A5XhgeXVGEOJ1N3hWvMC6nMcdypnGuxDPLtW8Pa4eEI=;
        h=Date:Cc:To:Subject:From:From;
        b=H9Vt5rsgnfBjIqdmFmjQmbkcgZGB9I9Q2SWmOIhrzlSyBaE8wQ/Mb4f1Bv9HFWTS6
         VNqQMQdOyQwqtaKNFF/x+fo1+eId/29lG09lRQ7fa6DiHRpwqAPZukmXxVe1XR0PvU
         xvebQD94nKW7MN8N+T5Sd258FGOtj2KXgcYtPz3boz6r+1h1KNvvIoXLmQMvnjjSiU
         IZlFAz1bqacVBawd/z/VZC19MfUM9AIQ4+uxjB+MV5R9Vn/d8e7FDFcGm+kH/Kbg47
         Hg5AdFC/1KRu+aXUP5QJW8XtKPgmt2A6pOijXdI0ZekH25N1yjm2YyezF6eHw5T+xm
         0572AYUVpW+aw==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4M5L07431Kz9rxL;
        Sun, 14 Aug 2022 16:49:11 +0200 (CEST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Sun, 14 Aug 2022 14:49:10 +0000
Message-Id: <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>
Cc:     <g.branden.robinson@gmail.com>,
        "Alejandro Colomar" <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, <groff@gnu.org>
To:     "Ingo Schwarze" <schwarze@usta.de>
Subject: Re: Standardize roff (was: *roff `\~` support)
From:   "DJ Chase" <u9000@posteo.mx>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de> <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de> <20220812221035.xd4udngmz5erht5p@illithid>
 <CM52T3SFTBDU.21XFDQOUZP886@grinningface> <Yvj/CAUSL1jVbAot@asta-kit.de>
In-Reply-To: <Yvj/CAUSL1jVbAot@asta-kit.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun Aug 14, 2022 at 9:56 AM EDT, Ingo Schwarze wrote:
> Hi,
>
> DJ Chase wrote on Sat, Aug 13, 2022 at 05:27:34PM +0000:
>
> > Have we ever considered a de jure *roff standard?
>
> No, i think that would be pure madness given the amount of working
> time available in any of the roff projects.
>
> [=E2=80=A6]

This is very sad to hear.

> > It could also lead to more users & use cases because existing
> > users could count on systems supporting certain features, so
> > they could use *roff in more situations, which would lead to
> > more exposure.
>
> You appear to massively overrate the importance end-users
> typically attribute to standardization.

That=E2=80=99s probably because *I* massively overrate the importance of
standardization (I mean I literally carry a standards binder with me).
Still, though, it=E2=80=99s rather annoying that end users =E2=80=94 especi=
ally
programmers =E2=80=94 don=E2=80=99t value standards as much.

> > It=E2=80=99s ridiculous that *roff isn=E2=80=99t part of POSIX when it =
was Unix=E2=80=99s
> > killer feature.
>
> You are welcome to spend the many years required to change that.
> But be aware that some standardization efforts that are part of
> POSIX resulted in parts of the standard that are barely useable
> for practical work.  One famous example is make(1).
>
> Don't get me wrong: i think standardization is very nice to have,
> should be taken very seriously when available, and provides some
> value even when the standardization effort mostly failed, like in
> the case of make(1).  But standardization is absolutely not cheap.
> To the contrary, it is usually significantly more expensive than
> implementation and documentation.

Would an informal de jure standard be of any use? Like how TOML just has
a specification, but it=E2=80=99s somewhat usable as a standard because it=
=E2=80=99s
been pretty stable and because it=E2=80=99s written clearly enough.

Cheers,
--=20
DJ Chase
They, Them, Theirs
