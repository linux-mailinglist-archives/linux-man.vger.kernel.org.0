Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47B80483637
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 18:35:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230207AbiACRf1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 12:35:27 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:56892 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S230076AbiACRf1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 12:35:27 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D3B05BE0;
        Mon,  3 Jan 2022 18:35:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641231324;
        bh=pwvtMcTanu/9v19+o3Sv5cG0Gcotd4v/G7fO6EVaBGI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EXA2CrQAP2fTZOelsTT2Zn2v7+bj/k+6HwQ+6L2/FiZ6ApBD1cqC9S1rvZhpdjjD0
         7hkMsF7t7clr2Vs+RMXzUW9iAvL2fju7h+RqviTVyavtBFJ8gcuSZJa//zazzSFFyE
         2Fi8x4lnFG1n4/T7C1TIgpZM00oBg+fUqoBExnCu6EOqHMbvSno0imuWFF/nzi80E4
         DiPDGaPARvZnbntvpEMo8dNZjGMb1IXTFcqdu3ccpA6rgI+hvGWKb6pfLDnlpobBTd
         x4yXirGavufSHBP176kgnfhz79xOrCKHbvFSt7blHqj2/SBmzmStYMKA/sosYKld98
         KAH8HJWc6mnUA==
Date:   Mon, 3 Jan 2022 18:35:23 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/4] tee.2: use proper types in example
Message-ID: <20220103173523.jge6gyisl43khm4n@tarta.nabijaczleweli.xyz>
References: <c9779348-f3f4-b621-4f09-e6f4c0d2cfc6@gmail.com>
 <be236ff0a523fb44c3b88cd9d26c1c1255714725.1641229121.git.nabijaczleweli@nabijaczleweli.xyz>
 <90821738-61de-7993-8382-718d1caf8bbf@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ak62zxr4zvkeir4r"
Content-Disposition: inline
In-Reply-To: <90821738-61de-7993-8382-718d1caf8bbf@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ak62zxr4zvkeir4r
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 03, 2022 at 06:27:36PM +0100, Alejandro Colomar (man-pages) wro=
te:
> On 1/3/22 18:03, =D0=BD=D0=B0=D0=B1 wrote:
> > diff --git a/man2/tee.2 b/man2/tee.2
> > index 14a927c93..9d83ee982 100644
> > --- a/man2/tee.2
> > +++ b/man2/tee.2
> > @@ -183,7 +183,6 @@ main(int argc, char *argv[])
> >            */
> >           len =3D tee(STDIN_FILENO, STDOUT_FILENO,
> >                     INT_MAX, SPLICE_F_NONBLOCK);
> > -
> I removed this change, since I guessed it was a rebase mistake.
Not really, I left it in deliberately, for consistency:
neither fd=3D nor slen=3D have a blank line after.

=D0=BD=D0=B0=D0=B1

--ak62zxr4zvkeir4r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHTM9kACgkQvP0LAY0m
WPEmuA/8DepKuCtkpkoiCTWTkEj0jea9oGOuKr9unROYzfPweyzczEuJemGrD0E8
qGoindUcpg8LJ1JPUMkd1ORsOj4JlmBaFldmgL7reFg2ghD8LbiEYrxy5t7J4HTB
18wWoQbXKWsopmCM92//hD1PmWd9Aq6wKDzBQC1aUqhB9AW+ucPRYy10a+HXjxEi
EFthtYSbUy1MvzxACQJVAh9CJV9RflltM/S8ycDwuFKF8VdyJJR91z9gamsMrxBT
7tSgF0fcC7Tw9xvYyRqm28Dv2+ioCmvg+5jKFW6D2/9zw060sDiCUO0g7CxxioXM
Ef+Epg0aRqkUAWUmmOW+gWYlCqQ1/StHVR0q0U4DQsvDNBFso4cWdA7XAG0+ye6Y
C67E5pVzcVFb6un4vSVqnUaWsICCd5FD0NQrDVR8bca5u89kupjIf6fL51Ac2Rwt
IQ4DiI+OsCmnAtgW6ZwABFrB8lVEVEPCO41DYhP3dGi2aeBqEv5wwLngE/N/BdlT
dB6MIQ3dvA+NN0n+rlrnCu4e+WGIurYgs0M22MuHQSpB6o5l9D/MMLPl1TtlAMb5
Ybqsucq100LJcyTHoXh/K/SxxtAdx10rJTg7+fUsqqylc5W99KG9dk5h8ejfPzfg
g9SD2TOXZDta7UdPxoN1ZCQ09aRZJLh1BqcE2idKkM1HDkhg3aI=
=Nh3v
-----END PGP SIGNATURE-----

--ak62zxr4zvkeir4r--
