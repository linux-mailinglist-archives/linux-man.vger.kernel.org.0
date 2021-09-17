Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DF52410053
	for <lists+linux-man@lfdr.de>; Fri, 17 Sep 2021 22:35:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230166AbhIQUg6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Sep 2021 16:36:58 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:49040 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S229771AbhIQUg6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Sep 2021 16:36:58 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id BC28B360272;
        Fri, 17 Sep 2021 22:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1631910931;
        bh=vovpQ/2tTmQdKnU8IAwE0oN9vS2TBdbf6pMk+kcW/t0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iiKZ709H5jXy1hTypbQTFwPU1LTTQVvGDfDbimk3zRUNH9vKSLdEWaN6E3MfRFsmH
         Fgv734t0KZQ64bk06sPCpfPi4Jq0ti7xuNWGTAp3z7U9D1DMYBjh3LOfMFqPj2rBEt
         68/xuLVPIAGSoNyfItKZDNNyFYQthRYmLm+ohmZJLildRQyw1jDUQChH8CBPxAlnZ4
         LwpbxpbqHU3AC7ff0Mxf4tSvH0jqeQUdbXL7dieucjb9aLqUDkAUTFmUBX6wd70mG0
         M6SP54kPXczn65HJlxnE+0jCI/iZWMqQQnOIT6TmhX0R4spPZu+K0t+uQRbtVbijH0
         GMluV5wGBRNqQ==
Date:   Fri, 17 Sep 2021 22:35:30 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <20210917203530.im4x7dgkipufkt72@tarta.nabijaczleweli.xyz>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5vjnjjfrjghdidc7"
Content-Disposition: inline
In-Reply-To: <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--5vjnjjfrjghdidc7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 15, 2021 at 09:42:26PM +0200, Alejandro Colomar (man-pages) wro=
te:
> On 9/14/21 2:41 PM, =D0=BD=D0=B0=D0=B1 wrote:
> > diff --git a/man3/alloca.3 b/man3/alloca.3
> > index 71348e609..20761b079 100644
> > --- a/man3/alloca.3
> > +++ b/man3/alloca.3
> > -There is no error indication if the stack frame cannot be extended.
> > -(However, after a failed allocation, the program is likely to receive a
> > +Due to the nature of the stack, it is impossible to check if the alloc=
ation
> > +would overflow the space available, and, hence, neither is indicating =
an error.
> I'm not sure this use of neither (without a preceding "not") is valid
> English.  Is it?
I don't see why not: "impossible" provides the first negation
(the "not" is lives in the "in-" prefix
 (well, "im-" because it's before a bilabial plosive),
 and "neither" is in its "likewise not" adverbial use).

=D0=BD=D0=B0=D0=B1

--5vjnjjfrjghdidc7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFE/A8ACgkQvP0LAY0m
WPGw8g/+PeurUinXg/RILZUVp+A3bVrd1/82Sn9K4bWgnBr7JlPMVQerhFPgNyWG
90uVcoV6tD0c3ou5KT9eaVpqKq2vFtw7SeaJ4vBAVqlOBKjln0u6Qz5qDAmeCT3h
bhrr0XESkS7anadooagTGQKcioTgh/16rcEQJ0JumDEZvFV9bq1no7Jrxk4iqYtW
5nti4p5p/7QMrboUaI41V3PZE5YBM82AviDmYdH8jvLfA+IZXOzwvoapoeRQq2nk
3t6TbYjhUsj7CtFlYi6C1Ai8YmUcZKSVCWhVk82TuTuCGDRi1901x4uiUJDV1D/R
7bPtzUsGZQpoyYQbV30r6kVuQ+AOxgaIxGoF2RuL/nnbGm9rjS4Js4SnpVAbidZj
aFHAe905ZnNZD4TqvYXXQ0m95qWzByGxx8iVeLY2pe8HTM5/pTJGzlZi04HDu55H
B/19Uj5IH/0eR9AZ6hzOwzoML8TkL8HKrE2Yt9812mPOe++ZcRXYNvVAxnEW9t41
8DL21r4NXisnfZNo2mW6pmV71LeuaYnAao+vrU2W/Hd4RAz7H2dziwZbKNpd8ANq
NjtzuZhrz15gNs2hdNyUW6OS1t36BJiCWYCgIExH56a+i61H8uMxscodMdue0HDo
Z4K3WGaTsyxzoGACXSP5KxB7sWgUOTNE+x/FhsCNbYxTEWzOvGk=
=h/45
-----END PGP SIGNATURE-----

--5vjnjjfrjghdidc7--
