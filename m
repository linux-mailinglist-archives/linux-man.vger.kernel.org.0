Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7FCE7E692B
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 12:08:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231270AbjKILIa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 06:08:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232085AbjKILIa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 06:08:30 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D69B272C
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 03:08:28 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 515D2C433C7;
        Thu,  9 Nov 2023 11:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699528107;
        bh=1WhErLMfGXnOiEikribSyFzeCT2fb7DAT3c8Zaot3Ec=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HbxKhU2GeeKeYotUEEr+BuxOMjHbNLJBXsdkKgcxPv6bGoEi1HowqXTm7ig/MW6e+
         cAgJVc9Q0TNVJCJMANzEOHKFsBr57LsdoQU2sfGPDO71irb8/Z9zj6QpvTQmFys71d
         N/XJa1AsACT8wNYjGy/y1a76Vj3194DPW2fZi1hvxGejZ0q0BA85pZPxoZhcKdsk6g
         TlyV7CsuCmZlLfWfQx563F9ylk10vgWQMC9MlxC/MykWMrx3FVOW7V2zkG2IOUs8DL
         VW5PZ5409QB7K8b3OEz1Co2734K0hE9XxOLJW51kHAEZZqXamaTfSYd7HyoqfFZtnv
         mT/wO5x58bRLA==
Date:   Thu, 9 Nov 2023 12:08:17 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     Paul Eggert <eggert@cs.ucla.edu>,
        Carlos O'Donell <carlos@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        'linux-man' <linux-man@vger.kernel.org>
Subject: catenate vs concatenate (was: strncpy clarify result may not be null
 terminated)
Message-ID: <ZUy9qNSzok2Dtf_N@debian>
References: <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian>
 <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian>
 <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
 <ZUwn82bp6wHceMS1@debian>
 <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="INyJF/HUHH27hkMB"
Content-Disposition: inline
In-Reply-To: <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--INyJF/HUHH27hkMB
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 12:08:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, Carlos O'Donell <carlos@redhat.com>,
	Zack Weinberg <zack@owlfolio.org>,
	GNU libc development <libc-alpha@sourceware.org>,
	'linux-man' <linux-man@vger.kernel.org>
Subject: catenate vs concatenate (was: strncpy clarify result may not be null
 terminated)

Hi Jonny,

On Thu, Nov 09, 2023 at 10:13:24AM +0000, Jonny Grant wrote:
> https://man7.org/linux/man-pages/man7/string_copying.7.html
> Rather than "catenation", in my experience "concatenation" is the common =
term to explain what it does. There are quite a few on that page. Probably =
other man pages too.

Here's why:
<https://lore.kernel.org/linux-man/CAKH6PiUrQzb7vRZxUs0742WnfaLpcUec0QfdJQJ=
5Di8LqFg+NA@mail.gmail.com/>

Douglas McIlroy wrote (Wed, 14 Dec 2022 11:22:05 -0500):
>> concatenate
>=20
> We began fighting this pomposity before v7. There has only been
> backsliding since..
> "Catenate" is crisper, means the same thing, and concurs with the "cat" c=
ommand.
> I invite you to join the battle for simplicity.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--INyJF/HUHH27hkMB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVMvaEACgkQnowa+77/
2zJTbA//aAlxKezbfZ3S0LPpMqSqUNXcnpgW4hOgC/CkgxCxPX/UZTzpNmazUfUr
eiUxFnYp/Kzxjwz4OR5+nnq+akXOPU9kS7Jtc+I0KVSbH4CJZnj16G586pHLGo3T
/td8XdvwudkG5hW7PgENUT6DmTH8E2bA3wy72VzpvKEUdcCFhH7JQgDSVlu0HcCR
JaaqxBdRmJcKNZrAtxZyDArH1pdMA0Ba++BhMMky/3DtI3p3tOMRQZ87gfCvDMaK
6Iw/ek8STFtp82kduxtfPwjb62t1kMEwmzsmRAkZhvkZFFlVu0OITSxD1EAVHDt4
mBwOYUYitz2614aKn3tFT1iFv9Z0sXDsOc/UxIW0Kf5gN/EmE2u/WcoH3zKiTT42
9DCWaipHwU+u5OIxAe4BqogVjJvfbrdc5CzCq6CXVly4xC1baol8m3NzG/5a/LyB
g64YR3lttAt5TQ2bbSzwtzJbPCNx25AT9+xUV2+Ir36usop8fUkqpEH5uen6imzG
7wRDS/DYlc53vfg7JyblFFEG44IankGianinILKZ2fQlXe4giYi1KJv6Pwhm1SR8
NdM04CSrO5PoNcK6PxzjsYWPIK5y3KYUec1M5PZcvtiauIIRQr1sZO6Mojp6PznP
1mMO6ewE5MJWvJ0qLDr+FtpWdLGlikw6IhEzVhE9OrAsgW3en6E=
=pE+s
-----END PGP SIGNATURE-----

--INyJF/HUHH27hkMB--
