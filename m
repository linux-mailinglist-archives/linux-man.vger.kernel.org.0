Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 200157E6CD3
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 16:02:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231835AbjKIPCm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 10:02:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231659AbjKIPCl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 10:02:41 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E960430C3
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 07:02:39 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5530BC433C8;
        Thu,  9 Nov 2023 15:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699542158;
        bh=2HuyFQm65wEw/pLPTIAEL7UdSD5LnAFWlKCJGEmSRIQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BSO2qZtk6tumM5r+jzULFaDf7Nas1FYLGWnf2Uc0SdR5HwWajShX0sidFygxZiCa1
         eux4EjYqRt+ZMNbC+npkYPhUCNbRCeISiq5E6eL2CQt7HIEgr4ZAhVPV+S4ukGG5Cv
         BTN4KeoioBMB79VuBKJ92ZYHFuuRTj+kOJBSytSd8lXpaMr2n5NDVvRzzOHoBXzrdM
         l9zub6N374ZGBbr1E7HV7CA/NT0pJ5bNwlBMqDgyN9lxyga7UaEXn+L9YiIDuljOOu
         haxgzCbJvXQm6b+J+8q5wOk2MVQnnVeq2VOrapHuwAn+kwRmVHx7xMIxthqfILMNHH
         Yz6HgkqDpVsHA==
Date:   Thu, 9 Nov 2023 16:02:33 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>,
        Matthew House <mattlloydhouse@gmail.com>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Thorsten Kukuk <kukuk@suse.com>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Zack Weinberg <zack@owlfolio.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy()
 do NOT produce a string
Message-ID: <ZUz0igot_qFs3BJX@debian>
References: <ZUwCwxyPfur-hfea@debian>
 <20231108221638.37101-2-alx@kernel.org>
 <290c7650-bc39-4315-a9dd-7b9b7ec55333@cs.ucla.edu>
 <93436b5b-c373-4cbe-ae64-cc7c2f70f165@jguk.org>
 <ZUzuJGn-VUCdao4z@debian>
 <86f95c84-c26d-48ad-be82-5259573678fc@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wVxS8xPxZm/KYSzr"
Content-Disposition: inline
In-Reply-To: <86f95c84-c26d-48ad-be82-5259573678fc@jguk.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wVxS8xPxZm/KYSzr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 16:02:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
	libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy()
 do NOT produce a string

On Thu, Nov 09, 2023 at 02:47:05PM +0000, Jonny Grant wrote:
> >> It could clarify
> >> "Copy at most n bytes from string src to ARRAY dest, returning a
> >> pointer to the start of ARRAY dest."
> >=20
> > I think I prefer DJ's suggestion:
> >=20
> > "Fill a fixed=E2=80=90width null=E2=80=90padded buffer with bytes from =
a string."
>=20
> Better to make it clear it's null-padded after?
>=20
> "Fill a fixed=E2=80=90width buffer with bytes from a string and pad with =
null bytes."

Yes, that looks even better.  And I wasn't very happy with "bytes".
Maybe:

"Fill a fixed-width buffer with characters from a string and pad with
null bytes."

Thanks,
Alex

>=20
> I'll leave it with you.
>=20
> Kind regards
> Jonny

--=20
<https://www.alejandro-colomar.es/>

--wVxS8xPxZm/KYSzr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVM9IkACgkQnowa+77/
2zIQ5Q/+KsEvz8cNzG4GGSkJGo52/LjN4gMuGXa/rijznVehawWbmQSTjtdyU4B4
7h1LNgP+macL2FKcvOyekPKXlgyvwWfphGzVA7bNodcVTW29Vf514IgmfeMH4whR
ACeX3OPXJztEvzSNa3YgYELe3qu+whA7lHZeTvhwPmhj4thEU3y2PAkCfPQ7A1Pc
PfDnIEtLvIuWiCFOApqs28j74u89jZRUvcKgdLU2fnadeH1UU97OO1rcS6ZzIDBP
QmCvLS+vhOOhdXUfct1D3bSpD1ITFSg7yoWSMB2O/dPeevYHPUD3nthoOo/f6DzX
KJhekjvaC3pEttMuguladiwKj6f6xq9J0ijcNAY6TY/RIYBR//Jtk08RmqAv3Axn
TYCakhPbj+IR1O2TU5j9wEuG3a9gEA8L1UmJF811RPOxXt0W8EY18X34YoZEZzqs
8PzMvTp72Fgo9oSOygDNIXFYpJCGQUQuCGYccxTNYliBBBPyTK/NET7oG40p87mO
RVqnD4JosC+rEMrNY+4wgJrYPe/t1mCrx2/CMEPoyPGodibPQlcPIGxZduceG74k
7d+7zeEGUEARj2ChJy/3Q6MwgNwgl/It73tZHyXxB0lYGLz3W8kPT2YymH/J52Fi
Mjem2ocSmCOoKA2HgvgwT4oxozijoX8fdiAULgtC4LGo7r+c/CY=
=shj5
-----END PGP SIGNATURE-----

--wVxS8xPxZm/KYSzr--
