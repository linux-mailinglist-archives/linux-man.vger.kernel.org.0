Return-Path: <linux-man+bounces-3926-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CAAB8DB52
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 14:53:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21C7617D966
	for <lists+linux-man@lfdr.de>; Sun, 21 Sep 2025 12:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B837259CA3;
	Sun, 21 Sep 2025 12:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RU3JMWVL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281511E51D
	for <linux-man@vger.kernel.org>; Sun, 21 Sep 2025 12:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758459214; cv=none; b=gbHHL8ydvriSHmlXEU372yen7zmfeJvOFihe28z+kqCXJHRYwungv8sYfMWr12pwe1/K7ZYjq79Z3LtU6am8NJtrFejCTYQYpH9DH1UC515c3AaL7lGQ9ctprMsJpGKaeCf12npxRfSi5y4iYNMChW2lSw9gx+5s3MHOzE0dLwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758459214; c=relaxed/simple;
	bh=i4VUOH9tDZJTp9C2wY3Y90qNXl3JqB4/Ff/Pb9snCg4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=awUlzEf9Ph2gwkkKqOINFufxAr/5v1uXhDZ9FId9uHPyiLa6QMEWhzKHRmh7E81JdirzK/yxYXvDSq9nWNqSTrgEiZ9T7JW6LZ2h6PRIKsgFtp2KFxm05uqbgnwfSRFfCYe773ujsDQ3bATS+TzdYcB38CAEtAWDg+HiptEA/V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RU3JMWVL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7605EC4CEE7;
	Sun, 21 Sep 2025 12:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758459212;
	bh=i4VUOH9tDZJTp9C2wY3Y90qNXl3JqB4/Ff/Pb9snCg4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RU3JMWVLquvsr6kFeL1J0jk3ipzlJys3SjK9t7By4sGvbJVu16f8WeCC4+1qD6chK
	 TWxSraXuzpB3HOFXWRPqlpwlzNkv7s/LBK8iWpO0Wh8/DSWl5Kb0BQG7zk7rVfgrRK
	 RULcQCC/neahDSb4+7LVDbiQuV9icbFMD16aFaKVg6/L0JNwPDgDmujHHDvTlYt0Z7
	 GM6NgDmpPr//wrwjRp7TN7+lxq37cXVMpBphadAk7wHD7CdS0eWALp1+9k7AGmdC+2
	 7gtZ5k6S2E44xRNKWuQ3uTuznwivTvSAz6ZtisVFDfNHuylgeR9l7mNK5kpuLOrLj2
	 vuZsClYDD+yVw==
Date: Sun, 21 Sep 2025 14:53:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="voug3ik35byt35zu"
Content-Disposition: inline
In-Reply-To: <87jz1sm2t3.fsf@aarsen.me>


--voug3ik35byt35zu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
MIME-Version: 1.0
In-Reply-To: <87jz1sm2t3.fsf@aarsen.me>

Hi Arsen,

On Sun, Sep 21, 2025 at 02:02:16PM +0200, Arsen Arsenovi=C4=87 wrote:
> IMO, docs should not be outsourced from the project they correspond to.
> Doing so makes them harder to install and keep accurate to the installed
> version of what they target.

I could maintain them within the coreutils repo, if that's preferred.

> > I understand GNU's stance on manual pages, and that you might not be
> > interested in improving them much, but maybe you're open to them being
> > improved elsewhere.
>=20
> It's frankly better to improve them inline.  But I'd rather see us move
> past the woefully inadequate 'man' documentation system,

I disagree with man(1) being inadequate.  :)

> for instance by
> providing an info viewer users are more likely to find usable (though, I
> struggle to see why the current standalone info viewer is so
> problematic, especially since I taught multiple people who got the hang
> of it fairly easily).  Installing pages with a richer markup (HTML
> perhaps, or a new format that can be easily rendered on-the-fly to
> reflowable text or HTML) would also be nice.  The current format is one
> of lightly marked up catfiles, and so isn't great in modern
> environments.

I think what you don't like of man(7) documentation is man(1) and not
man(7).  A more featureful man(1) viewer could be developed, and some
people have attempted to build one, where key bindings could for example
show an index of a page.

Jumping from one page to another will also be possible soon, with the
recently added .MR macro for manual-page references.  (And in the PDF
book, we already have that in old pages, with some heuristics that work
reasonably well.)

> Given that coreutils manpages are generated from help text, adding a
> paragraph to the tsort help text would probably suffice (see sort for an
> example).
>=20
> > The Linux man-pages project already documents the GNU C library, so it
> > wouldn't be extraneous to also take ownership of the coreutils manual
> > pages.
>=20
> And it's a source of problems; they don't always correspond to the
> installed version of the libc,

That's not very important.  The manual pages keep old information, so as
long as you have the latest pages, they're good for whatever glibc is
installed.  Of course, we are missing a few pages, but there are few.
And of course, if you have bleeding edge glibc, there are more chances
some details may be missing.

> don't get installed with libc, and have
> lead to the actual manual being somewhat forgotten.

In general, the manual pages are more accurate than glibc's own manual,
as even some glibc maintainers have acknowledged in the past, so I
wouldn't worry much about this.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--voug3ik35byt35zu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjP9UEACgkQ64mZXMKQ
wqk02xAAmr+AqU2FxSwGqalyTzIny6BpqDWVxyErJyGt6N/jNQ++N6Cizd3bKFyQ
YUOH2guisN0kEpGhWuKy+OV0IvI7+LRRhodFAuOEahJrjBzR4ZX8GgySyOhjY7b0
bfYa0xZLwSbmT/4Jok4nvAdVBvgLvi0WLUSFygPs1VZL7+GsOyJW53MCdHHRJSqk
pXqi5brpT2egAPRtMROzqv4W/t3vmnDcnI1nT8lPwpFq0qnnjW9iMJbK1fV7tDGA
RXZkDFgGAuecCY9FJUSSKuyBMbYwfCUMD/kgNmMsWQ7Tmfl2qxxrCg5L9W3lJdmU
zR9k+vz9xd0H3STtPxzeILcM0RI60ht1M8S80CqZkFeopSbdGSJ5LsucZX5agoIh
ba2OyJ6+5nNgZlpu3sW2DrcJqWXCb5wMTz8aazNhxRbC0u8VvCGsi5UKmCNErVoc
0XYDymSf8jWtXkxiwqqewjnirCjavF7Dlec/qqgTAtnO6o9lAWdQK70pe/SaBzwF
OErNcYPLFl0dXfSsp50+hmksz9lJCm9oMTAIEAkuEsVt7hDQS1Io5KVPVDrjYo/Z
vVnrhB6IFkV/2AV8ZBJAnV4rXYWUgLI7cBI5rjmCXvTqfN+a3D8rW3BHHrw58U0+
yynMHjqFNDr3klUdbiRDiqPNycm5or+g7wjGmPtqqKjvVTTcmGc=
=//19
-----END PGP SIGNATURE-----

--voug3ik35byt35zu--

