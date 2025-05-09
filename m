Return-Path: <linux-man+bounces-2880-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD4CAB1500
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 15:27:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB8AC1C464E3
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 13:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9885B29188D;
	Fri,  9 May 2025 13:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sk2.org header.i=@sk2.org header.b="HsZARZ6q"
X-Original-To: linux-man@vger.kernel.org
Received: from 7.mo576.mail-out.ovh.net (7.mo576.mail-out.ovh.net [46.105.50.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A826BB5B
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 13:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.50.32
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746796911; cv=none; b=C820AyDWnx9mAQnawQCkery9JC5a+nWX1cnoVuNxJylcQyeetE2Io/tBMEjduVpC0fkNlyaoim8Ymb4HQJ4ka7fdCr3yfLdEdxhYvWyp9pd4ugQzBYJKVb1YOUzWTMO+D+CpBUthXtN6Tafrtb/BZ07D0iioiSy11NMAI+T24eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746796911; c=relaxed/simple;
	bh=dg7Z9wrqo3miX1RHONskTEUN2sK4uHY8rAAza1ZByL8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nPtoMmxwFRjUcQK++RugD4VHFOaVcwBbZI2DYPIka8MKC8X80ltPfMPBOfFvVBf64QBtM/MS3IJ0TwrFSRlQiDrF+1IdLhodrLYtRcj31gQEvKk7T6FtWKuED7g8PVfDmIZSb8YtWFpj/ubtwT4P6upgokBmge4o3HIyGNaKrCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sk2.org; spf=pass smtp.mailfrom=sk2.org; dkim=pass (2048-bit key) header.d=sk2.org header.i=@sk2.org header.b=HsZARZ6q; arc=none smtp.client-ip=46.105.50.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sk2.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sk2.org
Received: from director7.ghost.mail-out.ovh.net (unknown [10.109.148.38])
	by mo576.mail-out.ovh.net (Postfix) with ESMTP id 4Zv8Nz5gYmz28g8
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 13:05:07 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-c594s (unknown [10.110.164.228])
	by director7.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 5C6081FD7B;
	Fri,  9 May 2025 13:05:07 +0000 (UTC)
Received: from sk2.org ([37.59.142.109])
	by ghost-submission-5b5ff79f4f-c594s with ESMTPSA
	id 4YXWDYP9HWgrpwAA2RPGTQ
	(envelope-from <steve@sk2.org>); Fri, 09 May 2025 13:05:07 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-109S00340232c21-63ec-4356-b6ab-5ce11865c3c0,
                    8ADD276010C6621F5FBBBC8B9033BF5DACDC93C7) smtp.auth=steve@sk2.org
X-OVh-ClientIp:82.65.25.201
Date: Fri, 9 May 2025 15:04:59 +0200
From: Stephen Kitt <steve@sk2.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, "G.
 Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <20250509150459.06f9fab7@heffalump.sk2.org>
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
References: <cover.1739389071.git.amitpinhass@gmail.com>
	<c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
	<wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
	<20250212230210.3kkixsk7bi3cdc4d@illithid>
	<lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
	<gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
	<20250408124238.2gbis6jq5pdz7yoi@illithid>
	<7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
	<nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
	<2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.24; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/wfK8Ek=PCZ8EoiJIZmdtH1j";
 protocol="application/pgp-signature"; micalg=pgp-sha512
X-Ovh-Tracer-Id: 18267444515521922694
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvledvieelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkjghfofggtgesghdtreerredtjeenucfhrhhomhepufhtvghphhgvnhcumfhithhtuceoshhtvghvvgesshhkvddrohhrgheqnecuggftrfgrthhtvghrnhepgedtieevheduudejjeelheetvdejudehvdejudfggfetteekffevvdehjeekkeefnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepuddvjedrtddrtddruddpkedvrdeihedrvdehrddvtddupdefjedrheelrddugedvrddutdelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehsthgvvhgvsehskhdvrdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheejiegmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=yfOCEf2UqxENFLaWZaiFg0UWmou6+dhdnQNz5MfEhJo=;
 c=relaxed/relaxed; d=sk2.org; h=From; s=ovhmo304764-selector1;
 t=1746795907; v=1;
 b=HsZARZ6qO+RrOS6ZhrlGdgJ7dUvQ8lXZffX+Q/8jT4Xaza1XxGNTOQzFUcU2nuFFaM1ZGMQZ
 vIxAEANCTn96s+ZxORuSe0K5jNu+1hx1IoyA/vX7lD9ho0A7sF8ccWBFcouQhlvJbEE76CTbvDQ
 D3Gp6ATrU8dSRrRr0acAgnp4nuAvcSMtMtTBVtuGij5Jn/goWe99crVjqc3E7uRuzOgS8yJt+YW
 we4sD4XVThz4uAzS0BOJOInx/HAQlKweb8NLtWj0woS4cwm+G3BcuQef9z8QSNJNJNUCwHzGfr4
 cr9QGnJU5WxhPn48Gn95Na1/5AqUfaITBhzs24sEOaqvA==

--Sig_/wfK8Ek=PCZ8EoiJIZmdtH1j
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Fri, 9 May 2025 14:54:31 +0200, Alejandro Colomar <alx@kernel.org> wrote:
> I've added to BCC everyone whose copyright notices have been removed
> (those that noted an email).  The full thread for this discussion can be
> found here:
> <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznr=
udgioox3nn72@57uybxbe3h4p/T/#u>
>=20
> Please let me know if it's okay to you to transform your copyright
> notices to make them uniform?  That is, do you approve
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=
=3D9f2986c34166085225bb5606ebfd4952054e1657>
> in what affects you?

That=E2=80=99s fine by me, I approve.

Regards,

Stephen

--Sig_/wfK8Ek=PCZ8EoiJIZmdtH1j
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEnPVX/hPLkMoq7x0ggNMC9Yhtg5wFAmgd/XsACgkQgNMC9Yht
g5zW7A/+OwAbF+c3USJrZm0eDwvG6fePuDHwWupxqfMLNaWu4D7g9z/49pQC/21M
tBYL3ZgnnzTzaTXKeU0vb4iw4rBQPu7C2ei038udQB8Ad2H0kxd2aEq8cZbaSkJV
eJipWUJrgbW1jKOQZcDoM7SZPSJb5DB0QlHgdQ2pUJICDD4xSQvh3wxFsA1ZG/8V
jlfxfjVh3JlR70tehmQ1r5hJ0h5zk/IcPgF3HoYmNar6qZ5Wpy8xnKAF7LR9fn1t
JUwQiWsTtratTsU8I5zqjj6owzqC8ALlyBVF+c864K2zGBGwK1YGnJmkvlW//1iL
je98U4bU61xOCms2x7OVU/M7ihyDyPbbovBtT+UdtFyT2xARg9uLvglWBJRbatDL
2EIW/qSB6GwhYUCArr/qzUn8UhMrVMXHYgXUW4lguOfIpjuDBCStFk+yK81BV/b7
6bUzep9Gc1rsPUTc2NKUfxsz3OkjrEBnZosTTzSWcqic9gHURHCBDh1SWhxp9jmD
TiQEUqGJaoj8f8NrJgeJ4aXl1lAsf+upvBjjXEZ9oWVKZmenXkP2ukChFcYNn3OL
JSYfnLTLqzdWUHSSxo/dubU7Ng+RqJoiCys94u17moM4cnq25sYSSCkcynu68p7g
w3E4TBLGkRgWVsvUsM1yXq1ACHNV1b8orcRhOOVCqd2lDdWgNNU=
=gT3T
-----END PGP SIGNATURE-----

--Sig_/wfK8Ek=PCZ8EoiJIZmdtH1j--

