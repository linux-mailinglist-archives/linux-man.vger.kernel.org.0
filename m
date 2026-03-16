Return-Path: <linux-man+bounces-5261-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aN4TN2dJt2moPQEAu9opvQ
	(envelope-from <linux-man+bounces-5261-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 01:05:59 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C882293172
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 01:05:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF2F6300C933
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 00:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6996FC5;
	Mon, 16 Mar 2026 00:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGUUb3Jk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318C03A1D2
	for <linux-man@vger.kernel.org>; Mon, 16 Mar 2026 00:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773619555; cv=none; b=dIFr/fb54EgliLNnm4BFdlmXH2JlZlbkXONvpU5wp953NpqqKiV5ZOw81YO/mLgYeKgcLOrNFDwf2vDmDrrk5H3dmrRtVE7Wf0OBSh6/Ip8RXTC5u87j5srmQGVUJhskVdydfBX4YsRP2xb2IYN/g6bOfdJbuwsfVWS0HqhOawo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773619555; c=relaxed/simple;
	bh=bi6EUrEri/tOXFrasDjea5D+szt6rUoZW/ZRcpPui3w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pZudKHf1YLSWw4nQkskGgGNOvr5nyYiLTV0Ji6h3CZXBig74umO7qWhpybQesT+rbGU12a7Q3/cXAk76z6dOJw874I9zRw0rJQCdOX4GjwwHOzanNkyVN4vVMEcuwgTHRc0QJi7sDWWeoM6xgIJOMzvuNfm///xJy7L4efvi2jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGUUb3Jk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E01CCC4CEF7;
	Mon, 16 Mar 2026 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773619554;
	bh=bi6EUrEri/tOXFrasDjea5D+szt6rUoZW/ZRcpPui3w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mGUUb3Jkr5z4xNuXHGiuwUNn2vzRKDxK8TAPGN2OiMB39gHf/XdnfGDanakxaf1CF
	 fM7GZnMBSPHPFQnTBCemdqtSnazx0BfwsgLwD1goY3+D/twg1fI7BzCOUyi0JPj6y+
	 YR/Euf1wDV5+O+ABvR3aghQrH9QZcouyfUYGKEhhdmH94fOGztcW0d5s5FR4wE1AU3
	 HzvtDMXQ0XfzpzvWsMPV+uXPDmCvV1Ihr6oGakYdfpvoc3nYhY/mMimmTycICI0zM9
	 vJif8Nonn/lJVaT0vGw0/Y8OrNj43iAkjmmWgOajwb85leeX3lGvLdeLUTLWeK0eB1
	 J0u9MawtgUyHw==
Date: Mon, 16 Mar 2026 01:05:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: lepton <ytht.net@gmail.com>
Cc: Oleksandr Natalenko <oleksandr@natalenko.name>, 
	Emanuele Rocca <emanuele.rocca@arm.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] core.5: document the %f and %C core_pattern specifiers
Message-ID: <abdJLIV1AqiIByZG@devuan>
References: <abRiap_UrhFzNxPs@NH27D9T0LF>
 <4718783.LvFx2qVVIh@natalenko.name>
 <CALqoU4xVdo_-W+yv7Rf77+G0wG6Dvit5dqZyhmPHpU+Qhbsm=Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="igebv77a5zu2sbzz"
Content-Disposition: inline
In-Reply-To: <CALqoU4xVdo_-W+yv7Rf77+G0wG6Dvit5dqZyhmPHpU+Qhbsm=Q@mail.gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5261-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,arm.com:email,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 5C882293172
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--igebv77a5zu2sbzz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: lepton <ytht.net@gmail.com>
Cc: Oleksandr Natalenko <oleksandr@natalenko.name>, 
	Emanuele Rocca <emanuele.rocca@arm.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] core.5: document the %f and %C core_pattern specifiers
