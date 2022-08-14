Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0003C592639
	for <lists+linux-man@lfdr.de>; Sun, 14 Aug 2022 21:44:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbiHNTn6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Aug 2022 15:43:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbiHNTn5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Aug 2022 15:43:57 -0400
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07B141CB04
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 12:43:55 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id D6FC8240101
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 21:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.mx; s=2017;
        t=1660506233; bh=h0JX+hHUri05dIgytMWu7CIdXgoC6Fq+Z+Poyq8b5FA=;
        h=Date:Subject:From:Cc:To:From;
        b=qwvOnjP5mpeKFdGrptRDKBQCy5qr3KQ/xRhzQ59QQOcyJotMOMS3Mcu/WSHrDsRMf
         Af05e/hzR/AsVoZhsbr0G/mFIOnmu5p/YXHr1UpmVb/bpgypN1SGzjurkvelKWAgaU
         ywrRvpE70MyIoFMK3ZORVzfl913sihGoyB7PfEBKw2FbNLIy9mZ8aulIl7nQ8SNoBK
         2BQTub5ygifq1r5zJgkB2SpztbzSLEAI690EnrauLRJ9SSn25LKdf9s3G5dN8mNvQL
         oA0hxhu3rGvkBIt/f2/OCcWmrKw66H0hegc8aAsf/BjDoBOvuk84OhAxgm5OgaJ6xN
         EFsvuiGNslotQ==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4M5SX82SCRz9rxS;
        Sun, 14 Aug 2022 21:43:52 +0200 (CEST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Sun, 14 Aug 2022 19:43:51 +0000
Message-Id: <CM60BZSRVXB6.19YICCPQBUCTD@grinningface>
Subject: Re: Standardize roff (was: *roff `\~` support)
From:   "DJ Chase" <u9000@posteo.mx>
Cc:     <g.branden.robinson@gmail.com>, <linux-man@vger.kernel.org>,
        <groff@gnu.org>
To:     "Alejandro Colomar" <alx.manpages@gmail.com>,
        "Ingo Schwarze" <schwarze@usta.de>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de> <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de> <20220812221035.xd4udngmz5erht5p@illithid>
 <CM52T3SFTBDU.21XFDQOUZP886@grinningface> <Yvj/CAUSL1jVbAot@asta-kit.de>
 <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>
 <738eadd5-5495-d848-ef08-544e97fc1452@gmail.com>
In-Reply-To: <738eadd5-5495-d848-ef08-544e97fc1452@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun Aug 14, 2022 at 12:32 PM EDT, Alejandro Colomar wrote:
> On 8/14/22 16:49, DJ Chase wrote:
> > On Sun Aug 14, 2022 at 9:56 AM EDT, Ingo Schwarze wrote:
> >> You appear to massively overrate the importance end-users
> >> typically attribute to standardization.
> >=20
> > That=E2=80=99s probably because *I* massively overrate the importance o=
f
> > standardization (I mean I literally carry a standards binder with me).
> > Still, though, it=E2=80=99s rather annoying that end users =E2=80=94 es=
pecially
> > programmers =E2=80=94 don=E2=80=99t value standards as much.
>
> (Official) standardization isn't necessarily a good thing.  With C, it=20
> was originally good, in the times of ISO C89.  Now, it's doing more=20
> damage to the language and current implementations than any good (it's=20
> still doing some good, but a lot of bad).
>
> [Snipped because I=E2=80=99m not going to quote the whole email =E2=80=94=
 see previous
> message for argument]
>
> I think it's better to let natural selection to work out its way.  If a=
=20
> feature is good, other implementations will pick it, and maybe even=20
> improve it.  If a feature is not good (or it's not needed by other=20
> systems), it will not be portable.

True; prescriptive standards can certainly make some things worse. As a
further example, ISO 8601 sucks. I mean, its core specification is
great, but there are so many different ways that are allowed that the
full standard is almost completely unparseable. It also uses a slash
between the start and end times of a period instead of something
sensible, like, I don=E2=80=99t know, an en-dash! Which means that periods =
can
be written with a slash (because that=E2=80=99s the standard) but also with=
 an
en-dash (because that=E2=80=99s how ranges work in English), but also that =
one
can=E2=80=99t properly write a period in a file name or URI.

Still, though, I think descriptive standards can be net-positive. The
POSIX shell utilities comes to mind. Sure, they certainly have some
issues, but because it=E2=80=99s a trailing standard, implementers are free=
 to
fix them.

Do you think that a descriptive/trailing standard could be beneficial
or would you still say that it could mostly hinder *roff
implementations?

Cheers,
--=20
DJ Chase
They, Them, Theirs
