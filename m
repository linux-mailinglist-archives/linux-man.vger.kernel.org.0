Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEDE66A267A
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 02:21:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229698AbjBYBVq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 20:21:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbjBYBTx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 20:19:53 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFA48199D5
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:19:19 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id t22so781044oiw.12
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dNGZj6QcANTe4Pn2Lt1o4XqjE9uowk+cSiwUeLUYx9s=;
        b=LWbbav5z6NtfY78E8UtjWJqvrlrCl2EvfucNvZChaVtKw5l5wy04jb/6+1unVISxIa
         v2cW7UFtvS1PmOW3/N8FJwUbd0m6CtCqQ6RTF0OG+o8BQ1Y9hbOuxTW2Z2hSI0hgYRTX
         Um1h1jKypcqQX/E1j+YUDTdkI4PaG5s5+EQWIM3f7YOZovZlTN5JEd0N3PkhfMNL9Dx4
         nN75XZvdk6d6u2vuXF6uJqK2uIstMdcDhVC5hsDHqsAF3nGp/cufOEHa+vPhjMDpCJpW
         kTbWBOlpcV0Vbp+JAG6DQNR4/GFXRpHpTcs6jYCgi6ty8M5PwLD+fqmZQA6aFBcnSho4
         dhMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dNGZj6QcANTe4Pn2Lt1o4XqjE9uowk+cSiwUeLUYx9s=;
        b=PlrfrvyPWWtARZSXodeaZTrLebRDm/r/BPQGWKh+HEXeNsnqigMv86oe00qS/LJTY2
         hu/2io4qzQ2YBh4WuzCTevyASz9fGDQEr0CwITbwX1SL2+GOnhymKfFxLwDo0PQoZDXi
         fOYUNVTIc2ROFun5Q8SPfHlEJZCkX9DlzkmxGrE6udzc25EzykiiK+KGg1/GAV6TDRK8
         BPQNY9zrnAMl66OSonuLes5pF2xVhCurkxcs4Eif01DnDkkLrtQQLQ+6gh3nZ4wmqtu2
         ixNXTo5UWgUxSVM92Ih0TCDq6gO9A22eJ5fHAAKVW6r+kM3QnTt/vkK9wONnCRlNLasi
         sFmA==
X-Gm-Message-State: AO0yUKXdoq+ugfH3Q3T42F5+oomILbpAFHmulaC73j9av9bZskwWYSS6
        s6dk7UhOma/nAM/bBScPge4L60cVT6D4xA==
X-Google-Smtp-Source: AK7set+QZVXcXm1ouzntkhaFlcdpIMlAgiKJYmM18yXFrL+lZZK7OGZfaZLt+mwK5sambt3DPETyKw==
X-Received: by 2002:a05:6808:4241:b0:378:2e00:6059 with SMTP id dp1-20020a056808424100b003782e006059mr3923771oib.1.1677287959063;
        Fri, 24 Feb 2023 17:19:19 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id p84-20020acad857000000b00383f0773beasm365239oig.52.2023.02.24.17.19.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 17:19:18 -0800 (PST)
Date:   Fri, 24 Feb 2023 19:19:17 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>,
        =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Groff <groff@gnu.org>
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Message-ID: <20230225011917.o4hkprqg4c2gqd7u@illithid>
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
 <Y/coag7XQRIRDK0h@galopp>
 <d6b21981-71bc-4906-2adf-79b00df38b73@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="i4i2bm24ktryg4bb"
Content-Disposition: inline
In-Reply-To: <d6b21981-71bc-4906-2adf-79b00df38b73@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--i4i2bm24ktryg4bb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-02-25T02:10:22+0100, Alex Colomar wrote:
> On 2/23/23 09:48, G=C3=BCnther Noack wrote:
> > On Wed, Feb 22, 2023 at 08:36:37AM +0100, Micka=C3=ABl Sala=C3=BCn wrot=
e:
> > > On 2023-02-21T21:50:22.000+01:00, G=C3=BCnther Noack wrote:
> > > > +The availability of individual Landlock features is versioned thro=
ugh
> > > > +ABI levels:
> > > > +.TS
> > > > +box;
> > > > +ntb| ntb| lbx
> > > > +nt| nt| lbx.
> > > > +ABI	Kernel	Newly introduced access rights
> > > > +_	_	_
> > > > +1	5.13	LANDLOCK_ACCESS_FS_EXECUTE
> > > > +\^	\^	LANDLOCK_ACCESS_FS_WRITE_FILE
> > > > +\^	\^	LANDLOCK_ACCESS_FS_READ_FILE
> > > > +\^	\^	LANDLOCK_ACCESS_FS_READ_DIR
> > > > +\^	\^	LANDLOCK_ACCESS_FS_REMOVE_DIR
> > > > +\^	\^	LANDLOCK_ACCESS_FS_REMOVE_FILE
> > > > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_CHAR
> > > > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_DIR
> > > > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_REG
> > > > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_SOCK
> > > > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_FIFO
> > > > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_BLOCK
> > > > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
> > > > +_	_	_
> > > > +2	5.19	LANDLOCK_ACCESS_FS_REFER
> > > > +.TE
> > > > +.PP
> > >=20
> > > A line break would be nice here.
> >=20
> > Added. (Used .sp 1 for that, as it is already used in the
> > mount_namespaces.7, ip.7 and other man pages.)
>=20
[reorganized]
> I see:
>=20
>        The  availability  of individual Landlock features is versioned
>        through ABI levels:
>=20
>        =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
>        =E2=94=82ABI =E2=94=82 Kernel =E2=94=82 Newly introduced access ri=
ghts                 =E2=94=82
>        =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4
>        =E2=94=82 1  =E2=94=82  5.13  =E2=94=82 LANDLOCK_ACCESS_FS_EXECUTE=
                     =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_WRITE_F=
