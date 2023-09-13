Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7D2179F0A0
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 19:49:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230311AbjIMRt6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 13:49:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjIMRt6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 13:49:58 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39DC519AE
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 10:49:54 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-1c4cf775a14so58965fac.3
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 10:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694627392; x=1695232192; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FBPnc5Gaa3X2S6r6FiqXb/jaOf8BeBy67hIeVKTRxL8=;
        b=CPtuIBWn4KKB2G/paSJHnaLjErUvgFmsitjtLYvsQlomM6F/M34EYxoN27A7y7ioPb
         EgdB0d9PeXGrlkOKFsFTRSvNtNiykPakln1B7/hex8p9UmlYCVYvAJo40XRgALa4NJT0
         XMkO+tSnq+ZMrMqSTuYulVdKeg1SUbopyFJfeBRaYg0+5JXhmkIdbqw1A5Iw3T+SKA5A
         nabHZTrJ3AE+RGXrzjGdUbBzPAkqJg3gcSwI5BUvwIewV3qy+l6fxGCQs01j6SguqLdG
         omEoSXbPbbdt8k1GpaYzHR81mFrgmUAfruzrm0p9+0bMLEAjcmoUeYLHFlLs/kd/IFw3
         wn7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694627392; x=1695232192;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FBPnc5Gaa3X2S6r6FiqXb/jaOf8BeBy67hIeVKTRxL8=;
        b=HMsAk3CNVTjSI3Ir4CwTfIiF6FoNQfVzkJVSTQ3t4Ckt6AHBExptlMH4iI4/rWva2d
         Cd9hFbkspJ03hWarEwOr7HShWayDHou2jqK3IXE9/UoPsk0v5Mc5a7ZWw7uty4IubOjI
         Y1bPOaMFHszlagOiinXqm9bghnK8gfeIPmKw0IxstMnQb1ns/F0l3Eo24IHXOLCMSFc8
         ihYzMFSWuUMMBv0oeVOAXF4yyWFvUklYdWRDBb3o+9xPT8/v+swRIoFbUAMBT03AEtE/
         OPSLyoCN+tsysSfq1EhoPtPouJGpxhtqY9pJ4keVVF4ItnSM1omvpY31oG4xD9yAQMUj
         J9rQ==
X-Gm-Message-State: AOJu0YzC/eSS7IAK8YsQWRWL/TUkNSPinalR7cdzREKF2Y1Li+dtF3iJ
        LS50dVSz/Jb/ytBDgFCk5SjPKU9xd/g=
X-Google-Smtp-Source: AGHT+IHv2fsjZndQ6rDhNppboSzrb+yw8F0aGSKzr4YWfQGVNJClhg8j2IBHDcmaiObgOWC7F4rqFQ==
X-Received: by 2002:a05:6870:65ab:b0:1be:fd4e:e36c with SMTP id fp43-20020a05687065ab00b001befd4ee36cmr3550386oab.2.1694627392474;
        Wed, 13 Sep 2023 10:49:52 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id zc17-20020a056871271100b001babd036460sm6470025oab.19.2023.09.13.10.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 10:49:52 -0700 (PDT)
Date:   Wed, 13 Sep 2023 12:49:50 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH] ioctl.2: note "int request" form, HISTORYise a bit
Message-ID: <20230913174950.36crji6z3mzg3j7h@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="kfj4han7ltyrwzue"
Content-Disposition: inline
In-Reply-To: <171eade0-c2f9-4390-a2ff-c5dd9bfe6a99@gmail.com>
 <f532a4d8-be27-4b61-bd4e-865722626c06@kernel.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kfj4han7ltyrwzue
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-09-13T17:24:53+0200, Alejandro Colomar wrote:
> > diff --git a/man2/ioctl.2 b/man2/ioctl.2
> > index 6b55d47c9..a658da354 100644
> > --- a/man2/ioctl.2
> > +++ b/man2/ioctl.2
> > @@ -20,9 +20,8 @@ .SH SYNOPSIS
> >  .nf
> >  .B #include <sys/ioctl.h>
> >  .PP
> > -.BI "int ioctl(int " fd ", unsigned long " request ", ...);"
> > -.\" POSIX says 'request' is int, but glibc has the above
> > -.\" See https://bugzilla.kernel.org/show_bug.cgi?id=3D42705
> > +.BI "int ioctl(int " fd ", unsigned long " request ", ...);" "\fR  /* =
glibc, BSD */\fP"
> > +.BI "int ioctl(int " fd ", int " request ", ...);" "\fR            /* =
musl, other UNIX */\fP"
>=20
> LGTM.
[...]
> [while applying, changed to use the \f[...] form.]

