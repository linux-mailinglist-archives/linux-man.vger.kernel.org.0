Return-Path: <linux-man+bounces-4370-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F083CAAB7D
	for <lists+linux-man@lfdr.de>; Sat, 06 Dec 2025 18:50:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0673319D055
	for <lists+linux-man@lfdr.de>; Sat,  6 Dec 2025 17:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7A392C026E;
	Sat,  6 Dec 2025 17:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsRWweas"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB6E261B6D
	for <linux-man@vger.kernel.org>; Sat,  6 Dec 2025 17:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765043149; cv=none; b=RXQ9eu5jrRi3e7eghPK9JMpYfYj0csxcN8NV+oeiLYqCaq0bgt0w/y1IdLZWE57o3FnDaREWqjbjH8aZvugN0HLLP6EjBkJb+h1ikAJTTesR/jTVp/zvHzLZ5n/1vDzscjZ2Vb50snb6u/UwemdeEtqTxIdpqBmtE3l1PYMZ0e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765043149; c=relaxed/simple;
	bh=I/7ta4cMXI2fIpLtGH+m58Dq9uobOSu3GLAyc6+57Js=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vl8I7m3yCpbeG2rvNgTOgkgkqDnXKZXuDHxYJvcn2BQxTbegRGZ5R0Ol7fiI+W9FxIyRwyV3Z2gld47d/e2d9hYOSwRoCuYGkBpVBykY+vo0N56yyBqxz9ktgVt1Q8r9au8ZCl2I7ENPxS0Djzcuvfax09PUNcnwGSxjC5uGVpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsRWweas; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5224CC19421;
	Sat,  6 Dec 2025 17:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765043149;
	bh=I/7ta4cMXI2fIpLtGH+m58Dq9uobOSu3GLAyc6+57Js=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dsRWweaspJQOvbg/phEJOhjXlZqZyYb6TYJh7tCfJFOJCBBg9OiimlLQNwN69O22S
	 bclDzsCtrWVveTdqMoCx3NpHas+Vf+aeoAsJkUmbhoSN+ct+08XoEGLUNdr3wa5Sr2
	 zGEVqb53AhbQhoAUQsytVjWLTaVvKK5fTlm9/wNyjZvyh4SciaJMsemGotFdJjgyjM
	 Bulaa7854DDrcKTq5dinDRly7O5kt0b0ipVYAgZxnP+WAG6OFTAI04wdh11ZemF0kU
	 eCw0t5lcCEQGiFzY7BRJMohbamZkgbtIUFPqJVFMAIMCx/iOEoXr1yWYEhDCtjfALE
	 EZABbXxywAeSQ==
Date: Sat, 6 Dec 2025 18:45:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Serge Hallyn <serge@hallyn.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man/man3/snprintf.3: BUGS: snprintf(3) with a
 negative size is essentially UB
Message-ID: <ot7dfqmslkzl5jhmywt35ptz5monca2s2lrb276rt375brzzei@rmzloi42p5ja>
References: <cover.1764964289.git.alx@kernel.org>
 <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org>
 <hnvmgfwqf4tjg7d5o56wxmwntbvym53g2v65vlesfgmv3t3pbu@zdyiafbysfpc>
 <bbb268f5-db18-41bf-a30b-00079d9b97ae@hallyn.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cd7ym3kvaw573nmq"
Content-Disposition: inline
In-Reply-To: <bbb268f5-db18-41bf-a30b-00079d9b97ae@hallyn.com>


--cd7ym3kvaw573nmq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Serge Hallyn <serge@hallyn.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] man/man3/snprintf.3: BUGS: snprintf(3) with a
 negative size is essentially UB
Message-ID: <ot7dfqmslkzl5jhmywt35ptz5monca2s2lrb276rt375brzzei@rmzloi42p5ja>
References: <cover.1764964289.git.alx@kernel.org>
 <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org>
 <hnvmgfwqf4tjg7d5o56wxmwntbvym53g2v65vlesfgmv3t3pbu@zdyiafbysfpc>
 <bbb268f5-db18-41bf-a30b-00079d9b97ae@hallyn.com>
MIME-Version: 1.0
In-Reply-To: <bbb268f5-db18-41bf-a30b-00079d9b97ae@hallyn.com>

Hi Serge,

On Sat, Dec 06, 2025 at 11:33:54AM -0600, Serge Hallyn wrote:
> > Actually, I was completely wrong.=C2=A0 The parameter is of type size_t.
> > Only the return value is of type int.
> >
> >
> > Have a lovely day!
> > Alex
> >
>=20
> Right,=C2=A0 that's actually the danger. It's easy to pass in an int or
> ssize_t, and end up overflowing the buffer, even if you (the caller)
> check for > buflen in advance, by passing in a negative value. By the
> time you check the return value,=C2=A0 it's too late.

ssize_t should be safe, as it has the same width as size_t.  It should
be impossible to have a negative value in ssize_t, because objects can't
grow past PTRDIFF_MAX, which is --at least in all platforms we care
about-- exactly the same as SSIZE_MAX.

So, to pass a negative value, you would have to either write it
literally, or do something really bad.  malloc(3) can't possibly create
an object that would result in a negative ssize_t.

The problem would only exist with int, because int is easy to overflow.

That is, the following code is fine:

	ssize_t  x =3D _Countof(buf);
	snprintf(buf, x, ...);

And it behaves exactly like this:

	size_t  x =3D _Countof(buf);
	snprintf(buf, x, ...);

However, the following is likely to result in a buffer overflow:

	int  x =3D _Countof(buf);
	snprintf(buf, x, ...);


Have a lovely day!
Alex

> "You just need to know (and not do that)", but if you are reviewing a pat=
ch and don't=C2=A0 notice the extra s in ssize_t...


--=20
<https://www.alejandro-colomar.es>

--cd7ym3kvaw573nmq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk0a8MACgkQ64mZXMKQ
wqk7JQ//TsZ0dwBWyvSs/qbxppVWUAIvPEgIeZBSPmjvFjJdl7vmAA5hfZPO7XmP
hJm0WskgTqPqN/Sd54wSDoDP8tFa9HQSSWJezr2tsMYe3vE8UECbld4uqrhjyuIq
NIRqEg3thiS88xg2xcmSyeG707OKJjC7isOHPbcz8OvPyDtAyUvxcPPm2A2/MWbW
9E0jL+UVYJim3qvLGH5XgWMBkVi95CSxeXWAlRDQIXcP8BZHGvWuXKXuqu3Mxvuw
wrMQ32eDOCQpgOk5o3ntscunm7ZXaX7Dn0gK3SBhqC6FwAN4ra3I8w+oP/DF2iNP
qZaGQG2cb50Ka6qQkLz/THQRbzw6Qo/9zD0SG/NV9Cnfn4ajshw9N7Rk0suTiorJ
+gfC5YrAGQoiYpyvbaERaCrF37+tKc1miOPPIM4OliZCi9BY1TtglWTxYsy6ZlN5
qqp5VIE1etLCvj+sNgyyQBKzHXsv5DOYa2x8DsQ7P8g1FHSG9xHzTe3TEpjZZzn7
Bb3iCOgHU4B/+IfAqnjHsIPweOZr3Fr4xQyea2a1kyT3ytWffadkLDAGa776USlF
j8Aco+lsEOlqIvXO7uZnYw0fiGh9OJOFhWop3F8NiQ/j9PW+U5K5QekBcZBI19K3
z8P7CsijfFHcIbPJsvta6lRD9GPCrRtsGSY8RUVSIzubcSLoHFI=
=MhtN
-----END PGP SIGNATURE-----

--cd7ym3kvaw573nmq--

