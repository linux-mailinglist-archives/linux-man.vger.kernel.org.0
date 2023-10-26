Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C56297D8B02
	for <lists+linux-man@lfdr.de>; Thu, 26 Oct 2023 23:59:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjJZV7S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 17:59:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbjJZV7R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 17:59:17 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29B7BCA
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 14:59:16 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E76D5C433C8;
        Thu, 26 Oct 2023 21:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698357555;
        bh=NyVH7VhJs1lI8hy8n0nILXFUKGqpiPXm6XoLk3rJQ4o=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nFTAu1PF41SeZfOqqSf/QeETLoduQ/WUVbVQjgVMv2CtAfDflAumIZnph0xWOEbKY
         5Ifk6TnrzsL8RZQ4NtA1Q+ZiZsbza1v1sa1MwLN69EA+7ZmQkFGteW04tFySgL7+2n
         T95tiv2icQ5lZsetxS5UajTETNIJQ/q40voEiO1ZJD+bvZUB5s42oJJLB8+vGGxaqq
         QxBqzE1FOazUXV5Yj8AUtm8RaQnp6yZZqSTRzP840cMHyQ3PcnCvNrEGP1+AXI3pOg
         jVsRDep5mO3RGKELQ6I5wYdiAGRhvnLfYBnMeSSZO0zG5BAtOcKcgmHvq7HS2y65oL
         wcFD2JSi2li4g==
Date:   Thu, 26 Oct 2023 23:59:12 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Why does man(7) have 3 paragraph macros for the same thing?
 (was: `\c`, mdoc(7), and man(7) extension macros)
Message-ID: <ZTrhMEj8JnmEQDQG@debian>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
 <ZTpz3A0yijoxDvip@debian>
 <20231026145140.qyl4lsfhp3644hmh@illithid>
 <20231026160923.dmqjhapak3zuz3k7@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hb1yMQ6temN2x7WL"
Content-Disposition: inline
In-Reply-To: <20231026160923.dmqjhapak3zuz3k7@illithid>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hb1yMQ6temN2x7WL
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 26 Oct 2023 23:59:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Why does man(7) have 3 paragraph macros for the same thing?
 (was: `\c`, mdoc(7), and man(7) extension macros)

Hi Branden,

On Thu, Oct 26, 2023 at 11:09:23AM -0500, G. Branden Robinson wrote:
> [self-correcting follow-up]
>=20
> At 2023-10-26T09:51:42-0500, G. Branden Robinson wrote:
> > In ms(7), `LP` sets a paragraph that is left-aligned, and `PP` sets
> > one with a first-line indentation.
> >=20
> > In man(7), all (ordinary) paragraphs behave analogously to ms(7)'s
> > `PP`.  A first-line indentation is never used.
>=20
> Sorry, brain fart here.
>=20
> In man(7), all (ordinary) paragraphs behave analogously to ms(7)'s `LP`.
> A first-line indentation is never used.

Hmm, then, since I don't like that name, either of PP and P sound good.
Being shorter, P seems the best one.

I'll probably change that soon.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--hb1yMQ6temN2x7WL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU64TAACgkQnowa+77/
2zKMhxAAlQwo5tVIpC+pVRpj7RHUWfUxyhso4iAili+c/orBncuVabnEAeWRrVZa
c9kE6MhthyuVIzq/+5cq5HxUfHwsD4iR6VZ/t3bjEvT77djewLqRqB7AoDO5lDX7
kGbyQUoy8wtSuH5y9bw3fZuPhsVzf5yl6eRyfLqHP9SBaNLFhInuxdzdiHxNEvKq
lbTTNpaT7YHaeIR+CEOfxmsKrjSucMifPGTu5u3iOKslverJPbM3BFkQMKcQCbGz
y7VQB1Oh/DP59OZQU7GWgOPBiKopUUL5gme/x/y0ebnm//v5o3agk8FB/u+TN6gf
QZsFVyO9hyBlX2CyJ3nH6Kq0LNQvFq3jM1cBE8HfrK2wXWDnpaqEWO1StDxYANzd
8KSt0SOLSAaIqZRVGPMqKVBpN9SLDnvOKIQthCi8EGNjcFnw5O5Q+HQRbGuluYaW
6mbGJtZF9cwLM/q6WWhqfEAKAlhEBQ7hK9d8q1KWPPlKs5IRIpW19Yllfvoh0K9m
pS4Ex1NF97c2lqX4msasCTqChaCxQnY9Gsvg3vbPfhXefSiKM1CwFZcz5M/VLB6t
hTkdPbuxI2/qlm1xNx0MrWcAcob3sVNJ9J9SyBldbmVcphwG+q6m58uRDW4AroOf
d4m9d/1ibg8rbJ6xK6ASW6/NvIPWA5Z3RcFzfTazoQTBH/wjLYc=
=eEkq
-----END PGP SIGNATURE-----

--hb1yMQ6temN2x7WL--
