Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F40A7664C07
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 20:09:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239667AbjAJTIv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 14:08:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239845AbjAJTI2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 14:08:28 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8759152C43
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 11:08:05 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id m7-20020a9d73c7000000b00683e2f36c18so7611114otk.0
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 11:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iZxREFzWA+ZOS2loPQwSX6zXmJp00K4ZKFnqNVCRFP4=;
        b=W6a8YUlBuxSAqdR3EpMRNprIHtBoo+/hvVjXmt+4fwjZpzf44WJZaJBUrKO9cAS970
         IeVOB9dgK4KXVXXXOc7+Ezl4pwCt3Z1IRawluOjxbqu8x7ixypGWC4ambksOIc7B5Kp9
         /RSOHt+G07GnSdLHVZ05erW/YUaUUb75iI2eYnp2ZJzIhKr3d/sGOSi6VvjnxRbsCAjH
         SzY9jd/RWDzLCcAWXAPENq9s9o8r39nEljrqGZh2AdGUCJ9dOJjfxMR4fklOpRRmWP1s
         NKWyX6/4L5Dx4RxN4sT5OBX/qr0nQoBAQ1M6ur/Q5JgaauUnjeg9pQNoSvOmB01gX/mb
         isQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iZxREFzWA+ZOS2loPQwSX6zXmJp00K4ZKFnqNVCRFP4=;
        b=MHxdjj17JrlIOgC0DCREX1NamFyb4YE93Ez5iNlW7H3OhFtcIonWTPIl66d1oEO/Ku
         FzI8G+41ZMKS36oxFjZgMTe2XsqHzIcuqnqpO2QkolbMOATdcYSn3C4cfpnSoIbsaZM8
         lL97qPFpAhS4ug1xMszhhC5ZE3w5jdhfwnjt+NlIw1P7MdCCBtzgMzGbwjT1JZlnRmLo
         G40A1wmxrfioqwAZA88bGFwlmluNtlGp9CXRcE5warhLzpc4gATlV8dGWqr4YhwK7FEZ
         PbSHqEqo06iGi+qXmdwzsmmF6bC65odMAxMJUoP06x+bK07Qmqu8ASclpQ/jZHhY3Pz7
         pXSQ==
X-Gm-Message-State: AFqh2kpK1lafD/GAuyMrROMncX/5UmKtihtVXSVoQgTo8uDeZgNimp9K
        QlhjYca8dL/xtS7FnmffeSo=
X-Google-Smtp-Source: AMrXdXuVHX+TU6wcV78QV2Yy+p3/ODusvECIEXxApa73hEpmusnCzjlbfsigbgkXA7Bf+3l8gEJaHg==
X-Received: by 2002:a05:6830:60d:b0:671:c268:6a6e with SMTP id w13-20020a056830060d00b00671c2686a6emr38772445oti.25.1673377684828;
        Tue, 10 Jan 2023 11:08:04 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d21-20020a9d4f15000000b006704589eb54sm6427957otl.74.2023.01.10.11.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 11:08:04 -0800 (PST)
Date:   Tue, 10 Jan 2023 13:08:02 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>, groff <groff@gnu.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: modal man(7) extensions for groff and man-db man(1) (was: Manual
 page sections shouting)
Message-ID: <20230110190802.q6g25ooerpilg5km@illithid>
References: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>
 <20230107101752.p66xbjbojut4azes@illithid>
 <Y72esggaPZ5jy8Z3@beryllium>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="jabsx7asgeqxffxi"
Content-Disposition: inline
In-Reply-To: <Y72esggaPZ5jy8Z3@beryllium>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jabsx7asgeqxffxi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Lennart,

At 2023-01-10T17:21:54+0000, Lennart Jablonka wrote:
> Quoth G. Branden Robinson:
> > _If_ we added yet another groff extension to man(7), analogous to
> > mdoc(7)'s `Sx`, we could support hyperlinks directly to man page
> > sections and subsections.  (On terminals, we'd still need a way to
> > mark locations in the page text as link targets, and for it to be
> > practically useful, pagers would have to grow more features.  Given
> > the amount of idiocy, particularly from people who think that a URL
> > in a terminal window is a security risk in some way that a URL on a
> > web page isn't, that Egmont Koblinger has had to put up with in
> > promulgating OSC 8, I would not count on the infrastructure for this
> > materializing soon.)  But for PDF all the pieces are in place; they
> > just need some glue in the groff man(7) package.
>=20
> Surely man(1) and man(7) could coorperate to produce a tags file that
> could be used by a pager.  On OpenBSD, you can use less(1)=E2=80=99s :t to
> jump to a bunch of stuff in a man page.

I like this idea.  It meshes well with another I've had to eliminate the
necessity for lexgrog(1) by supporting a mode (selected by a register or
string specified at formatting time) where the page formats the contents
of the "Name" section, and _only_ that, and exits (technically, `nx`es).

It would be up to man(1) to stuff the tag output into a temporary file
and tell less(1) to use it, but that sort of thing is consistent with
its existing feature set, I think.

Regards,
Branden

--jabsx7asgeqxffxi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO9t5IACgkQ0Z6cfXEm
bc7yOQ/+Irj1H3nrxstz0pB86GjWIU5RR1OoqenfkoyAyt6DRFOt1EMJLk9jrCst
FsyltH5tA85xmMYL3G911EkKKQXdIPAzZZY4kzk+OnXKvfNPh4TcicPcUHqlbGWo
nYJrqYUxL1SHIR3bajLVbSzG4+4c0g8S6PkJkenrcXeP+4mAkUOXiq1ArK4rbKVH
C002VYX0ordDUYbr2qOReortg6ZuS0DetmfHGWE4f1QmLszyqIMFE9DJshm3ZzTK
KyvnNCG4eBDS+8VfXybelO1S3a/CLzBft537Q8+bzY5lVhBoxoMuv4KELpBFcpNj
+aCLbIL1ka7kZGnvcvMl7YG7+rT/vaEaIIU+PxwZuVyGsZSp0ALo7NEemiK3EjUx
5jLeIgdzyEJQIIuNDwKEaVBrDnTvIb/Jd83vDlZjzf3w2tho32s0WqGxCqTgZ665
Y0QtJfNc1mdJJqAFCx0nklGPCohNnFB/s4sSpy4T3Kq/3eRpN6WNGuuar60J99sy
JuBofb4h4mXFafXfbvUlChon1QS4SLVFhimSebB+Ey5+Pv4hjstXZuH1S0AtmXNc
DcJerJw5ePWUG2lNKSZ42mENayOMn/3vfevwlD8k3JAM53noG4b7BH8LjuQT5xN6
JtkTC18k45qZCfh0CT3FzKkZsZKDN0+LAq4+Gd6i6ALZIzu1oBI=
=LImx
-----END PGP SIGNATURE-----

--jabsx7asgeqxffxi--
