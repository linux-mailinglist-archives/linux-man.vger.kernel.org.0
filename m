Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 100E765DCBA
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 20:27:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239670AbjADT1w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 14:27:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240137AbjADT1h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 14:27:37 -0500
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42B7D3D1E0
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 11:27:33 -0800 (PST)
Received: by mail-oo1-xc29.google.com with SMTP id d2-20020a4ab202000000b004ae3035538bso6614486ooo.12
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 11:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fc1/NMYeoGQZ9YkjlZ4GK078xJb9E+1wbgPv1gBTGBc=;
        b=etNLS5mxBU0hqL6DrDI0afFXirwPSTx2atMoPazTkLl/XOuWl6DB+zTxmAvVho624P
         fT7JbzugolP8tIAH3zUdN+Z/QITp74LkArn6iVuJ7vOQihIlQAOdCEAC0FZhjhjcslHP
         CSlCdxJ7Wdxn3YGXIBAa9P90WETemXv7qpyIr2fr+8R4XuhkkRW/C6bT7uTTWbEMu2cx
         7VvQAIfb3ccyDNZRbbJZeRm7K+fI42GWl1BcjxOCek14pIrd9Cil8+wg6Tk4cR2zq/6a
         4iCSjHOoSNfs5dgh6Pa7Mq+CjCNOyP+E2xh60EfbjaoyOXGEO5yXUJPN8IR3Z3dvE4k5
         e8XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fc1/NMYeoGQZ9YkjlZ4GK078xJb9E+1wbgPv1gBTGBc=;
        b=AvsG1BCZA5k69NRYjdgb3vdW9gFzbmYuoLbx3Sq7o90B+dqWWfe/5TB/XkhN6kqIRK
         Da5HYYZR2XD67R1T+O4EpT0nI1c725wEW4/SdABBJIKLCOEbm8U4s4dnnHWcPvSnlpXG
         eOozd3xBslQL8UWLvTn7lh/X+YHp3gFERPksZ0192otfuKDK4KeoLfPHsxt0h5mdqw4h
         mIcFD/iWAKRwBmWpab9kSvI3PJk5TjN3ObRhzre+eh0SUtk2+huSFpGoDbsaGzhdmsZL
         FR6pLtx4gDByYH5AoU6sGxwZXLBSvD43jaW2yZXxusqMlOhlawnfc0923fNv4HkIJPZF
         zO8Q==
X-Gm-Message-State: AFqh2kqTD+w3W6f9/ttiZOZbYoVjEyWOcfguNMbww3Utea1R8hvpMfPE
        MCw8ysnPS2Q6Z4bR9HDE7/ncNjAPtdI=
X-Google-Smtp-Source: AMrXdXto8JCnP5FmYv3NupOzNCgpeRBGKAixt8LJZRNZi+Bk48heD7hAIcMjrtt+Q5Zoh3M3FA/U7Q==
X-Received: by 2002:a4a:d396:0:b0:4a0:a698:d1f with SMTP id i22-20020a4ad396000000b004a0a6980d1fmr22645425oos.1.1672860452538;
        Wed, 04 Jan 2023 11:27:32 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v8-20020a4ae048000000b0049fd5c02d25sm13717773oos.12.2023.01.04.11.27.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 11:27:32 -0800 (PST)
Date:   Wed, 4 Jan 2023 13:27:30 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2 0/9] intro.3, libc.7, ldconfig.8: Revise
Message-ID: <20230104192730.2wubuypj5pwbjs62@illithid>
References: <20230104073746.govufof5kk34nonj@illithid>
 <5fc0b202-0829-42b2-760a-25e1de006e34@gmail.com>
 <20230104160530.ony3dowlttbjehha@illithid>
 <07547001-e13e-a9a2-b0ba-0879d0b1280e@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tgxkappjxhfillop"
Content-Disposition: inline
In-Reply-To: <07547001-e13e-a9a2-b0ba-0879d0b1280e@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tgxkappjxhfillop
Content-Type: multipart/mixed; boundary="ube5fqx67e3gzaby"
Content-Disposition: inline


--ube5fqx67e3gzaby
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-04T20:03:08+0100, Alejandro Colomar wrote:
> > There is more elaborate ASCII art in sched(7).  That can be made
> > relatively pretty with Unicode arrow characters; the four orthogonal
> > single-stemmed arrows even happen to have portable special character
> > identifiers going back to 1976 AT&T troff.
> >=20
> > But I'm not sure about chewing that one off.  Using special
> > character escape sequences would make the source looked weirder and
> > misaligned.  There's a way around that (the `tr` request) but that's
> > a fairly chunky breach of the "no *roff requests in man page
> > sources) rule that Ingo Schwarze and I try to hold to.
> >=20
> > Still, it's worth thinking about whether you'd like to have pic(1)
> > diagrams in the Linux man-pages, with ASCII/Unicode-art fallbacks
> > for terminal devices.
>=20
> I don't know.  Can you show source code and formatted output of some
> examples, so I can compare?

