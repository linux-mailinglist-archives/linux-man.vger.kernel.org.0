Return-Path: <linux-man+bounces-2305-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 616DDA1DC4E
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 19:58:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B525E3A68BD
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 18:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBFCB18E02A;
	Mon, 27 Jan 2025 18:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="KHZ9Bxqs"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B9918A6A9
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 18:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738004286; cv=none; b=R5KVIFTlfh18EU3dmAqFwH8VKlg4fhAX9yRiAx11c7RNrPxSkWeEfzUkvH0NPD1r7UK07TgLU4+c9sYCHyqTrxo8EHoNbd6fEWQJkuQOkw6i1xFo6mgCTClnR0yNXJa9ZMPILwfzTemzp2bQCm2bjldbRsmJZtDLqIwivXkPER8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738004286; c=relaxed/simple;
	bh=9Fd9b5ZCqojV1Io65e34II8+UJN2wxrZ68nO4KxMHJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ESJjlChXNNfG92SoNNWq8DYSVDDSNlvP6PBAPxBOvT5rBXOgxilSlvSK8b4iZJSOR3/1gBCeOh0lZbd3KRpd85Mi6ADaX48ZzWLWMrqey7+YUj7paDveZ+jun6O3AufbigEwiib3GZuW9hhUdMsrTdx6SIHzSaALypbMeobWgh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=KHZ9Bxqs; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1738004282;
	bh=9Fd9b5ZCqojV1Io65e34II8+UJN2wxrZ68nO4KxMHJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KHZ9Bxqs27vZbQ+IXCBXIsJHyxNK0Rr6fJ5kvLmSWP1sTJ5dgKzw72vfDsah2zqj4
	 8xHQrtWocy6HNQxCDNcwgrbVyrs027KJp3lSARFcpxN1qJz0ARY6meiZrYJilkJMxN
	 /vrUzXnXzvAbsB0WplHNxleI7tkpFzqYoAsnivZxF2FDorFu1RIHYBlEEiNI4Ejx9l
	 WhlH60ZD+N6Z9sp3vKun41dwS42Mrtu69/qj5Mgyw595bMc+LCA67AxUyG75ds3N9B
	 IGA6f9EGBHV1hW8hR6jLX7FIMP/VTaL/1l0FFn2ZvRG83OcIfE7U1E2myFp91zjt1l
	 lv2zYxYzRDaSg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 4884F652C;
	Mon, 27 Jan 2025 19:58:02 +0100 (CET)
Date: Mon, 27 Jan 2025 19:58:02 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v1] man/man7/pathname.7: Pathnames are opaque C strings
Message-ID: <6blf4yxrx7cyqubqdpkzbifqcnvpvobpicsinquhwcv5hcd666@tarta.nabijaczleweli.xyz>
References: <ru2mlbwytntlel3jwwjcumn4i3v65bishfymxemiwvqpeeddmt@tarta.nabijaczleweli.xyz>
 <b9f5079f6bdeb29594f8ac24bd2eb4289e562613.1738003465.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mnxk3jhgogays3yf"
Content-Disposition: inline
In-Reply-To: <b9f5079f6bdeb29594f8ac24bd2eb4289e562613.1738003465.git.alx@kernel.org>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--mnxk3jhgogays3yf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 27, 2025 at 07:46:21PM +0100, Alejandro Colomar wrote:
> Thanks for the detailed response.  I applied this patch based on it.
> Does it sound good to you?  Please review.
Can't really find the base file for this, but the deletions look good.

>  man/man7/pathname.7 | 87 ++-------------------------------------------
>  1 file changed, 2 insertions(+), 85 deletions(-)

Best,

--mnxk3jhgogays3yf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmeX1zcACgkQvP0LAY0m
WPHBCxAAlAgUX3V5W7GRNFKuNIx2BAMWqiwVdzUhrZSg2HwFGNe2mRM8k/X9W3kh
p7Wh32/RI2lt9EDXbethoF1nr1VReg+gK0ZFKDgAjjTI3bTvmyhsdYmryh0dBetz
xAycff1HuUq2QgMyCFlRlKk4e1Uk1pb/10GmVxPum2w1n0aRwySxwTdo4/NZCIZN
7xjivS0GYXnu/t5N6nGoYdRRb1ZPhYM5QeNDjMo7y8DQWRP9rYpmAw+u0tp4Zj4x
BwBduED7QEKpvOSwiRmfvaGAk/iml7EteXmkN0nUdPVXBO98FHUYFl9JM8UjWAgM
dptlnQ8X7iuIywlXRU74sM97ohAK42MFHvTe5ti5RKCV2eOW6nvc0zJ41OmadOqY
1tGh4D0VmN4spAgdWl80fL2h7WI9EkFTUDCsiYATrzwWXzj6m/n6V86CJW1Y5AUN
l+5nDmyVne7lfZudZEuC5V0oeKLImbFC2xq6HaRpdtEJCpx0j73AeAExoDki96lG
UjDDC/+Pt8ZLW1wdpZWpbc/OAApU5RrnE+8iNSugQDACK7hfg/hMgo4CUVc376v7
qIvbZu6OE5NU+a2Hv9DlJjZqS2xWurUYPOyG78tSVmWK1TMOa+bqxVNGLZQItTdQ
HhHANYd2K290xreRUq9nmmdc2XuAZ09BTOCAptNlMqgqv7FskzU=
=RzT8
-----END PGP SIGNATURE-----

--mnxk3jhgogays3yf--

