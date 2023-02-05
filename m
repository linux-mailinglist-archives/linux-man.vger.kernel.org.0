Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DE3E68B0B3
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 16:49:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229791AbjBEPto (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 10:49:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229827AbjBEPt0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 10:49:26 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 944E91F5C7
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 07:49:14 -0800 (PST)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2E8F8936;
        Sun,  5 Feb 2023 16:49:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1675612149;
        bh=It1xyC8kH/07MDmxQVs25lcSKd5+KYPqruFttaN4s9c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Y79gGYpg0PcuW5C7jhpWxpmcKkD7t0cQRDxkW12LATSgm2VTH8sTRaR20yQU+j4KS
         1j9aSwBVuzaNF3gJncPGbBPdNTg9mkKNMO+tRYamsBxfocqPBAIMPXEFt9PQFdpjcR
         0E5GVSJ7YGRZHDNhQbTZSj2WLOKY1YuUdcn7sBTOZeEItJhZCS+MyFHsitr6m/zmMz
         CV4EZ7poq/4L2ruUN5I6hdsJ504sXbCrdG5PIlTuXCj3aHR5K1/DkchDZYWaZXCy0N
         dk5pupyolQRscBJtmF0rSPbp/wj85Jdne0igfqQ+QpG9gU2uPEufZGPVa9j8yywVgP
         718xX4q8i36CQ==
Date:   Sun, 5 Feb 2023 16:49:07 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/3] timespec.3type: tv_nsec is impl-def-type, glibc
 llong not a bug
Message-ID: <20230205154907.mqgw2e6m6u4yjsai@tarta.nabijaczleweli.xyz>
References: <4a67167df30db6019a6320dc92a953f9df3f4db2.1674915219.git.nabijaczleweli@nabijaczleweli.xyz>
 <cfda064c-b3f0-d541-bbee-e3a72c0b3cf3@gmail.com>
 <20230130070838.5mgjdbrfhtlww5t7@jwilk.net>
 <34f497d7-7aba-84b6-c9b8-1d8bbcf183e5@gmail.com>
 <20230130183835.majak2kl4acc7djn@tarta.nabijaczleweli.xyz>
 <d405a259-1c15-eded-5cda-7852c223b43a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dz6xrqek76o45cpi"
Content-Disposition: inline
In-Reply-To: <d405a259-1c15-eded-5cda-7852c223b43a@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dz6xrqek76o45cpi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 05, 2023 at 04:39:49PM +0100, Alejandro Colomar wrote:
> I'll apply the following diff to your patch, if you agree:
>=20
> On 1/30/23 19:38, =D0=BD=D0=B0=D0=B1 wrote:
> diff --git a/man3type/timespec.3type b/man3type/timespec.3type
> index 9b9e083bb..c3c69cfd2 100644
> --- a/man3type/timespec.3type
> +++ b/man3type/timespec.3type
> @@ -16,7 +16,8 @@ .SH SYNOPSIS
>  .PP
>  .B struct timespec {
>  .BR "    time_t     tv_sec;" "   /* Seconds */"
> -.BR "    /* ... */  tv_nsec;" "  /* Nanoseconds [" 0 ", " 999\(aq999\(aq=
999 "] */"
> +.RB "    /* ... */" "  tv_nsec;" \
> +"  /* Nanoseconds [" 0 ", " 999\[aq]999\[aq]999 "] */"
>  .B };
>  .EE
>  .SH DESCRIPTION
Sure, go wild.

> The /* ... */ should not be formatted, since it's not a literal (if you
> found it formatted anywhere, that's a bug; please report).
There's .B "#define EOF  /* ... */" in man3const/EOF.3const,
but besides that, all are in fR, yeah.

=D0=BD=D0=B0=D0=B1

--dz6xrqek76o45cpi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmPfz/EACgkQvP0LAY0m
WPHJfhAAgETjshnuoxXAfBMlgA4Laml+EfaXm+gcY3zV7gsh/X3Jybe7XNQhqqZA
6rF+8eSoRZVUERaaHDLsn6PH578zggaV1jj8r0mHnuX+2xAApODHho1W2/m4tonW
8Dp9pElPzD7+nXDcKWEjaP2MSfdLO1cHCpNh3LsIWYH+KUEkIUtCjJqK/7Vko9+r
ABO1wwdVuJbZYWlte20kkX9KYiB+dGM6kB41Q4gmZLXx2Dilf8CfhrOhgsnSeEOM
Wnz7EcimPk6WyHYZhdk+U5jW4nN+aQDjiZDFanBZNHFHqQdtcjHZiCqekCYhBXle
s+3sq1MZsMfkP47P6nCbKVHxuk9pIPGFwYr2ZVdAbNFS7ODgQ1tvLu3zn273fS8S
Sx3kWz3Qh4R9T/UU5g5QNFQHKt8HKfLyobyfUVDFlQr0SooCyV2/Q/fiuOeifKJV
1ugX9ijcijkAhIKOz1WvTuIul1mvnbVsMLq+yMUt+dmeAKSRRp1yIXB7N+o/yWYW
R5u4B1Ddx9UwXuf2vpTLD2VSZtVKB1OnCb2oJAId9cYfg5S4P+NbjxaSfcbXa8HH
3wgiyLKhpi4SkRlocikw5kXM+Js0/+2A1T7kkG9IEiGp7phJ5wy2uNhycZV951ff
zzcorSv6zbrBJIt1Q3Idi3QHaLOkcJqvvs9T5TS3aaSPWipli0A=
=VbGf
-----END PGP SIGNATURE-----

--dz6xrqek76o45cpi--
