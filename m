Return-Path: <linux-man+bounces-3905-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC26DB8D16A
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 23:11:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 83FFF1B261AE
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 21:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ED3927A10C;
	Sat, 20 Sep 2025 21:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVtyhmcZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAA627877B
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 21:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758402662; cv=none; b=W0ArzWwIUebTNa3ITS4hv79xi9yjHUzD2yZ5b8n8LoL4/Wue8junKbqJyLHC9erRRlReUi4O2jMcrL9o9Pn/fQmhXY68+LAy7Nn23xbcxIflCti11r87jlztqhKhzhGpxbcpAVeKxLT7UhfjawiIy6YIf2lubC3GnYgV8eXyva8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758402662; c=relaxed/simple;
	bh=rW0+gSNCpYqbgUYKnTE9yhN9Rif8Mq6ndHwuLEuCGzw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lY4NwYVq06Pww+BCt+j9ebVLcUCU5lZTf0tMAs/nXaxZnRqEPvy+RUo6gwtINMq3goHYO6C5C4YPSNAvGNPxL2xx8r0T7Mh9FAMMxsSpT1/KlMYldpetvG7yLSAVsGX3eSKeHxEdTmxyJW8NIRsp/4pGamurNvNOkrQHxLpH3+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVtyhmcZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B2D6C4CEEB;
	Sat, 20 Sep 2025 21:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758402661;
	bh=rW0+gSNCpYqbgUYKnTE9yhN9Rif8Mq6ndHwuLEuCGzw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GVtyhmcZQTfFXHynobj4QSEbrekpSmYqjhHRWROks9IJP2Qc5Bp4AXvGgjK3dDged
	 KF5iyAvVmAIiGGv/wML0UJ5yTc7CtyUWhdR177BDICSVovazKo1uynvOjSHZwCwX+m
	 dlVRpHZLLTS2qdF67Ne8Tm9Wziy0ncJQSw17x979WmR1z/YFft3ffmptbOxhehFFvx
	 O8mJpir0Poki3oN441MT3+P/LLI+h9M3Tk05MPppfp6BwTpmtjfriDSI76IJBtCwg8
	 H5D43F7AFPc2lrOGviR+M8gKO2QSu5Ns/KlsCIc6oceVabVnsEASaS6wWGCTxma+ts
	 5is1GAkCqWhyg==
Date: Sat, 20 Sep 2025 23:10:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, coreutils@gnu.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <pmx25futce2ey74t4fm3c4hmmzbcwv4l6pxok4e5emsw226ohk@dim2ryyfaal3>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
 <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
 <20250920174022.zjqt6fiv4vxo6vh2@jwilk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iqwoncxewdspkn6o"
Content-Disposition: inline
In-Reply-To: <20250920174022.zjqt6fiv4vxo6vh2@jwilk.net>


--iqwoncxewdspkn6o
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, coreutils@gnu.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <pmx25futce2ey74t4fm3c4hmmzbcwv4l6pxok4e5emsw226ohk@dim2ryyfaal3>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
 <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
 <20250920174022.zjqt6fiv4vxo6vh2@jwilk.net>
MIME-Version: 1.0
In-Reply-To: <20250920174022.zjqt6fiv4vxo6vh2@jwilk.net>

Hi Jakub,

On Sat, Sep 20, 2025 at 07:42:49PM +0200, Jakub Wilk wrote:
> * P=C3=A1draig Brady <P@draigBrady.com>, 2025-09-20 18:01:
> > I my experience user don't enjoy the info _reader_, while the docs are
> > fine.
>=20
> If you've been avoiding info docs because of the horrors of the info(1) u=
ser
> interface (like I had been doing for 20 years or so), you should give
> https://github.com/jwilk/informan a try.

Hmm, I'll try!  How does it compare to piping to less as this?:

	$ info libc | less;

BTW, to someone who doesn't know perl, how do I install the File::Which
module?

	$ ./informan libc;
	Can't locate File/Which.pm in @INC (you may need to install the File::Whic=
h module) (@INC entries checked: /etc/perl /usr/local/lib/x86_64-linux-gnu/=
perl/5.40.1 /usr/local/share/perl/5.40.1 /usr/lib/x86_64-linux-gnu/perl5/5.=
40 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl-base /usr/lib/x86_64-lin=
ux-gnu/perl/5.40 /usr/share/perl/5.40 /usr/local/lib/site_perl) at ./inform=
an line 20.
	BEGIN failed--compilation aborted at ./informan line 20.

apt-file(1) didn't help:

	$ apt-file find Find::Which;
	$


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--iqwoncxewdspkn6o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjPGGAACgkQ64mZXMKQ
wqk+mQ//SIOpVCgAO0hZ+WNi4T/kagQj+zmzpBtU9snw7CjknEJN176P1pdAHvzf
y7+zEpHd4ISZPexuKsWgHQs/FFSjNbz11XAhJmlC8ph6KJrcirJXa363joBAxWFM
tQYyiXTjkd0f+Dj+xqiAm0DHqf0jvVFHpAZ7xYHrxaJpq182VyD7c+allP1FjELk
C9XCurkFsody5h1lmQwUGkTuBJeGyw+dtrOSbhmZf16V4kfPJ4DhHjLnOVt97ByV
/MyXeLPdcOBvEux1xtZCIPUE+5quo6Yr4mGRgcA90CoLh3njlg2ZVQOyRP0Zmn6H
m9X2HL8c4hKjGC/BYHmxH0+hWdXYs4hwu+KHX2Aw/dhX4hkLnYrIUj4pJtlUnD9z
ux/tdPEoDiBKlZ7zb/wesymEPL1Q/pZ6e6YqqwNAKqi+Pis9oQFsFttpEiOkg5x2
ktpi+DYrRDdh5L/Pau6ecXvrHIYZkZ5fjA38PQbzmkhScVMFbraWAzl3x2geSN31
eMmqE5h4LBNELFdh6hnPg9l5EkEjW70DfaB8WQvtLE6FpOmSY+EtWTsr6Pg4xrYr
WIu0MLEQx4G5GIm6cNyzvHTIVG/93rw95N/zPwj1RjpGdo3Ez9X1mJWJ3b3GD8No
aaXBltyCLyOlaPwclLl33AOsPHRpcRbq4Af8uEuZrkNQ84CUsf8=
=3lxD
-----END PGP SIGNATURE-----

--iqwoncxewdspkn6o--