Sure.

groff's soelim(1) man page is an example.

https://git.savannah.gnu.org/cgit/groff.git/tree/src/preproc/soelim/soelim.=
1.man

Here's the output of the first diagram in ASCII:

                 input        sourced
                 file          file
                   |             |
                   v             v
               preprocessor --> troff --> postprocessor
                                             |
                                             v
                                          output
                                           file

=2E..and UTF-8:

                 input        sourced
                 file          file
                   =E2=8E=AA             =E2=8E=AA
                   =E2=86=93             =E2=86=93
               preprocessor =E2=8E=AF=E2=86=92 troff =E2=8E=AF=E2=86=92 pos=
tprocessor
                                             =E2=8E=AA
                                             =E2=86=93
                                          output
                                           file

=2E..and I'm attaching a screenshot from groff-man-pages.pdf.

> >  I have some pending patches that look like
> > this.
> >=20
> > commit ab218d9f02bcfb9d6c7c127ed90c9a8c34cd8ba5
> > Author: G. Branden Robinson <g.branden.robinson@gmail.com>
> > Date:   Wed Jan 4 02:31:37 2023 -0600
> >=20
> >      adjtimex.2, eventfd.2, mmap2.2, perf_event_open.2, quotactl.2, shm=
get.2, times.2, drand48.3, ldexp.3, random.3, tgamma.3, proc.5, mount_names=
paces.7, random.7, sched.7, tcp.7, udplite.7, units.7, unix.7, utf-8.7: src=
fix
>=20
> You could use "Various pages: srcfix" here.

Cool, I'll do that, then.

> BTW, another thing I noticed you practice is writing a trailing '.' in
> the subject line.  I don't have any strong preference there, but
> followed the practice of not writing it, as Michael did.  It has the
> advantage of having one more byte for the subject.
>=20
> I guess you prefer language consistency.

Yes, it's a practice I advocate to remind the commit writer that they
should be writing a declarative _sentence_ in the imperative mood that
characterizes the _intent_ of their change.  Programmers, especially
inexperienced, overwhelmed, or devious ones, tend to resort to passive
description of their changes.  This makes it harder to tell what their
intentions were.  (The final group views this as a feature, not a bug.)

And anyone with a bit of salt knows--all too often, the effect and the
intention of code all too often diverge.

Then of course there are the rock stars who describe neither the intent
or the actuality of their code at all--they just hand you demoware that
"works", get a swift high-five from the manager, and hastily move on to
another department.  Leave documentation and validation to scullions,
with the same manager marveling at the poor productivity of the rest of
the team in contrast to the cowboy they just talked up for a promotion.

Anyway, I belatedly remembered that Linux man-pages prefers to omit the
trailing period, so my more recent proposed patches lack it.

Regards,
Branden

--ube5fqx67e3gzaby
Content-Type: image/png
Content-Disposition: attachment; filename="soelim-diagram.png"
Content-Transfer-Encoding: base64

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
AABJRU5ErkJggg==

--ube5fqx67e3gzaby--

--tgxkappjxhfillop
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO10xoACgkQ0Z6cfXEm
bc52lg//dB5PRvaiQ/yws3Zw/HRhM1RVfUPUHk6kxTbalILYaNjaUXYLTC4Z9KBN
RhZubLlaUegJgJWCiKvjyPHvHBZnCYX+axideiY6nz8I8ZJrJXWTLT6bCzAd7MaP
u3Pl2C+dRf8w7qU/zxLvn/aKpRMKGa0n+49JvaymE7rW+ECcdkDJKHvSmFDLZaYC
AlvvVuhS+cIkyI9MkFibSeSMzU1L2ZcQ+lW/517LX8CFqyXwCERa/XICw2kSO8f9
0kFDXdAWlL2Gf3L4/K2o6dV6u3bAHUwLozA82MJb2//PPAA31RlZvjnLJEWYcCgP
8lJXqgZ6akcw410I1lBXwkyOhq/vapIs+mqIMCDjZRyPZapKTgX3ZHeyAfzpj9HT
l0dK/jVi3eo1Q2Dnx5QvuZ2aBGVfrfOw6SXPDFh3dml8oEIMLU6zS/oYgQOpnzMf
V0YGAh8lwDHrvGN9mx7R2Dz461vLGqd5hpfJeIr4itIlRbYGdQ/lSKZCE1HFhIj7
CRChuwDNWrl43rzQiczJuYh2nbQpD+YUwac9ubnbdIvdcEa1XG9xwr30udbPzg2p
v/kOeb6UywmeVNCTs9xSnojgxVzaXSJaKua1dnMvyBB4Tf4wYt7dK3at/Wao6+OU
2F/btWvL5WnhrSdOCW9U7my0cZSu+7fICytORja38SfBLkxu3vo=
=Mtfp
-----END PGP SIGNATURE-----

--tgxkappjxhfillop--
