Return-Path: <linux-man+bounces-2770-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8437FA88BE0
	for <lists+linux-man@lfdr.de>; Mon, 14 Apr 2025 21:02:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D83F77A7797
	for <lists+linux-man@lfdr.de>; Mon, 14 Apr 2025 19:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CBEE2820BB;
	Mon, 14 Apr 2025 19:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSiBNB2E"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B591A257D
	for <linux-man@vger.kernel.org>; Mon, 14 Apr 2025 19:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744657339; cv=none; b=I4/gApmtFvX2gRQjN6UlsEn/sSfwyDzoGcRhp1yPDCQqjiLBwBJ5UaNw1Z/ad0nWbU+UABwaHEGq+EpshIV8yl8OZXuf+1UuMJiILbyel6zKkKRe8+TxV0oLoaaG+YWp+lC+85N/PnSHu3+Nzwn4GK4PnPZcFVcr2d5rP2X3cxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744657339; c=relaxed/simple;
	bh=NrsJfGHKE23wTjFzGz95P95be/AaDfNjmFZSshX/2Lk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=AjfT3TSieCFepb3JQ3U9iL5HdYuBl+mCYPASQ/gIcDbUIdQS0NzyITeZTt1V+uj/6JF9uLhR1F+HuKJfwwvrWhNRyTV74d3OFPScFHUfqTQj8/SWwHJxVycfhbydznPJOdWXSAvkDYASprPBzYcVRaC6fWeidV5ao+RYYqSRlpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSiBNB2E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45DF6C4CEE2;
	Mon, 14 Apr 2025 19:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744657338;
	bh=NrsJfGHKE23wTjFzGz95P95be/AaDfNjmFZSshX/2Lk=;
	h=Date:From:To:Cc:Subject:From;
	b=XSiBNB2EAFhOaGPbpKqRSyvXaJO+BFjJWqhvm58AlNH9iwrg/TZrATvXpsSCWjvyV
	 fMrHMAzZFAsCqrkWdfpEqXeojRia0GIDj3NizWFVvavW+n29GxUuqVVxSyDKievlgU
	 95fFneTTvz0WuHZup/mAHqY2lLmEP+WntNcAfepT4rdw9zQHvk2RekAVEqeKRiPusf
	 JvMALUb6oY9VVlgCwG3i0pvEfn+vD2xWVe3QSMDwunV0no+G0UdcHnfDW1gDYogX2W
	 rvly4YYbBZxCxLcLjAhH9mzJCi8OKXWdwQC5xTcC6qfS/3TJ15jdvJb3mEmeleBv/7
	 2dwcq988fxMrA==
Date: Mon, 14 Apr 2025 21:02:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Eric Blake <eblake@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: fchown(3posix) changes in Issue 8
Message-ID: <oohdlh2a5ab4z3exlwzdt64p43jr4h3q7envtpu22k76is3zix@rnct3c3mktor>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cxdjcwi7dxgwb2dq"
Content-Disposition: inline


--cxdjcwi7dxgwb2dq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Eric Blake <eblake@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: fchown(3posix) changes in Issue 8
MIME-Version: 1.0

Hi Eric,

I'm updating the manual pages' STANDARDS sections for POSIX.1-2024, and
I noticed something weird in POSIX's fchown() specification.

<https://pubs.opengroup.org/onlinepubs/9799919799/functions/fchown.html>

The CHANGE HISTORY section says Issue 8 has applied Austin Group Defect
1330, but that defect doesn't seem to have anything to do with fchown(),
and by visually comparing the specification between Issue 7 and 8 they
seem identical.  Am I missing anything, or was that changelog entry a
copy-paste mistake from POSIX?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--cxdjcwi7dxgwb2dq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf9W68ACgkQ64mZXMKQ
wqm6NQ//e38jlMTlT26MSJhwSogoL6Hjlu+1qRXXrNoEXuG7Frx1sOUqKN3xhUxF
J7i0khtkXjNrFVZC/JQDFGvEUHlaELB3m9E+UWdYYkWGV+qPqk6OEs85qZaRlMr6
MKQ6uSG5Pg7D3m8Kv+n/puPbKj0r0yzU9dticeTmOtg/yV6EpNjh7dxUCB8+FmkW
J6E7LTVqV7Bu+F+pBKAMGoKGFvsWvRofT7OGtIZDaT/Y4w9QW1gvrbls5KwuyzBW
/JHPZTHOTDNc+X6l+Xkt+dcl1SxKH2qorfR6OBqQgzDyVQ/AEsgHiwgjtEnsr96t
8z74mo4bCgCX0a0qDVIzgCArbBN6rwCKWppJFA9jINqRZ8bqkGPSrb9oACNag48S
TE4qtrQEi8gWUOb16/JtaVM8xhjOEBBTI4L9g50vcdjew0rpctfU/zBjz4in2e1Z
2Agd974nPxI/GRY7g+Hj3kX4sWd9H1xTRdXzIznksxQ4jbY2Oda3LAFBBrgvb5V5
HGH+5w0B9zfTDuv1ujiJounrc3XWqV+FczfKISBjNm4ojLbf7lE0T5MCWsLPVZZH
nfZh8VnVcTmANMgNb5EbmFlr4LblunsbhaZG29KzeHZORGHd6zEhWQZrkDhD0Urs
5jVfCO09AsOQUUk09yNE6O5hlZUt1MlRRfO63gipmLU0QuK3dkU=
=jHBB
-----END PGP SIGNATURE-----

--cxdjcwi7dxgwb2dq--

