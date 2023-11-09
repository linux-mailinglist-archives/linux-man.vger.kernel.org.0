Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 468AF7E6958
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 12:13:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231877AbjKILNc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 06:13:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231703AbjKILNb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 06:13:31 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30E512D5E
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 03:13:29 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67AB6C433C8;
        Thu,  9 Nov 2023 11:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699528408;
        bh=VhPsk523O/FXTiXrS4qyAmzx/RDDLYccGE1W0IkrBt0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MN+aQa9V6mFjhHQPJkde/M1zb4Weh4ELYsCbbu7ogBXnV6XrJKjISZ7I3WuprTxuo
         jMirGZMDhb+HLpJuJYBi7+X5AolYjWc+NYiTrt1m/4HF41KXX2l3I4S9CwZ4wrjhR9
         3dzlh2T4gYR9jG8KSAej8bLrGBXYfzSKx75PbD+Vx9pJTjn5LhsQD1/Mcnio5v7GQ+
         GQkiqPqquyqNPDcHePSVmjZqeE0D/ViQSKajb9R6kMGAsbX+oUxraR5pTSAYTmTIkS
         TGnX/IO0uGhp2ueHDNddTQPx8vcTDeQzUIvl59/1hYT51AHuEhHY9M9vDF2aTHqCCX
         SL0SHvJiiip4Q==
Date:   Thu, 9 Nov 2023 12:13:24 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     Paul Eggert <eggert@cs.ucla.edu>,
        Carlos O'Donell <carlos@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUy-1XlYyQ7MAI6f@debian>
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
        protocol="application/pgp-signature"; boundary="fRTz2dCEhfdQXhS0"
Content-Disposition: inline
In-Reply-To: <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--fRTz2dCEhfdQXhS0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 12:13:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, Carlos O'Donell <carlos@redhat.com>,
	Zack Weinberg <zack@owlfolio.org>,
	GNU libc development <libc-alpha@sourceware.org>,
	'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Thu, Nov 09, 2023 at 10:13:24AM +0000, Jonny Grant wrote:
> On 09/11/2023 00:29, Alejandro Colomar wrote:
> How about following the style of the other man pages that put the notes a=
bout each function below them? (rather than above)
> https://man7.org/linux/man-pages/man3/string.3.html
>=20
> size_t strlen(const char *s);
> Return the length of the string s.
>=20
>=20
> At the moment on string_copying there are // comments on the line above e=
ach function. So the presentation of the information is different:
>=20
> // Copy/catenate a string.
> char *strcpy(char *restrict dst, const char *restrict src);
> char *strcat(char *restrict dst, const char *restrict src);

The reason for this presentation is that I want to first look at what
they do, and only then look at the function you need to do that.

So, if you want to copy from a character sequence into a string, you
search for that, and it will tell you what functions you can use for
that (strncat(3) is the only standard one).

If you want to search for a specific function, you can always search
with '/strncpy'.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--fRTz2dCEhfdQXhS0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVMvtQACgkQnowa+77/
2zIElg//SVObc+FoZnlhHtKojtEWOK8zqhRtiCsZ3cy63ZKpnkEBInb6EMU0Ui7Q
BecSQ1GW/m7HIb6+UhDiE1SfSerQQCBJ7kcsIFoJGFlZKCQRq+Ic/8+fx/EZ1b0G
kzBIi7QCM6M64s2O7I4S6/rA53ScBme0DS1rZwSDDXbq5+AtMuFnfWZxwTsvflxK
sHSF4daHD+9KJQMExq1LBGeqJFbwm90Mp7PSSCMCnC17hgsJCwmf7DXzLcIj0dlh
NtK3v5f+I+niDEQqm1ITsR9FcAlUuQIjdXXIisi8Y5R17hGouNspcu1c9j7IJIg0
VDAn7ZQwZg30v8cQy7E0dLUlftAypMsY3YmOfkbTqFjj2qRCXh5iPXvlpf8xJP65
v5rEZPsyTg6BeMELbwYXPQ0kNFJkIp3+uLVewbj4x6LcrY2pE4VgkbOrjDJnvc66
dSjxL46dqQFVKl/ra+mh5kyV19cPr2lhCtxMAfXUx/45HIa2PVZ83xD51F8EwgDI
oWOamHhBVEXJLfBG9T70hXp51IzY5uln6SU3vdZEefw3BiE0a9yTuqsSzB6D+i2V
c3mLgSlblw8lszWi3MBaTK152Qh0Vdea3CHIZrtYggc6jNVijBZurWu+AEFjy+6I
2Hkg3jsn9ozj+XHxBb9rtUw/tsUp3bZBN3uAj4Ab9TMznE/jjNo=
=53Va
-----END PGP SIGNATURE-----

--fRTz2dCEhfdQXhS0--
