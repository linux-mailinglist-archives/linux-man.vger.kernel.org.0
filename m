Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB104608F7A
	for <lists+linux-man@lfdr.de>; Sat, 22 Oct 2022 21:58:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229497AbiJVT6z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Oct 2022 15:58:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbiJVT6z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Oct 2022 15:58:55 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26D4F773A3
        for <linux-man@vger.kernel.org>; Sat, 22 Oct 2022 12:58:54 -0700 (PDT)
Received: by smtp.gentoo.org (Postfix, from userid 559)
        id EAADF34129A; Sat, 22 Oct 2022 19:58:53 +0000 (UTC)
Date:   Sun, 23 Oct 2022 00:29:27 +0545
From:   Mike Frysinger <vapier@gentoo.org>
To:     linux-man@vger.kernel.org
Subject: Re: bulleted list conventions
Message-ID: <Y1Q6C/tCSfbrUxdG@vapier>
Mail-Followup-To: linux-man@vger.kernel.org
References: <Y1Q2wbahzVSvLPyw@vapier>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="VZs9oSJJN4Dpe2Fz"
Content-Disposition: inline
In-Reply-To: <Y1Q2wbahzVSvLPyw@vapier>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--VZs9oSJJN4Dpe2Fz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 23 Oct 2022 00:15, Mike Frysinger wrote:
> man-pages(7) is silent on how to handled lists.  the only reference i can=
 see
> is in an aside in an unrelated section:
>        When enumerating a list of error codes, the codes are in bold
>        (this list usually uses the .TP macro).
>=20
> glancing through existing man pages, it seems that `.IP` is the answer.  =
but
> beyond that, we only have chaos.  can we pick & document a standard here ?
>=20
> for numbered lists, the tags are manually maintained, but use a few diff
> styles like:
> 	.IP 1
> 	.IP 1.
> 	.IP 1)
> 	.IP (1)
> 	.IP [1]
> 	.IP 1:
>=20
> there's also alternative lists that use a few diff styles:
> 	.IP a)
> 	.IP (a)
>=20
> for unordered lists, there's a couple of diff bullet point styles:
> 	*
> 	\(bu
> 	\-
> 	o
> 	+
> the * form seems to be the most dominate, but \(bu shows up a good amount.
> * is a bit easier to type, but \(bu renders "more correctly" ?  *shrug*
>=20
> finally there's the matter of indentation level.  3 seems to be the most
> common, but there's a healthy amount of 2 in there too.
> 	.IP * 3
> 	.IP * 2

hmm, it looks like groff alredy documents the answer.
https://man7.org/linux/man-pages/man7/groff_man_style.7.html
> Two convenient uses for .IP are
>  (2) to set a paragraph with a short tag that is not
>      semantically important, such as a bullet
>      (=E2=80=A2)=E2=80=94obtained with the \(bu special character
>      escape sequence=E2=80=94or list enumerator, as seen in
>      this very paragraph.

since man-pages(7) makes no reference to groff_man_style(7), and only a sin=
gle
reference to groff_man(7) for syntax on a specific macro, can we document t=
his
in the man-pages(7) page explicitly ?
* use .IP
* use (1) and (a) style
* use \(bu for bullet lists
* use indent of 3
* (as a tip) use .RS & .RE for indented lists
-mike

--VZs9oSJJN4Dpe2Fz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEuQK1JxMl+JKsJRrUQWM7n+g39YEFAmNUOgsACgkQQWM7n+g3
9YFZmhAA4AR5lMvoM9E+7Jjas9vkShooRgP9LkAF2ZC+SnyZSMd5PuKgRTuQBqXc
pKJKoW7UAz7ILrmysnyJvAA3rj/vwAAxZZGcZoJee0oNeAtK86GcV8XCEpqM6zyZ
EgvfPocgIcAJB4ox+O6PxzaB05oEFX27hxRP4E6c7iqB+94OY1FectFdwvTetD7Z
CfkWw692zYPr7rRow5kpmntNq8+PNoYm1QPQxjOg8vovyIMA7fl2zw4YOb3aEzP8
zJ8RHNioPMyrLzW58Q/PV2EwMz5DxEbMYByykjyev0hfRxuIP5OXr3Lq54Kwdxg0
aEQ/uoGm6TXJmyQJUGMuxlR6qvyauEn4yz1ki0pwStx/I5oB0G5o2KZBFkMa+iwp
ELQ6MByeZtU29xqR5L+qKuxXq77EiJrQO30W5I9OlH7sGW4bOzLV87N1CwwCJCn0
Fh1or16+De/wTkyWtbb8oXqKAQivGb9zpDph9csOlJuYjaxKiGC8YriFiA84/lMn
XLegzQxFrE/4sLVmUYU3HcvAKo9MN3QL7B89+i8QF1Is83r8FDxGHcUo8sdg/Kgf
lb80laRUUTddDRa68iLR5rI3lEigwHzh5qJ4/JgWGv2y60AVzvCCHMJFbf75nGjS
OjfXFoRzEoBbqH5V4xmp3/iMMQddm9jDmgxs88mOiTxNf+nkZHc=
=PeUE
-----END PGP SIGNATURE-----

--VZs9oSJJN4Dpe2Fz--
