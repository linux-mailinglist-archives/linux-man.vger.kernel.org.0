Return-Path: <linux-man+bounces-1417-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B17792C369
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 20:43:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3FA31F21656
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 18:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9718F18002F;
	Tue,  9 Jul 2024 18:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcJY4q9i"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573D81B86E4
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 18:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720550619; cv=none; b=DJ/Dt37/UVKnes/vw8rRAOE4xqBQSpxcGU6AJwMSBrBTGW+f9sUjxDUwxyH0aK40lofpWIWfT1Ov5VafdXXyGQLtY8wEjG+Oy/DS1no3OZAoQXreb6VQF3bpKkT5tWK9tv84rJmZmBoqwmtAsKY/UjWWmotAgee0AWQJ5tlPdvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720550619; c=relaxed/simple;
	bh=U/VKElBuLDb6Gltk8h9c1eRNL6NLGxrOFzmLo8VOKV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=usHJnr1SXNRmUhWwbh/V7QUzG7WzYx/1U0uMzPXU1CvX23GfCXX73/sHbwtPxOhX97ccn8zOixoPFlrK/varWOEykqHakMOIe300CEda6TYETumgXt0zk1zsLMhD681BuN/x19Dz1e3hPbuq0GVneh8s0vqXRJ9HY3dfkhghWvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcJY4q9i; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AA5BC3277B;
	Tue,  9 Jul 2024 18:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720550619;
	bh=U/VKElBuLDb6Gltk8h9c1eRNL6NLGxrOFzmLo8VOKV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CcJY4q9iKzcScpRlKHFUH+Ej4LSW9p6m/vKkcFeSRTADzVYxjDsMaAzZpA0AM0mUo
	 vS/hVUVuukIAnnTyd4nTyYca6+0zjPVv4lMhL0IUCtTKTSMMmSFNIEu3pSH80aq9dS
	 27qWq8CohQVMCySHqlxmyXF504ZIU8EudKjkA21YnbwkgUxHNxdJPH2InNFJTsTRrb
	 NbzurdcCetbcBhh/HKNyIJQsIXihdmgLirmx/MoU8wZI62jZuG+hrNF4QWHbuv0qmF
	 1+CNZMROr4D6RDJtfa+6OZuWTpRtw7dzoeKZxarVGmNANaoadZAY5nEyo3tmWABVQ4
	 72AO26r6w4rKQ==
Date: Tue, 9 Jul 2024 20:43:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: the overall syntax is "%argnum$...", not
 "%$..."
Message-ID: <3i7s3ym3wj2ya3aiuar27dnfj7xpf3mfj5knxznckeq4blmt3w@hzwf7bs2f6d6>
References: <atyx4os7275jhfsrnblyr6ykxwghjzdpdnvnrvxcskei7kbb6n@tarta.nabijaczleweli.xyz>
 <gbwgs4u4acvwtabte47aljprwnhhxsznh7il2yfafhwkwrysbm@ij353jrj34qu>
 <3k35hwsubawtgidt2tvhrw5vspejtfmukyysfaf5ak7bdluswy@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="exw75vskacuhce7b"
Content-Disposition: inline
In-Reply-To: <3k35hwsubawtgidt2tvhrw5vspejtfmukyysfaf5ak7bdluswy@tarta.nabijaczleweli.xyz>


--exw75vskacuhce7b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: the overall syntax is "%argnum$...", not
 "%$..."
References: <atyx4os7275jhfsrnblyr6ykxwghjzdpdnvnrvxcskei7kbb6n@tarta.nabijaczleweli.xyz>
 <gbwgs4u4acvwtabte47aljprwnhhxsznh7il2yfafhwkwrysbm@ij353jrj34qu>
 <3k35hwsubawtgidt2tvhrw5vspejtfmukyysfaf5ak7bdluswy@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <3k35hwsubawtgidt2tvhrw5vspejtfmukyysfaf5ak7bdluswy@tarta.nabijaczleweli.xyz>

On Tue, Jul 09, 2024 at 07:57:34PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> On Tue, Jul 09, 2024 at 06:57:29PM +0200, Alejandro Colomar wrote:
> > > -%[$][flags][width][.precision][length modifier]conversion
> > > +%[argument$][flags][width][.precision][length modifier]conversion
> > Maybe argnum is clearer?
> Considered it, but nothing else in this string is contracted.
> If it were=20
>   %[argnum$][flags][width][.prec][length]conv
> then sure.
>=20
> I don't think it matters, really, but "argument" reads better with the
> full words. If you like argnum better then feel free to editorialise to
> that.

How about [position$] ?

>=20
> Best,



--=20
<https://www.alejandro-colomar.es/>

--exw75vskacuhce7b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNhNgACgkQnowa+77/
2zJxShAAp3hz85523uBaJ0cu6iOww07rlzGedszrxZKo9g3rhmIQYkYEZdsYxJm+
nmthIB1S7bvhKZFuq9q3Llzs9bOV6LrTfH5Svzi6tWWK62eCPOBFs+o1b+wcxx4N
RSKhqmJxPWJcwmunfoqPVK+dz1MoHHJQUlpaG62YrzC8atU4TJs6Sk1cZeOhkp3J
g/9fDsWQek15GJLsQ6htIovAGkhHQHR6gg/s+ZP5fWl2DfGa0vtYY6hzFN3zOoP3
p56vKR/ntbjFPyGGtZ/nNHcVZBPIOLcB5DHDfjL2vZ3/IxvwAfP1BQxSPWpBkgGJ
5bH2AQXMHcFM4NeckFpqHycMAU5AvPSBeYQkfDpezp7cXLprySyI21FZxOD/+wWg
D2rtDWmxG5tjo7TPjaxjb6C0uLg71w/psvcxj1CVS91/AsXUi6Wh9K/bTCEKkogJ
QyBMtX+32zjtvaFugEU4soP8/xJUsOTBaGXuCn9auBuCC1rMGrv/saCL6iBefrI0
w/EyYnFSBy+C2TZcAeSICCXIGDgbJGlwhSzXvC9YOH6asAYmpg4Rr8u/ZjNwuWmP
63YbIDu3jEkFZD9FV1vQ8pR1gv457D3XR+TALZymvQ5n7vQGuSMVuHoJr4ZqBC+l
Go2ohHVTcUzJr2jJrdyih4c9ycWYxZOOK98NdYeF/jFZCdGvqHQ=
=TtRf
-----END PGP SIGNATURE-----

--exw75vskacuhce7b--

