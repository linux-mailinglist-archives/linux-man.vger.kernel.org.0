Return-Path: <linux-man+bounces-2062-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2974E9D8592
	for <lists+linux-man@lfdr.de>; Mon, 25 Nov 2024 13:44:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B148169042
	for <lists+linux-man@lfdr.de>; Mon, 25 Nov 2024 12:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8C7F19F120;
	Mon, 25 Nov 2024 12:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9AyKPXD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3D91552E3
	for <linux-man@vger.kernel.org>; Mon, 25 Nov 2024 12:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732538647; cv=none; b=SIfC288wuw3jnjNbRYoXL+av7TIMBmhZuAYp7Ko/+tEIj92GqKNinkgejA6fq7VJ6wVP8uLy0r8a431oJubJ2Di8YXIyPygDGTJ9jW7wYfAFNn/tdyYr7JnMTxunQq1Y35ywm0jVvzf6Ebc355RpouoO5K8IZ1HNAMAwqXD3RIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732538647; c=relaxed/simple;
	bh=LmzkU53DTjlKP6n/Vx2p8AU7cYAs+6tSFRzkeGLhVlM=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=WTnNyBw1zQ1cpY+3DR1x8y41F1Q6nM7ttRoI5BsANcWeZ1Zye/8vSAZuXChFMWGzbZwoxykYn00PNZGz8t+cr1EXe9My22+CVqN4+8JGo9nxZL0Md+APha+W6J9fQvvrXwOkTksdXLEpc4kf/V1q/OY332E7Cpr6IMOkyddtldA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9AyKPXD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5924AC4CECF;
	Mon, 25 Nov 2024 12:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732538647;
	bh=LmzkU53DTjlKP6n/Vx2p8AU7cYAs+6tSFRzkeGLhVlM=;
	h=Date:From:To:Subject:From;
	b=c9AyKPXD1conqMxb2kYCe2jOfbedckV8BnfTB2k7ZEro9hu6OaXjBWFl6NoE1OLtf
	 vdmSoaaqob1GZ/1ikA4JVslnJckH44wYGBm9sIUpr9RAOAHFE51kjGRxrqfV5TjypT
	 1et6soBc1cWWZbS/+fImXGYYOb3+dFzVj9jee7HgbHuGX0C1fWkZsAojAfvT55KVL9
	 7Lz61bDJVhNq+3kDXSCpY7QkouQ6xXo2Vo6uWmbYC6u3qUvvnz6A5TMVNS9vEokLkp
	 WArdp7MgMYJu35fCHfwQOa7Pvmh/yp1Tep0MZQNYqsM+WOYW/LdQgHXSMaAEp/C1r/
	 nym3IxFpUnP+Q==
Date: Mon, 25 Nov 2024 13:44:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, groff@gnu.org
Subject: diffman(1)
Message-ID: <20241125124404.h37pgmy2pxuzxevg@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rhjkd6xbgjmmvdi5"
Content-Disposition: inline


--rhjkd6xbgjmmvdi5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: diffman(1)
MIME-Version: 1.0

Hi!

I've developed a new program (actually, a bash script) that diffs manual
pages.  I find it quite useful for quickly seeing differences between a
page as installed in the system, and the file I'm working on.  The
output is diff -u of formatted manual pages (suitable for less -R).

You can find it here:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dfa4743c43762cc3be4af9672ce12a7ed58f9a500>
and soon in the <kernel.org> repo.

The script is just a fancy version of

	diff -u \
	       <(man -w "$1" | xargs groff -man -Tutf8) \
	       <(man -w "$2" | xargs groff -man -Tutf8);

I had to make it fancier for error handling, since process substitution
doesn't propagate errors (not even with `set -Eeo pipefail`).

You may find it useful for development of manual pages.  If so, please
let me know any feedback you have for it.  I was wondering if I should
pipe to less -R, just like man(1) does.  For now, having doubts, I kept
it simple, which would allow wrapping this in fancier scripts that for
exaple diff an entire repository of manual pages (although that maybe
calls for running groff(1) and diff(1) directly).

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--rhjkd6xbgjmmvdi5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdEcRQACgkQnowa+77/
2zIp+Q//dTBG1imgclXYUXKL1VjV7lmwYtg4U1IFobFffXGEQZD418iT4hGDLZic
pvJ34Qx1IgVtlTha/LLIFvHq//KxkxIrsdQ6linj8SN8ZZshuSHGPyTnIeFVv1PF
+LMJnRRBiVVkwtUVPDhvpqIcCbvWa1gZwg+KFckAEgrUkO3EFYNDkFBWb9t8o8lJ
b3zvCbLCNiEhq6C5uDZxCNJZZAYn3czC7yAL55SyrtFh7X55JMZ7vgQdWCyKJy/8
haDWUhZtYZBKxbO3di2SxwJNuTDvxAbQlzYdDmkHxVikq43kQ2PWA0DllawAQs9N
UqvJV1Hr2V/klVoZokzMfwQkWwDhOBC7HTex0qO2Zx0tDfKmO69vlGY52HgxP5/W
tHismKOfIamGix9z6uoVRaEXhTrSIeE6jsfKXETjjY1wMAo7KgOXYVP0H5NRp75x
wcGT9jja/+6DRbGbJtCraIUw8HnSSfkO5uJtW5+76mGnPQ18sNbtil4QTmmr31b4
mCVd/7gMXatLRrtipEjB0lXL8Uc3bIQv7Hlgi7qfvBdyZCQiy+IHQOGR7Xuttapb
VNjU6cHRCnM6E2sI2CTrGEYuGLa+LZoDclAenS84XOFUQy5PbN8vPsMOv4O15Jnl
Y+C81Nz0T4MfyP2Qc9cjbWZrT565RCG/JB/lqFo9SAz+PZuUwIM=
=QbNX
-----END PGP SIGNATURE-----

--rhjkd6xbgjmmvdi5--

