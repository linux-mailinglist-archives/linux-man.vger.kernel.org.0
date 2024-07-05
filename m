Return-Path: <linux-man+bounces-1337-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC04928DE9
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 21:47:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F2321F21C95
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 19:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5109371B25;
	Fri,  5 Jul 2024 19:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKjsxRF7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D6281E
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 19:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720208864; cv=none; b=S3TiT7WIhGLQ7gNGFwYnjUG6td8ksVGVFfNacXM6gwVuiPGm+4BLOSwOOy6cHkxvT64EPeYTp85pOGg0CerYPzm7xK7VmGcmMG7JCfh0ZWWW850HFKLJWJHbQx4AUrQAufb6bRVAf5981qLAZn5GJHYKHJRyXVfSACQv9p+OLTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720208864; c=relaxed/simple;
	bh=osGpWKCIPL/jT9j255mQoX8PONGxbyE/oRMxWckgiH8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L7l/cnx1JO+HZp5Jaemg+2QPY74rVxwGmPMsJ/SRuw39QWqiyKLI/PAnu1vSfWU8S+alZZrT/QeSU/7tOBUcdHhxTZ2hNAo/KnD0HSZmuRScUF+gwS7MG7RVxQPCheZkYBe2GzmHqgKi0H2/ZpIXRpLoZO/1gPPJgtvaFC0GRM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKjsxRF7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91DE5C116B1;
	Fri,  5 Jul 2024 19:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720208863;
	bh=osGpWKCIPL/jT9j255mQoX8PONGxbyE/oRMxWckgiH8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eKjsxRF7mk/okMJEXvH09QWVkp1PGKIAR1oAGO+zvQE8VZc3rTe/kOhoCGnIRrgDE
	 +4bGzeeRYhseq+La5dZTYvv9FN0ZVeaNsPsbPgmIzjqjmmqX4wnpWZZ2QKuoiWKOI3
	 iTLgqDEW9y8zVt7ZRSZCAihah0HekpZD/M7IYGdzGU8q2sk/lf6XW7+mPHBY9DOZWT
	 pxaOm1doVWB4ouEaYJz3MbsHUPw5FDC3nHGtr/tq3thOv4c3U3mkMsETClCmHH+cLT
	 2PVT0FRj5PRGgXAnR3N5T3P02bToLFfR6SEv6rXPQWgfkLw7zeBDjQ2UZ0Visl76QS
	 kf510bMXfY6dg==
Date: Fri, 5 Jul 2024 21:47:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <2naeq6y7bllpma7zsonkpm2kcptiyubtacgluyb4dehdcvqys7@7byxskyncxqf>
References: <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <CAH6eHdSM3dKvonC9YOhSpasvXukv-wmswrcr1g4LR58h203cdA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t5vispxibsv3gg4h"
Content-Disposition: inline
In-Reply-To: <CAH6eHdSM3dKvonC9YOhSpasvXukv-wmswrcr1g4LR58h203cdA@mail.gmail.com>


--t5vispxibsv3gg4h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely.gcc@gmail.com>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>, 
	Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, gcc@gcc.gnu.org, 
	Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <CAH6eHdSM3dKvonC9YOhSpasvXukv-wmswrcr1g4LR58h203cdA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH6eHdSM3dKvonC9YOhSpasvXukv-wmswrcr1g4LR58h203cdA@mail.gmail.com>

Hi Jonathan,

On Fri, Jul 05, 2024 at 08:38:15PM GMT, Jonathan Wakely wrote:
> On Fri, 5 Jul 2024 at 20:28, Alejandro Colomar <alx@kernel.org> wrote:
> >
> > Hi,
> >
> > On Fri, Jul 05, 2024 at 06:30:50PM GMT, Martin Uecker wrote:
> > > Am Freitag, dem 05.07.2024 um 17:24 +0100 schrieb Jonathan Wakely:
> > > > On Fri, 5 Jul 2024 at 17:02, Xi Ruoyao via Gcc <gcc@gcc.gnu.org> wr=
ote:
> > > > >
> > > > > On Fri, 2024-07-05 at 17:53 +0200, Alejandro Colomar wrote:
> > > > > > At least, I hope there's consensus that while current GCC doesn=
't warn
> > > > > > about this, ideally it should, which means it should warn for v=
alid uses
> > > > > > of strtol(3), which means strtol(3) should be fixed, in all of =
ISO,
> > > > > > POSIX, and glibc.
> > > > >
> > > > > It **shouldn't**.  strtol will only violate restrict if it's wron=
gly
> > > > > implemented, or something dumb is done like "strtol((const char*)=
 &p,
> > > > > &p, 0)".
> > > > >
> > > > > See my previous reply.
> >
> > That's not right.  See my reply to yours, Xi.  The restrict in
> >
> >         char **endptr
> >
> > already prevents calls such as strtol(x, x, 0).
>=20
> That seems to contradict footnote 153 in C23.

Did you mean a different footnote number?

Here's 153 in N3047:

153) An implementation can delay the choice of which integer type until
     all enumeration constants have been seen.

which seems completely unrelated.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--t5vispxibsv3gg4h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaITdsACgkQnowa+77/
2zJzyA//aXrEoeQC8e2mUEjPlgX8RtGpK+vffsVmHCwAP+7Qbu6pFuorkaTMdDZx
ee2w695gzskSvEapxp1CMW7YKHWCJacpocP4EzGXIQHtGjbWI7NQ76KyPHNjL4ZH
PVT3eS0Z7eE8RSjurr3eKrZSig2ixXKVPZ2ZvsoAqWc8+4BqOtv3Ox2l22GiL9Cj
5RjMpdZyymNR76+ly9xFBZv/GvBAFXHfYXrc0AvenzvVnXQ6lwfbWXyCDo0M712f
KQYcAbLQA6PNOxVSLMlUX2TtzaPBlqwV379bLNErHSoPWP955nE6vWhMC4HVF5UC
wQmIt3idE9mWkGe2naeNwMlbnDfeOYoRZRFet+EKWYcdhPe05yfPl5/Mc4AEggjq
f9UWh/K7k++deHk1hSi70Q+tsvvVJ5kbVPk/nVDFsaR5d1PGIujhV+tquzKKY2r4
DAMF3eFsDjAxBt4l9Zk7vbpthdu+FWVduxXgoFGEc1wI1oqUhElEXIrMURsPOZ/D
dAn7hgEe+UQLx1IuV7cYfCOvkQd/UjTsUTgvnEviMw41+YT5ANYLVgb4P8iHyiBC
yXp6VXeG3rSJwLYjlFJlqB8ihcBTXKb5+W79GEa23mUh3uhjA1udqmB6lmjL+u7d
hUEIRMNMFwXdpPgqnfheC4IKfQkwt1zF4x5SqlE6ZMku1t0s7q8=
=YauB
-----END PGP SIGNATURE-----

--t5vispxibsv3gg4h--

