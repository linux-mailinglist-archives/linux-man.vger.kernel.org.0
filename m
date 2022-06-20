Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 806545520B1
	for <lists+linux-man@lfdr.de>; Mon, 20 Jun 2022 17:25:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244722AbiFTPZ0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jun 2022 11:25:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232920AbiFTPZH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jun 2022 11:25:07 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F232CD80
        for <linux-man@vger.kernel.org>; Mon, 20 Jun 2022 08:23:20 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 211B63308;
        Mon, 20 Jun 2022 17:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1655738598;
        bh=BWYZBwfySDwG4z1o0VNNKWqFcmlDjn7aoGbIsfrgPsM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hVc2p6j1D3hrIKYBvCZMn90QWvRyMG1O+AwVHsWd5YGnNHHMVjA9BmedNFZiNQbvd
         tw6qwtJ6ZH9aZNyttH20xKmSEfnjG34nP0AMWtWhkwp9flQ3GuWa6B9qd2fNwVTOQ4
         M5wlO3TskXppltV6yGCO3eNNLjzugsM60Fsm3aeSxJBrFCukZLnjxGKRBb4kh+Y+1G
         k8z/L9eE0XotYOQiIHuwQ7NgjDlBdWXSumRGnruLxZ94xRWCugzO9wkxF9aJNtERiz
         rZDGln0Pi8MdBMhpGBAcHFTxm/Yhv6ROvvC+FNl+ziwfKFWxAic9ZRGOZXAh+HCBd2
         F1xi5RXHX5q+rp9mWTpfnhqYY0w0AjUAx8M4/cykoWz+1ePalCMm/KM4Ciw0XCF9xD
         nyZb7bXGwGHfvgqTvGbrv9ja5ho1ryZG9U7dHwLOkY2F7oOf3V25tPcfKAVnIHJ7C9
         WEr+YyL/zZTZTzDFMyJZdhD7H/+tXkTJ6mDM1ZtLRituc3AZ6YBQmzO+QZHsffHfvi
         zV9NQhqlL6hug2IOijA+AFr4mk8JFj1l8FvOHRAhMr7KWtSzkhrp3fjmBw7YLt4svB
         PnYdysPJMNf6wgj+UlaRGuVFAbEkemhmWrPTYTxowFiYNyhMHyRe8Vaw9eJRoNAnso
         TQmsqHbparXR7gSvf5fuoaRA=
Date:   Mon, 20 Jun 2022 17:23:17 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2] environ.7: align PWD with the standard
Message-ID: <20220620152317.nq4ehd5gtjmjxx2m@tarta.nabijaczleweli.xyz>
References: <f4b9cfdd-7b5b-2b31-2c84-064fc2c3206b@gmail.com>
 <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>
 <CACKs7VDJx1QEkgmb2vJzhAbNwbH9xjd_-rhD+eBSbtBk9-PzAA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="bnthkmwyezaho7bi"
Content-Disposition: inline
In-Reply-To: <CACKs7VDJx1QEkgmb2vJzhAbNwbH9xjd_-rhD+eBSbtBk9-PzAA@mail.gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bnthkmwyezaho7bi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, Jun 20, 2022 at 11:55:18AM +0300, Stefan Puiu wrote:
> On Mon, Jun 20, 2022 at 2:40 AM =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabija=
czleweli.xyz> wrote:
> >
> > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> > ---
> >  man7/environ.7 | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/man7/environ.7 b/man7/environ.7
> > index 019c5a25a..24446c709 100644
> > --- a/man7/environ.7
> > +++ b/man7/environ.7
> > @@ -158,8 +158,12 @@ used by
> >  to find manual pages, and so on.
> >  .TP
> >  .B PWD
> > -The current working directory.
> > -Set by some shells.
> > +Absolute path to the current working directory;
> > +required to be partially canonical (no
> > +.I .\&
> > +or
> > +.I ..\&
> > +components).
>=20
> If any shell decides to ignore that part of the spec, is there
> anything preventing them?
It no longer being a valid shell (if on startup) or providing an invalid
cd built-in (when cding), from the stand-point of conformance to both
the standard and historical shells.

> I would make it clear in the text that this
> is a spec requirement, not a practical guarantee (e.g. "required by
> <spec> to be ...").
Those are one and the same, that's the point of SUS/POSIX
(and conformance to historical implementations).
Are you aware of one or are you just concern-trolling?
Obviously, pretty much no part of this manual applies to csh
because csh is its own 2BSD brand of insanity (in this case
largely because it predates V7 (3BSD), and, hence, the environment).
csh users understand they use a non-shell,
it's not mentioned here because why would it be?
It's not mentioned anywhere else.

Best,
=D0=BD=D0=B0=D0=B1

--bnthkmwyezaho7bi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmKwkOAACgkQvP0LAY0m
WPFa1BAAnkaK9hNH7Mzo2Q4oe3+/Vkj9mNnemjMi7WWmCwZkN+8gFC+jP8DPVYct
5miL5xbowi6Xi1Wq8gOUQr7bJvb7MWPXS9wrd0S99P28zj7vuG2/QaI47qG/JNi0
ixMDvouausGS2pwOBR8DD+XhRqsxk0JLjqnmxVkVz/2hVkocPrrpnXYF+Q4XtQxA
s17DyI3P4fN4pgLOttEGixlZ2AdB1ZzWvxMMgmx6RsHpqoKWN7m2wV4snYPr+V9z
ggFDRg+i+6QrhCdliUWlB/BDOyhUwQ7K7BfBoT3DJW0VbUZMl3TkPzkjyIZULF3C
j+H7VPThLIZM2kYeShsjM/aNzsNZm0Am06jCzP9ml6FzpfVLpbxXRUEqFJlJ6G/T
wAyteePk3VNDzoFOyYKTfRR1njActU/3jYSiRfb3wK3fSLXnuC8que0A6FXb4vhW
A6J5yeyE5gz9tFWEbh+36UfJn/DZWrrorKRE69Ct1yQYINrN1gbdGrhS/5vNDIsP
z/UAzIBQE0skpQHG3vkqGcNI0AYzqQTDuKd759HhFDvqrTjrgVAhSX7KbZePapcG
wRoQ3JNdlclDvbF6/DGUwAWlHU1CdCIcjWM2cwYOCuTa14b1nqifaUV1RiNvJ4RM
+4srRd9ZCTPtN8oKj3jRuep4pyccUgeYtSnqe4eTEragJqWUyyA=
=e3Ue
-----END PGP SIGNATURE-----

--bnthkmwyezaho7bi--
