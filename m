Return-Path: <linux-man+bounces-3070-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E37AC9C25
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 19:58:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBE7E3B2398
	for <lists+linux-man@lfdr.de>; Sat, 31 May 2025 17:58:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA5FA145A03;
	Sat, 31 May 2025 17:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="kPdTK/I1"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288281917F9
	for <linux-man@vger.kernel.org>; Sat, 31 May 2025 17:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748714316; cv=none; b=d6SEUe/q85LvHx5HVOHp2sNkvQO9uAXuT0Vyf5q9RIPe3Y39qEwvNfK6RnouuVGFx6yIagevTEU9ByPRGb8TvlUAkJtHKD3yIk2ZQvu1rGnHusQn/ci+ZiI/hKharfp2B5xLVK0D3gm4yAZhBN288yYJAJKPqhskvlE1t0YkJPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748714316; c=relaxed/simple;
	bh=ItJOhcp1UMe0eSYh1mmzZq3N3IJ9XFbiKsVlAwhj0bU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=anwF6JRQGX7h4CShIP/V7si2Twkf97IqqcZt9LwJzALvZjUIhnIt4rJ39Nr/M6wUr0zC17q4NJhGLaUy4eKis7NOFk4oLm4kuJ3kGh0Xix/2nfqFbTidoav6m1eXkpyO0jWUhyoKPNEINUGRSNATLqymu3a3N9mOnu5yu0hBJ4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=kPdTK/I1; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1748714310;
	bh=ItJOhcp1UMe0eSYh1mmzZq3N3IJ9XFbiKsVlAwhj0bU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kPdTK/I17W7Zwa6g0ZdFhsZT9/FNMD6SojHjZKW0W7sLsNwYcnpf5uYVPzT4FIUAN
	 9IMMQ3Vqmy0JOcMfa5CJ2+v7Q6xk8kecjZDuOxU9woXGfE/cHcPA0Hd5V1mMQPrpN4
	 s+Igm52PBc75nskqMycCXVqL2FYM2vs3+HLExUCf9/dPrEHiygVFnSwq7jCxsHyyug
	 p0jjc9yrhunWcYXrPEMMpJpuMdcBEviPNJiEav6IWegtuHZfd47QOxnw6CfZvD4gZk
	 pshPkyE9S6RGri7fKYVV9oAGgklsa8dsMnpSoh7PhEPEwXXtLrMN2Sl5/6J2garOKR
	 WLyQNBGImO27w==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A93DC242E;
	Sat, 31 May 2025 19:58:30 +0200 (CEST)
Date: Sat, 31 May 2025 19:58:30 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/: Fix name of vm.hugetlb_shm_group
Message-ID: <qyhdcfqk5dgwikvvwj552sumntssctal2bs7ppihsorryt3oko@tarta.nabijaczleweli.xyz>
References: <buticgacol4egbwxw5vr2l7osa3rwhpsw2skm2qfazjrkggkof@ghg35koms4wa>
 <op673ihd4gyc7esgrdoajeer7bsvirf446rcq2tzuk3fkfs7fk@tarta.nabijaczleweli.xyz>
 <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lgzjelf5aoc6ob6i"
Content-Disposition: inline
In-Reply-To: <t67f5vgjqhm7zariy3phlva4lohzchvskkaxeo6qweoaiyifuy@h5dwlwfuzbsr>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--lgzjelf5aoc6ob6i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 31, 2025 at 07:44:12PM +0200, Alejandro Colomar wrote:
> > Fixes: 090fdddb4 ("memfd_create.2, mmap.2, shmget.2: Document the EPERM for huge page allocations")
> > Fixes: 6cee0ddeb ("proc.5: Document /proc/sys/vm/sysctl_hugetlb_shm_group")
> Please use 12 characters for the hash, and include the commit date in
> commit references.
ftr I re-used the format from 6a949e9b08fd1ad4e77584276b9566e45fc07a93;
the Fixes:es from git llog | grep -m100 Fixes: | uniq
vary widely and most don't have a date either.

--lgzjelf5aoc6ob6i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmg7Q0QACgkQvP0LAY0m
WPEbDA//UxIWd05QMCK4dG9+XysU/VnvMunfk2A4phOhHBScwtJuWnL5t+zKBU0V
I9idofa6EtqTbOCJ4GV9gH4Yu39flF3CwCLJrKELDWluicBPWEXgP5FLpsxeuElZ
pNLiqnBkccUh0aFzx2RKVBVSCsvmq6FLE+534ldG6jT1oD67xgVkgJ9FClyM+LQ6
FjSaRSokInqZ/cGFd/dwOT5m+XJT+Fpdm4Sw9aFnr+rpn0amhGnNgwkiTgjCjtoF
ic2gfSBbGRLuKBykJQeE1JhoDNzucwORyuLISJBQmMfIPB6M1h1CxyfmpG11l/YS
HDmEKSKzRrMBhot0kQQAIGl1dbVez5Y7PM6GlnSo8O9Eu9JSOlH29nNhVLCdo9If
O3kXM2zy1i7olzKCpkwbfFDhTz53kYnN2RIBUnfvUNpxAIXbgLRQxSzzyBh0IUhk
RadOEnhOUfeELE7OILBgceHKBRuqlJVeS2pkaBXI/YBeF9A40sz0HIe6saVanqmx
rllYz+8RXJbivnBwMRbB3aAsy/DUEaWJUXiZVRGzsReFPxUddrNDIiNC2zufdbXz
Gh9UMXo2dydfNhxrCBgzzsPZkJLYzaUU/epxufmOZPDR4ACuDVk4IFezWscQkTkc
lfTnjbvw+T9cufkQe/VVBnW3+AhE8YBM2BK6IqpkvgqZ9qxF0hg=
=ue/k
-----END PGP SIGNATURE-----

--lgzjelf5aoc6ob6i--

