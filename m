Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3547D608F4E
	for <lists+linux-man@lfdr.de>; Sat, 22 Oct 2022 21:45:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbiJVTo7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Oct 2022 15:44:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbiJVTo5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Oct 2022 15:44:57 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24E0427933
        for <linux-man@vger.kernel.org>; Sat, 22 Oct 2022 12:44:52 -0700 (PDT)
Received: by smtp.gentoo.org (Postfix, from userid 559)
        id 15930341295; Sat, 22 Oct 2022 19:44:52 +0000 (UTC)
Date:   Sun, 23 Oct 2022 00:15:25 +0545
From:   Mike Frysinger <vapier@gentoo.org>
To:     linux-man@vger.kernel.org
Subject: bulleted list conventions
Message-ID: <Y1Q2wbahzVSvLPyw@vapier>
Mail-Followup-To: linux-man@vger.kernel.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3nBtg1SOuI2Kw4YT"
Content-Disposition: inline
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--3nBtg1SOuI2Kw4YT
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

man-pages(7) is silent on how to handled lists.  the only reference i can see
is in an aside in an unrelated section:
       When enumerating a list of error codes, the codes are in bold
       (this list usually uses the .TP macro).

glancing through existing man pages, it seems that `.IP` is the answer.  but
beyond that, we only have chaos.  can we pick & document a standard here ?

for numbered lists, the tags are manually maintained, but use a few diff
styles like:
	.IP 1
	.IP 1.
	.IP 1)
	.IP (1)
	.IP [1]
	.IP 1:

there's also alternative lists that use a few diff styles:
	.IP a)
	.IP (a)

for unordered lists, there's a couple of diff bullet point styles:
	*
	\(bu
	\-
	o
	+
the * form seems to be the most dominate, but \(bu shows up a good amount.
* is a bit easier to type, but \(bu renders "more correctly" ?  *shrug*

finally there's the matter of indentation level.  3 seems to be the most
common, but there's a healthy amount of 2 in there too.
	.IP * 3
	.IP * 2
-mike

--3nBtg1SOuI2Kw4YT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEuQK1JxMl+JKsJRrUQWM7n+g39YEFAmNUNr0ACgkQQWM7n+g3
9YFBUg//Y8vbA3d8afO7aGj8ooBEQbjYFrrn65nsbYfRUNKYJqGymwgD+STssSMU
UoWMr7ETRSl0BHr0e2eX1kGcM7AQDRnZrOx531VQQjMAvDrlxXj6Tr5u1uIp7NDv
etaHdXjXrYRDvVUyUZpzdmImnUYAwmi8RWBfdoxmX3tFpE1UeG0ctwcer1eVUI0a
FyJEVR4SX5JS5AIz0bUeZxNiRr1aCJE+4iCZ6S226M6oiFdztSpqCH+mIEqMTqgH
jsaJ5Qj0dxD1D0pkd2rL2sxETh5n3v0pJZkTDfASfDcQbrKL7XJf82RQWUJt+UDA
zb3tukPXMwrwggUtxJmM/5cYfYjc/QmKx8CC1yAK+jMq4bHmAyb9mpC1SAI6MSji
tqVah2T0u5lIUUe/QFADAC4Q+zvdRQOuWimgWJK+Vv1/6jnLh0C/7PXaBMCRtlz4
pwi9mbvgvdvIyhNYx8H1fx+QjRikHi6oOk2lanUvE5WtWC2ksstptTxkI7HYzZUT
7IacrVKazGIaGe+k18l7W+0Ur+tefss354tamI3riDt0cBKPYolgsZVJjZL/2kQR
wGKW1QWAolcm3/0oezetn2Xxp2/EmppNe5qAHJrg4r1y5KP5aiSkkaHoT3fb0nWa
JY84GdxPcuv8K1M8B5Jr/PiJh5425ofvq74n/Fia4QWoZbsNL/Y=
=JewI
-----END PGP SIGNATURE-----

--3nBtg1SOuI2Kw4YT--
