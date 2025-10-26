Return-Path: <linux-man+bounces-4195-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B777C0AE84
	for <lists+linux-man@lfdr.de>; Sun, 26 Oct 2025 18:22:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05EF23B26D1
	for <lists+linux-man@lfdr.de>; Sun, 26 Oct 2025 17:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89366223328;
	Sun, 26 Oct 2025 17:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTr7N18X"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460DF205E26
	for <linux-man@vger.kernel.org>; Sun, 26 Oct 2025 17:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761499342; cv=none; b=NcNRoXv5Fniqeobk+dWgb08V4IHVaYYLwQ25mX04g4kNSRQN+ks4x53pY/CGsJWJBkuJ1ss5sXwo8bwZuXcrUw0Vbqe9ZFdas5IfFiQUrlWm6cFZj3/adHqqz9Jer3Ra2XxQMesOTwiC2VwKJx99vK9PGtpjmQsHERMTIIGVhVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761499342; c=relaxed/simple;
	bh=E7Clbxg7Acudbvju8Up0BwIWAuFBsp+YQdSOlXjK/z0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cpYs887HqPAN7xodBsxFWAKGCDl5eK3/ytvd+57XoMEnU4SKcT1nn4cQBNtWU/xrD9q+S4dwnWxKNx6K/qhPORv6rWNAfygENsLUuJkKBeMwI5pSupH9l1qebOsRvPED1rs/RR8e4b4RiRvP/npyPpbtmooExzahzfTLK0TuAJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTr7N18X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C46BC4CEE7;
	Sun, 26 Oct 2025 17:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761499341;
	bh=E7Clbxg7Acudbvju8Up0BwIWAuFBsp+YQdSOlXjK/z0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MTr7N18XhbP4fCTDZwkxBDl29/VUWyBL47vRSRwOD9I5uV2QZdiSefazNnHcTDgS8
	 /Ldd6QAr4HGpedR68oTue7BA+vgABvYOvWpOOIItAlFeildph756aMrwnVDGNZLb7c
	 f1GNlLnXaso5mCn5yX1eA8d9R23S83ZPUT5J4SKM8Se5tBcLS2LmIEwNObUux7U9Jz
	 Bxny8bab0lDFEo+q+7rn9FP5t96SCKysFM4bjas1UAIt3Mq8hi+9+j3oisbm9dsSLx
	 5NS65v/HVKLKv3oe81b86yEfjPz9l3Ln9CZFC+8pOBLEJNmKyC2w+lB+Snt0Kffw9D
	 YLVYoYS17zYoQ==
Date: Sun, 26 Oct 2025 18:22:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Wes Gibbs <wg21908@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [man-pages] Working on bug #220489 (copy_file_range(2) glibc
 fallback text outdated)
Message-ID: <7n4xzc255szvbbycsrfpryyhyjfzfw4ugbp7pximicp7wbrsbn@exfjaxvhyevn>
References: <aP0T3yZ0jflUtliV@secra.localdomain>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="awz7l3exess4ugrr"
Content-Disposition: inline
In-Reply-To: <aP0T3yZ0jflUtliV@secra.localdomain>


--awz7l3exess4ugrr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Wes Gibbs <wg21908@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [man-pages] Working on bug #220489 (copy_file_range(2) glibc
 fallback text outdated)
Message-ID: <7n4xzc255szvbbycsrfpryyhyjfzfw4ugbp7pximicp7wbrsbn@exfjaxvhyevn>
References: <aP0T3yZ0jflUtliV@secra.localdomain>
MIME-Version: 1.0
In-Reply-To: <aP0T3yZ0jflUtliV@secra.localdomain>

Hi Wes,

On Sat, Oct 25, 2025 at 02:15:59PM -0400, Wes Gibbs wrote:
> Hi,
>=20
> I=E2=80=99d like to take on updating the copy_file_range(2) man page to r=
eflect that
> glibc no longer provides a user-space fallback after version 2.30, per Bu=
gzilla #220489.

Thanks!


Have a lovely day!
Alex

>=20
> Wes Gibbs
> wg21908
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--awz7l3exess4ugrr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmj+WMIACgkQ64mZXMKQ
wqnUIA//aqKmJX4XRlpoYwn0YG93tuV43C5Y6Uh86XukbH25StNQic2sBFOn0hg7
0KN1JwMykKM7MpQjAXMXW+lU4Xpc4X15n1TtNyB+HGWYEsfJjZStNUw7WYF+zw0/
CiRoHzOor0F2RhTcOpaI/0ZD5i1q8VNrgMQgnCL+oZtcjLnX6gWxzoBvSBXFByj2
aIpShuajG66MqyJHcXJNLAQeYrWuAxjihNesMY9UeWjnwaiF6PhyyTjpJUuh+WTS
0RDc1ssC6SDyIMj/LJiWQsYlu04EhoHWBoKeI70a+cKskP71HVbcP7Yw5dDYVx01
8FYd8Ome4cgpkNBxX7ktS9wPiLBNSVcBHimySnovp4uqNUQ+0hPyiBVtIXOaFLgx
b3u71UKd8PhZMz0dfRXydIngNv4ecfE91QAcl3JfsO8/n2A/IV/Lse7ehQYFypnV
zK1lj4auWYQVuhiyqBAA0j6QO5Lb1mZTGZge6Xip36RmxmVefhS5YifPYTIeNyvA
SYW+poBmKgV/bVfhiEDGRTpLD94GDjhKlpysBKJaC/9gvp+9ivYr/KPFGYB0ekeu
VHQfgQ2EicEkec/ssfyVlrncxVVr3YBCFFYxfyUvb8BjrcoWhtIq3fiv+mUIu0Pb
cp9TPiwKB0q4yc/zKxGYQQUeRFgQBSCNRFGUEHnhas99SKy4FYk=
=C4nj
-----END PGP SIGNATURE-----

--awz7l3exess4ugrr--

