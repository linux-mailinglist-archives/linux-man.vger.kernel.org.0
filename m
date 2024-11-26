Return-Path: <linux-man+bounces-2070-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAAF9D9547
	for <lists+linux-man@lfdr.de>; Tue, 26 Nov 2024 11:15:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3D885B215DD
	for <lists+linux-man@lfdr.de>; Tue, 26 Nov 2024 10:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 919DA199951;
	Tue, 26 Nov 2024 10:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jr4QDxMa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAC9170A13;
	Tue, 26 Nov 2024 10:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732616129; cv=none; b=oVUQ683YW9vxiVX6f6oGSrY0ruV1+7rd/1LiMd7pYLBD6X3hKq6LSzdOHgySuSefQHdw9iEWMKgSjgCMAl2HSTKEgXyehgaE02jScqcWbyfKd5BUwxLDp3U71GJnR/327kBhJ+nkI7pkZv524XVc8no9ji/+hSuVjeqEZ15PH/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732616129; c=relaxed/simple;
	bh=CTBzW7SvB+7qRzMehEkzANw3zSIXVQA59DR4zRNCFIs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P2LD1lzRzr4LX7pOXLF9WNN4Pb3GxRC+tsVkJSumGJTnS+YfgBz5MknHQNnD5CE0RxIYVvTbiv3+A+G2SX6WfQmxMPjWD84K5dsQ1P0BkYPD7NyWIyfv0RqNnAOBc7I9aZetEN+LWkF6vXVeaJahJ3cDQ5robAZ30bVAjMH53BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jr4QDxMa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6DE4C4CECF;
	Tue, 26 Nov 2024 10:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732616128;
	bh=CTBzW7SvB+7qRzMehEkzANw3zSIXVQA59DR4zRNCFIs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jr4QDxMaDKOcIKGsBdrR1S0OtSu86W2S1Lyrhly6z16OAx0VX/XQ17O0UNNoU4WTJ
	 X1useA2XOxTU4zxij8gAMGguh7JiM/RJ4xGwPbKEscOZz0KVIUSGTxuxF90bKfL0U7
	 k1/6ObF82MY+WQQLmKXWXizs8KaVhprECVyHBG02o4W8RnxPcTZzQ1WWT6qcXNtr6p
	 FFPkyPbCUt7lfIAyDX4g22lQyC9fpTK8rfdSjuVXlQXfNc+6wij5hVkUM4aNRw7ucH
	 mbvmnQoqSgKSJM8YGhy81YNgEaR8KzPNKetGxo0NFnxbOXijpWP53PnJBF4pcFpaTd
	 BztAI1TD2f/gA==
Date: Tue, 26 Nov 2024 11:15:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Namhyung Kim <namhyung@kernel.org>
Cc: =?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>,
	linux-man@vger.kernel.org, linux-perf-users@vger.kernel.org
Subject: Re: perf_event_open.2: mmap ring buffer requirement for receiving
 overflow notifications
Message-ID: <20241126101525.scvaunb3fwyv7tun@devuan>
References: <CAHGiy68y37n-y_b0gR-dArxFRzYOAr93dCw_6bvkNReNWQ37Hw@mail.gmail.com>
 <Z0Vf3lrTUsbE_4NP@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qbhkr4qy6k24dey3"
Content-Disposition: inline
In-Reply-To: <Z0Vf3lrTUsbE_4NP@google.com>


--qbhkr4qy6k24dey3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: perf_event_open.2: mmap ring buffer requirement for receiving
 overflow notifications
MIME-Version: 1.0

Hi Namhyung,

On Mon, Nov 25, 2024 at 09:42:54PM -0800, Namhyung Kim wrote:
> Thanks for the report and the test code.  I agree that the current man
> page is a little confusing about the overflow notification.  I can see
> the following sentences in the "overflow handling" section.
>=20
>   There are two ways to generate overflow notifications.
>=20
>   The  first is to set a wakeup_events or wakeup_watermark value that
>   will trigger if a certain number of samples or bytes have been
>   written to the mmap ring buffer.  In this case, POLL_IN is indicated.
>=20
>   The other way is by use of the PERF_EVENT_IOC_REFRESH ioctl.  This
>   ioctl adds to a counter that decrements each  time  the  event
>   overflows.  When nonzero, POLL_IN is indicated, but once the counter
>   reaches 0 POLL_HUP is indicated and the underlying event is disabled.
>=20
> I think the first and the default way uses the ring buffer to determine
> overflow condition so it should be allocated before calling poll(2) or
> similar.  The second way doesn't seem to require ring buffers, but I
> haven't tested it actually.
>=20
> Maybe we can add something like this to the first section:
>=20
>   If the ring buffer is not allocated, POLL_HUP is indicated.

Thanks!  Would you mind sending a patch?

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--qbhkr4qy6k24dey3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdFn70ACgkQnowa+77/
2zJTFQ/9GQhnFK07lSmxpkg4XhR+RngD2pbJfRms4vjfoePMBW0RszuNBPSJwFVx
CdVOEM0YmSTYOXkOGfONw5p76HmGFVP8lXdyDBaJhcYvwzwZKG73CJ5e9LHpA85b
pa5IJDjWU9cKZUf5Zk+IccdaqNiYaoLYzr8VO/IKlU2FxObupE2Nu/eFOwXrSlY8
iL9zygKurdCSNer6DKpEvyzUm7VU3GHp9vS2dtVSoox2Zaqb4Z8bncjW3MeMa86t
rH+34+9Ks65fx48xsHjugwSdhxcHhhPUK7JQL5yB6/UJmmvVTNXpsIqgd1jwN98F
v/6sCrQYmx/ScC6xH/titoLpdwDuwt18ugUp0ikjAD8FvwiXvAjS/DMJVEDFyzKB
MEnIlG4+GOm0/y0MYFVdQr1PQnw1sHLsZw6N2p52KeWHMQ4N18VAQxi+TiB8PAd1
swhvl7glB1LlMW3akDzI4ledYVZzeBf30RL5mrHgiLDX8Xvf1iHQVz2VhJN68zr0
Gr4n8K4kpd7gbhBR5QgFNKN4uXWrL0JOB0rrJl0hW8xMO/U5p6pP8j44tqkyb53j
SJaG1LONhljy0CzgjirnaLavQAs5i0gfOUZzTBZdzqrydo972FEiQh6yvMlVv+ju
YsFsdiKU0CtzdmfNvHZ59mHfxI2vDNIWgV+hjOLi7GzTCY5XshY=
=fzzu
-----END PGP SIGNATURE-----

--qbhkr4qy6k24dey3--