Message-ID: <abdJLIV1AqiIByZG@devuan>
References: <abRiap_UrhFzNxPs@NH27D9T0LF>
 <4718783.LvFx2qVVIh@natalenko.name>
 <CALqoU4xVdo_-W+yv7Rf77+G0wG6Dvit5dqZyhmPHpU+Qhbsm=Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALqoU4xVdo_-W+yv7Rf77+G0wG6Dvit5dqZyhmPHpU+Qhbsm=Q@mail.gmail.com>

Hi all,

On 2026-03-13T13:51:56-0700, lepton wrote:
> On Fri, Mar 13, 2026 at 1:29=E2=80=AFPM Oleksandr Natalenko
> <oleksandr@natalenko.name> wrote:
> >
> > On p=C3=A1tek 13. b=C5=99ezna 2026 20:15:54, st=C5=99edoevropsk=C3=BD s=
tandardn=C3=AD =C4=8Das Emanuele Rocca wrote:
> > > Whilst going through the relevant kernel code in fs/coredump.c, I not=
iced that
> > > two core pattern specifiers supported by Linux are missing from man5/=
core.5.
> > > Document them now.
> > >
> > > Signed-off-by: Emanuele Rocca <emanuele.rocca@arm.com>

Thanks!  I've applied the patch,

> > > ---
[...]
> > > +%C
> > > +CPU the task ran on
> > > +.\" commit 8603b6f58637ce196d68f7749633ea81af196d66
> > > +(since Linux 6.2).
> > > +.TP
> >
> > For this part:
> >
> > Acked-by: Oleksandr Natalenko <oleksandr@natalenko.name>
> >
> > Thank you.
> >
[...]
> > > +%f
> > > +Actual filename of executable, which may differ from %e
> > > +.\" commit f38c85f1ba6902e4e2e2bf1b84edf065a904cdeb
> > > +(since Linux 5.9).
> > > +.TP
> For this part:
>=20
> Acked-by: Lepton Wu <ytht.net@gmail.com>

And both ACKs.


Have a lovely night!
Alex

>=20
> Thanks!
> > >  %F
> > >  PIDFD of dumped process
> > >  .\" commit b5325b2a270fcaf7b2a9a0f23d422ca8a5a8bdea
> > >
> >
> >
> > --
> > Oleksandr Natalenko, MSE

--=20
<https://www.alejandro-colomar.es>

--igebv77a5zu2sbzz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmm3SV8ACgkQ64mZXMKQ
wqkBiBAArZVxKUSG8YlgWhPzLN4pcsZulmZt9BN25rUCOJtiHfGPSiUHMMqfbLbe
MKgWIVHR1xap3Vp3rZnhhGl4bduh9OOuCA4kqgdJVIz08t1zaMCWfLkY2YraM9ZR
SVdxTKa6miwffSXOlarKij7uNaPyxjOzpUm7OTFeuINyNG9JgRVuLER5Av+1otaW
4AdK2Eq3JjgrkNeUoLY59cGesrZ9kMs2HywxRs7iYdCAJe7DV65f1qQOPtphEPoe
NO0/GMvZqMjGuRUbiWHqkUflL2sB0ZDiRJqJMmgIyXobCktyGuXEw0nHJIyJ5/Mg
mxDmvG2RyCmq7YWgmmcG9pydiTNudJkKwdxU7WnSin4tmwGMEOlLqmPlKLy8a5iU
w07troYX9MHGeYjOe5NjTFMpOL8WK71E++ND9NnaPs7ZUQvsMs+Cly7kyLdfmF7P
RJUH+bTx3NgPspDWe8UtHMjsP5+Y7DMP68W1k7eOEdnsqCaUFZgtKnz4tIMgDAz6
qoCaSMfqlni+oTpO0QTuGxTIwPa8JYploZ0k5SD5YHqgdElnNp+E6snSlCrM8JhZ
WXpBja/WSS8XIZr/rVwLx0lcsI34uX9/vphzJ79FadNKwurP2Og7e9wgTtzKar98
5cHjdeBeIAt2NNHqKwnbfYe1drnpj5U83Y5d3Jcgl7odAO+d+eE=
=TmBZ
-----END PGP SIGNATURE-----

--igebv77a5zu2sbzz--

