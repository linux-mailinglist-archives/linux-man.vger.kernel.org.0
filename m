Return-Path: <linux-man+bounces-731-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F108A00F8
	for <lists+linux-man@lfdr.de>; Wed, 10 Apr 2024 22:02:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB9771C21A7A
	for <lists+linux-man@lfdr.de>; Wed, 10 Apr 2024 20:02:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51B8918133A;
	Wed, 10 Apr 2024 20:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdF8gQne"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114EB28FD
	for <linux-man@vger.kernel.org>; Wed, 10 Apr 2024 20:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712779360; cv=none; b=Cwxx5QuQEG2oo93i79svYVQKghCkVspRPGg4qZRXRY3WBlnt7KZDK+rMv0dJE48dqWV9n87u7GWocY/zFdaRgPvLDTnbmXQZSAAx0Gxb8k8TRHi2dujhMZHjoqHrvnjazxrSQohL05YudyRAY4QclXwzE4Ra7SWKA3wOt74rbwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712779360; c=relaxed/simple;
	bh=6cfGZsQxl72W1CgUIksWLB/pb4UPAft0MfYFUGcDdhI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RvapYzFz4UgTf+QXuIYP8RMiffYn5//FJukneYKU+HhzTjVOR3gmOWs8kYFpkio+oGje5dvK8TARhwjLP1t2W+900mAdIzm2EshTOy1cMfgKrlsqkzS6eQxJfg9uDCGCNTW1LQbIzkoGbWXyCFixvy4i40JfvQD+QCwD1qQtC/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdF8gQne; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE8D1C433C7;
	Wed, 10 Apr 2024 20:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712779359;
	bh=6cfGZsQxl72W1CgUIksWLB/pb4UPAft0MfYFUGcDdhI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QdF8gQneItJafBNwkUZoLp01PD4nmQZFx1kiaSoGloyemMlNAZaicXP2H2DESEfap
	 uFzJVYmq2VLkSkGrO8+2jc8bUJVWbtlmNvN8tAzFVADlF6uR4a+/3jaTDgHtXkIQck
	 vzllDJLQLQuzoZ2VI0R78KzyCUEzyW7vPesWSRTVrFQcMHKYOa6EtBAmuv0a6KH106
	 PJ+lHu8cUFCgAEHEzhUNbaz2RlZaklNprW+5kpR0hLLzsNFPYM5HFvqyV426XaCwiA
	 Qd6xJ79KIh0OmloEkBYeCxHjszRj5BERypdBaIa+AKE5OcrLN1XZ5NcfjLBVjjvxR+
	 JpJtT0Kqxnkpw==
Date: Wed, 10 Apr 2024 22:02:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Walter Harms <wharms@bfs.de>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: AW: Release tarballs and security (xz fallout)
Message-ID: <ZhbwXNkjEs7_86Qc@debian>
References: <ZhVe08clpdlkrwpI@debian>
 <2e29520d16d94e0ebd0f1b158e7b7715@bfs.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KDgFVeqi3jDc3WiY"
Content-Disposition: inline
In-Reply-To: <2e29520d16d94e0ebd0f1b158e7b7715@bfs.de>


--KDgFVeqi3jDc3WiY
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Apr 2024 22:02:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Walter Harms <wharms@bfs.de>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: AW: Release tarballs and security (xz fallout)

Hi Walter!

It's nice to hear from you again.  :)

On Wed, Apr 10, 2024 at 07:26:06PM +0000, Walter Harms wrote:
> hello, here my opinion ...
>=20
> I followed the xz hack and the main problem (in my view) is that the pers=
on
> (tried or go) write access to the git archive. In that case it is game ov=
er.

Not all of the evil files were under git.  Probably because it would
have been too suspicious.  Some file was injected in the distribution
tarball.  This is what I'd like to preclude by not having tarballs.

> Normaly i run a tar vtzf BEFORE i install a tarball (more to make sure th=
at
> they will produce a directory and do not spill everything in my home). Th=
at is
> be no means perfect but it helps a bit.
>=20
> For the man-page project i can imagine a 2 tarball solution. One for the =
pages, and one
> for anything executeable, so i can use an older/trusted version of an ins=
taller, but

This could be interesting.  But the repository is probably simpler to
use for everyone.  And you can do partial checkouts with something like:

$ git checkout vX.X -- share/mk/
$ git checkout vY.Y -- man*/

so you could use an old build system with newer pages easily (I didn't
test the above, so it may need some tweaks, but the idea is there).

> again an "evil maintainer"-attack is - as any suply-chain-attack -  hard =
to notice
> and even harder to prevent.

The thing is that if I don't create a tarball, there's one fewer step in
which an evil maintainer could inject evil stuff.

If downstreams generate their tarballs from the repo, then an evil
maintainer has to commit the scripts into the git repository, which can
be more easily tracked.

If the tarball is generated by the evil maintainer, then it can inject
any evil files without having to do any commit, which would be harder to
detect.  You'd need to check the file list, which isn't short.  In the
source repo, we have

	$ find * -type f | wc -l
	2875

You could ignore the pages, and diff the rest to older versions, but
that's easier to do if you can use git(1).  You can also regenerate the
tarball yourself from the sources, then diffoscope(1) it with mine.  But
at that point, you've already generated a tarball that --if all goes
well-- should be identical to mine, so why would you want the official
one?

We'd also reduce the need for compressed tarballs, so less dependencies
on tools that seem to be dangerous these days.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--KDgFVeqi3jDc3WiY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYW8FYACgkQnowa+77/
2zLeYA//YNDqHOW+PXti1wclUGv5b8s3aLBGmmjOwxQMAy4W59YCSe+mDju30v7d
l+8Kxvf0bQ/nlnbycjxoRE7nc5ZqvX8RCmj/8JDA0fL0ruHqnDoEt11Bpg0Q1kU0
kG/m0ckGw6U2QbYVA3cdKMnMfJcANxdfm3RKIs+6jUsHlLF+f1Lg8UFZ00UYLS4S
Gy8K5l/3t7fYSJPg7DsfoqiWldEbP2zTx/cBaEDqhkvR1RFAgyUyix8XKy2q3rA5
87TFzGFVnGoqsvIiJpuhx4D3KfW8HhulFcuMUA/v+cUJYL0Hi/x/MIL76yXHqFIf
6JhmE7R/n/4KUHFqdh5JbDgMtaP2QO84clfVoYdrxYQwQn9tV9OL6CS/U6N0N2aj
jtX+GxOfgYGZnz6wL+9miTAeDoY+sxbQMf1Hk9vIQd5eboi08jY4/J2cnqCq8rJQ
sVqOuurqTvxxY4sTfU88ENW5XXKNhOTHPFAHY5DJaY7i2YwyfzWi8dbVzXhyJo10
f6bJ0BAQQ/wjPDqqM1Z4X/slzu/wp/tUVq76gzk4kS3UriCJlbwjKx4bZUpw72ha
gxZTJmB7Bn7ek4uQXQVh8bhftzhB63SzxJ9bi1VDtHfHZGjcz+5pstCeyUPbjmvz
jA+euJTEF5uBMDntEIVFhWVNpr8lDgewnOQXRj+Xhp+XlkqnaCU=
=WEG9
-----END PGP SIGNATURE-----

--KDgFVeqi3jDc3WiY--