ILE                  =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_READ_FI=
LE                   =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_READ_DI=
R                    =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_REMOVE_=
DIR                  =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_REMOVE_=
FILE                 =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_MAKE_CH=
AR                   =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_MAKE_DI=
R                    =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_MAKE_RE=
G                    =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_MAKE_SO=
CK                   =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_MAKE_FI=
FO                   =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_MAKE_BL=
OCK                  =E2=94=82
>        =E2=94=82    =E2=94=82        =E2=94=82 LANDLOCK_ACCESS_FS_MAKE_SY=
M                    =E2=94=82
>        =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4
>        =E2=94=82 2  =E2=94=82  5.19  =E2=94=82 LANDLOCK_ACCESS_FS_REFER  =
                     =E2=94=82
>        =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
>        To query the running kernel's Landlock ABI level, programs  may
>        pass  the LANDLOCK_CREATE_RULESET_VERSION flag to landlock_cre=E2=
=80=90
>        ate_ruleset(2).
[reorganized]
> This sounds weird, but they are right that there seems to be a missing
> blank line.

Yes, they are.

> Could you explain why it's happening?

This is Savannah #49390.

https://savannah.gnu.org/bugs/?49390

It is fixed in groff 1.23.0.  Which, by the way, is at release candidate
3 now.  Final release may be this weekend, depending on Bertrand's
opinion of the changes I've made this week.[1]

> I'd expect the .PP to separate paragraphs with a blank, right?

It does, and it is, but you can't see it because groff 1.22.4 and
earlier table did not move the drawing position below the bottom box
border on nroff devices.

The '.sp 1' workaround (which is synonymous with plain '.sp') can be
removed when you feel groff 1.23.0 has spread sufficiently.

Regards,
Branden

[1] https://git.savannah.gnu.org/cgit/groff.git/log/

--i4i2bm24ktryg4bb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmP5YgQACgkQ0Z6cfXEm
bc5AvA/+M0GcFPNXQxwC41TbXsppAsEvnRuxA+P5/nD8KyFuSJTpknLz+DKdIybi
L8U1ehBSnDhchaGlT8R5OFNoQ28ass+Zu2HUJH4dIB1wr0Gh4ZiSsNMJSn+nqfhK
Na0hEevWvfCUuVjbFESrHgsMTThLP+x5OXRTn91hQJlGX7se/8BVcq4pyOZIQANU
d+TvjAVAi0b3owhyIqQPdoN9TObryZ5HteKjFPofi28+MgsN7BnErHMSgPZBwR1l
l7siPPhx/27gdu8A4D3ni0TKFeRBGp7/vfBZhy0Qrx8kHFlLAHy+s0i6l6/QqwaS
IN5TAF2QKeW+1GfryAeRmDa9aAYdh/GAZXDDvh8PkAI+oKjWDWXewmSzCTW5AHHq
4VsRJb8J0O4NgRLHRTOurCc1Kq7mmwiNjAFTM8uZzivVV4vC+0yBJqwOLPVnlt5i
iLbj/x9Uv1gz9bpU4D1DqwZAg15W0XhKdhWNxyKjX92/rYT8AMG5lMKWia+LZnMI
weFzqiLdTX7vWLasYbY6yYABrlPk/rpT1ZbzmdcHrcm5aHY5rvQ4mEJSiBCZ1Py+
z5Q6sZ05+3dikayrwGBLVpt3yPzyGzkGWAtLi+7DdcVtXqhC945sCt8DPmgZv7Kz
4h19TSTcT0ZaJw4gCGI1GZXn5qM7x9fkm06wePQU095UgNslMwg=
=WVDa
-----END PGP SIGNATURE-----

--i4i2bm24ktryg4bb--
