Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE6E07E5EC9
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 20:40:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjKHTkY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 14:40:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229715AbjKHTkX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 14:40:23 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88BC5211C
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 11:40:21 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F7F1C433C8;
        Wed,  8 Nov 2023 19:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699472421;
        bh=g/O4IsfcpRUSX8xvC/91XOK6wTa639yymYbVeRCdUlI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Crx5EViDdDM3jNobaR4KcaLTf/rFBsF4z1AV8FIx4K6EGL8fUsRDqyQs9iney5Jnv
         BZiJBuaw+jvqAdOXj0tgFvrjwkdbKoCr6FP3LtDEFELtQz3gvj2Vylu4zSfjV/EVRv
         oA/QHiE8l/DoaSLYCNH12I7qhO6hmSIAfZZJjgEg7NOB2b66i7xq2nFdc8CMVVoMHP
         neoY/pUOYQbGcX+KNddmrIVrdYcueqDGZr9bkKqlbSo2yyhgxsFl13SYKRpHJPyK85
         eiRWABYaWIKYaU8ZvIblwvzeGTTKptsRAj915JA+CUL6B/f81mCLXuRB+uQIq9fn3G
         hM0/uSYdXsYtQ==
Date:   Wed, 8 Nov 2023 20:40:17 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     DJ Delorie <dj@redhat.com>
Cc:     libc-alpha@sourceware.org, jg@jguk.org, linux-man@vger.kernel.org
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUvkIZpGduZ0FMVK@debian>
References: <ZUtaH35V3koxTSL0@debian>
 <xno7g4qd6a.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="CifgPo3h7l75DdWM"
Content-Disposition: inline
In-Reply-To: <xno7g4qd6a.fsf@greed.delorie.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--CifgPo3h7l75DdWM
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Nov 2023 20:40:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: libc-alpha@sourceware.org, jg@jguk.org, linux-man@vger.kernel.org
Subject: Re: strncpy clarify result may not be null terminated

Hi DJ,

On Wed, Nov 08, 2023 at 02:04:45PM -0500, DJ Delorie wrote:
> Alejandro Colomar <alx@kernel.org> writes:
> > strncpy(3) is useful to write to fixed-width buffers like `struct utmp`
> > and `struct utmpx`.  Is there any other libc API that needs strncpy(3)?
>=20
> Let's not limit ourselves to glibc APIs.  Tar format, for example, uses
> fixed length fields (and my bet is that strncpy was created for it) yet
> tar is not part of glibc.
>=20
> IMHO the solution here is to document strncpy with sufficiently obvious
> intent that it is NOT a length-limited strcpy (i.e. strlcpy) and should
> ONLY be used for its intended purpose (filling a space-padded but not
> null-terminated field)

Indeed.  That's what I did (I think).

DESCRIPTION
     These  functions  copy  the string pointed to by src into a null=E2=80=
=90
     padded character sequence at the fixed=E2=80=90width buffer pointed to=
 by
     dst.  If the destination buffer, limited by its size, isn=E2=80=99t la=
rge
     enough to hold the copy,  the  resulting  character  sequence  is
     truncated.

=2E..

CAVEATS
     The name of these functions is confusing.  These  functions  pro=E2=80=
=90
     duce   a  null=E2=80=90padded  character  sequence,  not  a  string  (=
see
     string_copying(7)).

     It=E2=80=99s impossible to distinguish truncation by the  result  of  =
the
     call,  from  a  character sequence that just fits the destination
     buffer; truncation should be detected by comparing the length  of
     the input string with the size of the destination buffer.


I refuse to add any hints that strncpy(3) is good for copying strings.

>=20
> It is not documentation's purpose to limit programmer's creativity, just
> to give them an accurate representation of what the functions do.

Thanks!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--CifgPo3h7l75DdWM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVL5CEACgkQnowa+77/
2zLhyg/+KPCMNU2aJsvORbDSZupzyKOyva3458KAYubaxsq16mGZVPfm98eyRiJg
NMiWfCl81FCCgJ8bSSutVsjyD/JwY23snTW1+5gftdq5t003ZtrNFAoRFd2RCQiu
mXsvhUcL8F/zYypwrNb2OFuN/lZyvlDk4G/zviMXW+49hdndN7Y6XhehXivoEDFK
Pvjx0nPHLvszaiqc9Mbmk51DjBgfYC7VMEgcvdBR+wG+teqOZyiDHKjs0zxfvJIm
24w+22YHlinNVvBpC1KTsgLv9sfr/4BYJ/AOyw1f+gtKiQadhBmOOZ3EG97g/Rfh
CcGo/yFHyYPjOMLChllkel+CaaCo/3KUMU40E2f/JvVCQIfGwSYtvG4Bi85V7hFJ
nvA3OAP2fHHs4OfgDM8Vql60fE3dCSQWi7mhAG3VXgrTILYmhwluufVY7b/nS2IN
ee0drXi7+i3i6nL0ip4CKRJ/ruw4Pf/4KOgj47HSZAN6nJdQFd1wXWabFfGviTWq
mNbcXpp6lx2/APsjVSS4qOOBnG/gjL9BlTRsp/uwRqk+edWxuOomYynEzBiyFR8g
/Ek1E6RsoVJbTfOQlx/iFSL7aqK+bnFpxrS36eI9tex1KPMzIpbL1msEvQ8CnQpt
iALuTcpoW4EZYAf1vUF7B41kC+w4MdoQT5vHShmRHgSgHS1Eq54=
=/SZS
-----END PGP SIGNATURE-----

--CifgPo3h7l75DdWM--