It's a shame the ellipsis is in italics.  This will underline it on
terminals when the user hasn't gone out of their way to exercise the
italic attribute.[1]  Also, it is idiomatic to write ellipses with `\|`
escape sequences internally separating the dots; this looks better on
typesetters.  (It wouldn't matter when a monospaced font is used, but
the Linux man-pages don't do that for synopses.)

Perhaps consider...

+.BI "int ioctl(int " fd ", unsigned long " request ", \f[R].\|.\|.\f[]);" =
"\f[R]  /* glibc, BSD */\f[]"
+.BI "int ioctl(int " fd ", int " request ", \f[R].\|.\|.\f[]);" "\f[R]    =
        /* musl, other UNIX */\f[]"

What do you think?

At 2023-09-13T18:44:53+0200, Alejandro Colomar wrote:
> On 2023-09-13 18:02, =D0=BD=D0=B0=D0=B1 wrote:
> > Bit me in https://github.com/thecoshman/http/issues/155:
>=20
> Be careful with URIs.  They _must_ be enclosed within <>.  See uri(7).
> Otherwise, the ':' can be understood as part of the URI.

groff's `UR`/`UE` macros have been available since 2009 for this
purpose.  mandoc(1) supports them, as does Heirloom Doctools troff (the
latter because it incorporates an old but usable copy of an-ext.tmac).
With man.7 now (in Git) sourcing groff_man.7, I expect the quantity of
submissions using `UR` and `UE` to increase.

Also, I thought =D0=BD=D0=B0=D0=B1 was just mentioning the URL in the email=
, not adding
it to the man(7) document per se.

But for grins, if one wanted =D0=BD=D0=B0=D0=B1's exact words in a man page=
, despite
their informal register, here's what you'd do.

Bit me in
=2EUR https://github.com/thecoshman/http/issues/155
=2EUE :

Regards,
Branden

[1] In groff 1.24, they may no longer have to go out of their way, but
    might get italics automatically.

    https://lists.gnu.org/archive/html/groff/2023-09/msg00027.html

    (I still owe Lennart a review of v3.)

--kfj4han7ltyrwzue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmUB9jMACgkQ0Z6cfXEm
bc4sQA//cSdE8id4TzVuyXlm0PA9rDwLbPWgVxBFBG2hpOsPXOYiSx7swKl+4VAb
3e8vL5Fl79CFR4tkV3vn5ebaufHSdxohfAtf3Sl7OpxXTtBRIcOsoZhen3xd5BZS
cSHVveMdrXzi9EyByUd/c0+H4Qj5pidw3DxRQs2iox/yvqB17359vWkmLnOp/FoV
2/8/44iE8GsCvhuFEiMTcDyQ0KBceNF//Xf95+5NpxD2dg1Cb2nnehL/fhkbNBbY
N9KVXsooya1HYylGkcK+vZoj39eWN7SzNRSk7zaT6NGDcmrRl0DV8hPybV4WpzlH
6VXjZaRrp7KP8G3vdelfkPqGbnZ9dsCSH426c/JL9T13SUpw3bhhM+bhaM+0IoB5
4vo0wwDPu3e0os+9zm0qQlHVAExEfajcjR0VdVKrGeQL8zl40Y02m3vQG8JdJBI0
WkAM5wciuxg6sNmo60NHn2GMDrpAhipUml4oUyNqvUW2LYZxP5+1DJ/2F0Du/yaf
4Z4x3lxI7ugqbDelMLwHo4/I1Cjcu4tss/qnleIEAt12Uz3KNAzxlbUO5pW06h2a
X9laG4OJiY+Ow3QoxoffKOk6resYOsuZeGz9iVPdMT/n39TfBP+X4ks2MN9i3xKH
5JXVg3CsGiyF+OoSAO1RZC/KFK6Avr95ONBdVrt3k5Xzq2/qCOQ=
=qLKA
-----END PGP SIGNATURE-----

--kfj4han7ltyrwzue--
