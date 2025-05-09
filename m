Return-Path: <linux-man+bounces-2881-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3B8AB1543
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 15:33:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD6723A9019
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 13:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6930291885;
	Fri,  9 May 2025 13:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nu9RqZSi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6740328F528
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 13:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746797504; cv=none; b=O1RS+f3ZU6YsjkGYnhdUAwpmynisCewxv/YUXLrFsGl8t4TmPLhwnvw5OhP/6x/iI0RVwxW5OyAyKoN743NMrTJhZiz6dUAwb29My8c9X2aw6TXBPWI3+Mm2WBUR0pFYzOcaD1mKYh/1X4zHJzdV4PK4kV2Pgxl/odkn3oZ6lgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746797504; c=relaxed/simple;
	bh=WJMGIwJS4qg+Dr4PZtAlzP988Si6jWEnyPBCUPy38vc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JEJHdb0ISx/lbvO+qISSmikdjM8TPJp0qMBdZr3iux+wGTEQkvQhcCS6HKSJ6REjaG1iwqcaqO1WVj/vz/JlVaTX0VKXbtjSkJqT9wtRCHrDTBM/EzzlU8yPSWBea9iG481v2plIDaeg056iaU30vZspbUUR5thMX+5CiViEnNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nu9RqZSi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7603C4CEE4;
	Fri,  9 May 2025 13:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746797500;
	bh=WJMGIwJS4qg+Dr4PZtAlzP988Si6jWEnyPBCUPy38vc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nu9RqZSiNe4oY+hSzhCR8AIlESaMEaYp+HujqpbL2w80XMOK9ZSDBZwWXRLRPF3GK
	 tZ8k7d4V6qr393j4wJQdvKJijAwUoutYaI36ENudordOUi6qXvvpOFrNk05Nr8ORzw
	 +pFv+2To/A0TLOcCwjj7ovub9Yry0xjWtAwTWG1V5zPu2RcBdzLBqlzED1HilZuMs6
	 BtjYECwBJJZGqmNfXRvQUOINPxUCFu5cCYvxaumWCuAFnOLEccXrJbMnLhywN7APX1
	 USB6iHUfzzj+xhSLrxQnJ35h1bfoojw8WQu/n+BZEfQQWrH/C//nFx+nnOFmr2SH8W
	 vgZ8Ix4fCib7w==
Date: Fri, 9 May 2025 15:31:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	linux-man@vger.kernel.org, "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <gbdubaqqeyeqgoibxyls23mo34ewz76wegrcyf4xch4ubcfnib@4zriaxxoghw2>
References: <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <c684271a-9c1c-4c91-9ef8-db44cb924320@efficios.com>
 <d9b988f8-ebd9-4a0e-aa27-cab14f1f3a96@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6jifcisti6s37iht"
Content-Disposition: inline
In-Reply-To: <d9b988f8-ebd9-4a0e-aa27-cab14f1f3a96@redhat.com>


--6jifcisti6s37iht
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	linux-man@vger.kernel.org, "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <c684271a-9c1c-4c91-9ef8-db44cb924320@efficios.com>
 <d9b988f8-ebd9-4a0e-aa27-cab14f1f3a96@redhat.com>
MIME-Version: 1.0
In-Reply-To: <d9b988f8-ebd9-4a0e-aa27-cab14f1f3a96@redhat.com>

Hi Mathieu,

On Fri, May 09, 2025 at 09:14:56AM -0400, Carlos O'Donell wrote:
> On 5/9/25 9:05 AM, Mathieu Desnoyers wrote:
> > On 2025-05-09 08:54, Alejandro Colomar wrote:
> > > Hi all,
> > >=20
> > > I've added to BCC everyone whose copyright notices have been removed
> > > (those that noted an email).=C2=A0 The full thread for this discussio=
n can be
> > > found here:
> > > <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljz=
sznrudgioox3nn72@57uybxbe3h4p/T/#u>
> > >=20
> > > Please let me know if it's okay to you to transform your copyright
> > > notices to make them uniform?=C2=A0 That is, do you approve
> > > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?=
id=3D9f2986c34166085225bb5606ebfd4952054e1657>
> > > in what affects you?
> >=20
> > I was not sure if I should reply to all (including the mailing list).
> > Please clarify for others.

One person has replied in private, but all others in public.  I prefer
if people reply in public, because then we have the list archives as a
record of the statement, which may have legal consequences.

I only used BCC, because having 100+ recipients is problematic.
Please reply on-list (but if someone prefers to reply off-list, that's
okay too).

> >=20
> > This change is OK as far as I am concerned. I'm always happy to
> > help lessen the maintenance burden. Eliminating redundant,
> > copyright information appears to be a good way to it.
> >=20
> > The git history holds detailed information about the
> > line-by-line modifications to each file anyway.
>=20
> 100% agree with Mathieu here.
>=20
> This is OK for me and something we already did in glibc to lessen the
> maintenance burden.

+1.

Thank you all!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--6jifcisti6s37iht
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgeA7kACgkQ64mZXMKQ
wqlmxhAAkSegBfDnxdZxAHjyzAFPQX4cCS3zoSTi0PjV2A53aQ7pkn1l7VUBKO/Y
iS+3s/sj5x/gOlDSLKYlBz+kdN2W/x4YwZRXf8Cyop/qzWzZ0a6eprhPf6jIlHak
t5bqAEwC4c93o5bsxB/Xkis0ia3o/QB5NRbxMsSo8hOj2jzO33QAGdvf8lrtub/m
gbx9cLWCsKeVMBPGCWUZx+cc68oGdW32DY6JdIiX1Do9Dpyy7rKRwjUtDvHAA8AN
jtazaisI40fRwOLR0RkNfX1UpxEaqOt/SfJpDneW2FJ3GjFGIAdfwGtraQkSTrqy
KKirRSo6EJyA2ClZO5GaCluJBjcieVLkQzIPBIn8lr0ywsFdleZp6OGY5/2MBhje
GkYZjehx5qbHAQzvBALAgmdD39uh0nyDujVHJTDBiQO9MiHhVfsGuBk46XeN54AZ
thgmNUXoW2wsPKmUJG67DPj3w7jROYi9sKV6JnqyoG6VQafuPObH2dTCsYCowT3O
OJDDI2j8vmshDa1jnNOYlOzQBuzF2D5aIBUGttz0MsA/KXg3Viinq4QzT6t4KYEa
yC0f7Fpl/OoDarKdk+dB720wlEA0XUDV00fyk5BnudKmJTpRJwLMe4a6U/cFbJPQ
Cm4Wa9pBWL5+MMkoM0q4Cnan9dOWjziGYzPzvcj7OW3wTkjfAvA=
=0msS
-----END PGP SIGNATURE-----

--6jifcisti6s37iht--

