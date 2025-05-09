Return-Path: <linux-man+bounces-2901-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7A4AB1F06
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 23:26:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83F6852482C
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 21:26:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52CEC23C8BE;
	Fri,  9 May 2025 21:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndh3ipZ1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9D3220F30
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746825956; cv=none; b=XdFomcpOPaSoeW/kapiBLzNzNRYGnaXFM4rKuVh4PzWsruFGcCz4T4gNmi65PqSlUTwxEBFwZSrbRREED5POUpWgTcw/XXYjsHenSGq6VQJ5tqpSRXVRbCaDSbNiENNHwHVqYeYlFnp8Ly6LaaMJHrAvpPsHXDMtjyqKjIRxFOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746825956; c=relaxed/simple;
	bh=sA/sqGLeIEsdLD5pQor9o+fXeywh/GXWqiaop63aLxs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GNXBtC1elGbnchC6XeWETvH1ABlDHsjsC3IBaTfafaNwpqE6B+469PpmYIGBss23t4Gc+3ImmRPyB7Q6XZxUhCD2a+MZlCZYJlL246f+57wbOWYve7W8QqnVoz0GUXODQ1R6znbYP/0Gju/C+Suff4APGCGe3UHZ570POqtWjec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndh3ipZ1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A079C4CEE4;
	Fri,  9 May 2025 21:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746825953;
	bh=sA/sqGLeIEsdLD5pQor9o+fXeywh/GXWqiaop63aLxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ndh3ipZ1vBuP3xfZHDIWHpyuZq+KuD5rBLxyzfE/2aUH+JNU3eVcZGwWFltGUOFsd
	 LlYOzrKs6VxvfKTh+ZDNqbL+7Qljk6e4zDstf5z5Xvk5Yql8DQ8lR39eHwaQMNUdVJ
	 lWb0BwJIo2rlcvJ7rLkULOc+toI/y2av4hPzKgn4WN3y8HgNA3Mbg+D+MOQxyViUSd
	 52lpDQDWfw3at8iQezjz580gdiRcAuNRfhHzEAvi1bV0CQ2DIfEd9if9UC+oxzhGmw
	 jX1flRKxP/P5xea9fOOkdPGBQy4qlhDVcWcAthnrsC3WYq7EDHqF1oubw5/N/TXfdP
	 ALLBN7Ze3G92A==
Date: Fri, 9 May 2025 23:25:50 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: "Christoph Lameter (Ampere)" <cl@gentwo.org>, 
	linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <hsnku27qipgmpukeogycg5twxofugt562ssxblflcowvj6ijyi@dzj5viyxhd7m>
References: <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <a146ff17-ed1b-24d4-6c8f-2b544d9c888d@gentwo.org>
 <ui7qbdaamsaptb7jrmiich42mxyc3ldhjv4smk6njjaii3p7uo@46ypgbczz5qw>
 <20250509141935.ca5d5f154867815a67043627@linux-foundation.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6bs475saakmvooco"
Content-Disposition: inline
In-Reply-To: <20250509141935.ca5d5f154867815a67043627@linux-foundation.org>


--6bs475saakmvooco
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: "Christoph Lameter (Ampere)" <cl@gentwo.org>, 
	linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <a146ff17-ed1b-24d4-6c8f-2b544d9c888d@gentwo.org>
 <ui7qbdaamsaptb7jrmiich42mxyc3ldhjv4smk6njjaii3p7uo@46ypgbczz5qw>
 <20250509141935.ca5d5f154867815a67043627@linux-foundation.org>
MIME-Version: 1.0
In-Reply-To: <20250509141935.ca5d5f154867815a67043627@linux-foundation.org>

Hi Andrew,

On Fri, May 09, 2025 at 02:19:35PM -0700, Andrew Morton wrote:
> On Fri, 9 May 2025 21:11:50 +0200 Alejandro Colomar <alx@kernel.org> wrot=
e:
>=20
> > On Fri, May 09, 2025 at 11:31:58AM -0700, Christoph Lameter (Ampere) wr=
ote:
> > >=20
> > > Also regarding Andrew Morton's email address: I dont think osdl.org is
> > > still valid. He uses linuxfoundation.org these days.
> > > But you better ask him yourself.
> >=20
> > Hi Christoph, Andrew,
> >=20
> > Thanks!  I've bounced the original mail to him.  Andrew, I guess I
> > should use your LF address for the AUTHORS file, right?
>=20
> @osdl.org @linuxfoundation.org @linux-foundation.org @linux.com
> @kernel.org all work.  I normally use (the outdated) @linux-foundation.org

Do you expect any one to survive the others?  I guess I should use
whichever would last more.  If you have no preference, I'll just leave
it untouched.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--6bs475saakmvooco
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgect0ACgkQ64mZXMKQ
wqlzYA/9GibLO1waRizX4+FyfFAXSImzH7bQuQnns7AaeapsAFLl9XQLooGdniJ1
qNVD9oW0+W22Nv8tNaVGvuALRAWxx3OGUQKvrePnkxSDx5nvz4Xhb6C148OkFff5
Dk7xpg0VM5S9DwdNYrrrhzo21kZkbEHgnprACvXKg7x8yMzVLLMRsvFY+jyabmBU
L57lYPaZvUQ8aIzfcUcmv77fjnicUwcNML4/g9bCXiIZ3esH2150++aed86xpRyJ
9vVnSSta5v/fOxMfAWE/bLWVDExcDoDGIRvFiix08kBKtRcubCdOttXtPwI76DVV
wcfqj2FtYyeR2DCA6BGaJUBHGA4RcSKuweHNNiikjVbhQWVfVtNCFi7HonS3kb+p
t9r0hbh70VnQt5gLUijL64/A+12se+zwCg2ap65+OXXE1o/ps9/03hqEZFG7KB/M
a3QiRjOgMjwW6DE6q4NVHy5pDi7kTlShB5vNtEDXTedTnuub/8y808rQefg8sazO
bB1TFMxRDNMc1yX7q7HDT0rkWZJK/mw1G9fC5UsI3o2YPeqpxmIh98JP5XwxjmNj
qawJKqWGOzBAEmPbJdlPR1yI+PfC0F0hnvMkpOlVeshJNmWf0Sw6LYBgcte+Udwi
pNJV0jEE0TF0Yt+2ki4hFdDgjWLrRP0mrp46TfEKOjehdUn60+U=
=sKPb
-----END PGP SIGNATURE-----

--6bs475saakmvooco--

