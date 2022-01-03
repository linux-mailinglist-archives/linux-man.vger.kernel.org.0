Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E5B648345F
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 16:45:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232987AbiACPo7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 10:44:59 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:55550 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S230160AbiACPo7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 10:44:59 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id CAA881746;
        Mon,  3 Jan 2022 16:44:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641224697;
        bh=cu0h8HTj5sRUq8pxCh7ZLf1tp5x5ROzO11PGIW7EAqw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EboVCcEG50rljvsINojeeS3JC5CuM2Vrdcgf4RWJqkL3T9ssyrSzjxUCU/gpSWstN
         BG2Hh9GOi17A9Z7F/krTCM2MsV3tZT5Qie32UrWbsV/SvZNolwbJ2XLS7KOhIY3MXj
         NsqeHuaSd7f4PXGJc/gU2mPl27Eo4yONxGTpIGhBmOPDqTQEJ9Ne7N1Eh5jd6Hn1My
         EMLXvRZXve+f9vQPPwWZSKry5xNHXSXrJpPO4NTGCphXOnutrkndwM3NzdmA/kvM2X
         WNOozsRWisLTQHAdPcqP4ZzFCl316Y6/z760zc856+vYeYCAelthF7tncFkyCUbbcq
         eBnIVa47z2zZA==
Date:   Mon, 3 Jan 2022 16:44:56 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3 3/3] system_data_types.7: note struct
 timespec::tv_nsec type for x32 and portability
Message-ID: <20220103154456.3vrtv2jtvcn7rxbh@tarta.nabijaczleweli.xyz>
References: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
 <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz>
 <539b8054-a29e-32c0-14f0-c772543b2bb3@gmail.com>
 <20211206233138.ahvjamiftceufvmj@tarta.nabijaczleweli.xyz>
 <a55c07d0-960f-4dfe-90bf-4fee33976198@www.fastmail.com>
 <7c29781b-1030-44f9-b078-f5b09a14e321@gmail.com>
 <20211207014114.2ctce657cnnq4frv@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2dpgtn3ffko56a5b"
Content-Disposition: inline
In-Reply-To: <20211207014114.2ctce657cnnq4frv@tarta.nabijaczleweli.xyz>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2dpgtn3ffko56a5b
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 07, 2021 at 02:41:15AM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Regrettably, I think this is the best we can do,
> save for committing a plan9. Scissor-patch below.

Bumping this =E2=80=92 I think it's sensible to have this in as
glibc/WG14/Austin Group proceedings transpire, but this is ultimately
your decision =E2=80=92 how do you rule on it?

=D0=BD=D0=B0=D0=B1

--2dpgtn3ffko56a5b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHTGfYACgkQvP0LAY0m
WPGJRA/+KSA5yOXWAZjimraHn2chOjBOI9WWpw6DQ7Mya1ddS0qt5W2R5Vq1P5KW
YBQn9xKidDNxu0QOlvlbZUcSU6PNSYiHPrMbpn0BM7X+OPSCo4SLk5ntZBiK1cud
Rtxjn15BQ4xOOI+I5WNH33Kl/lARAdVBNORx98gUbe7Ma0Uat6/vM8g12SGS1+s0
RqnsFE0HxwDz5Y+Be7740WMmmoWNbGxLe1INtokeZozU4Bnad0uxqYXzahjBZCuy
/+ZQlTa2kF0sBzy33W4VAE3WBOv38RCU3fJsysPWkHecdXOoRk9gWIf6mfFkWj+5
jLKE0QFp5BfK2JeOtEMFnyE9wiknOTGTHF287HUP8dY9G++SKmiS7Zkmd/+fQRke
tnKNTQdy7Iga83rQAUFoplK2eUxZNMhq7PawfNdiImnbvF6jfrSk5GHWDV9iu2f1
IW+WNwrYl20Yin4+Zjip38ebFvZTFkBUqDdDyIb7DfNS3d55bqULi/o7Qg3AigP7
ABfrsYwQr+C83RpChT6gVA0IcwCjzYhAwD450/nC9TpllZp4q/xWSpkNzcvhx26y
Uf8J3Sna3G1JCrhAXWYSjyjOh4ncRo15h8atrkCOPYB8T3UFPbqkzgeDdU7+siZA
/p5td/kjbvXzt+GGIXnzwjTZBsDLaprn9CPsHOXMQZ2kqm/vus8=
=JTSO
-----END PGP SIGNATURE-----

--2dpgtn3ffko56a5b--
