Return-Path: <linux-man+bounces-3132-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C55DAD508D
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 11:51:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C26C71888CF8
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 09:50:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB90B23ABB7;
	Wed, 11 Jun 2025 09:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH9HkSN7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B352AD2C;
	Wed, 11 Jun 2025 09:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749635436; cv=none; b=CHt42v4WLLlSg1hJ6/JR/sUCr0AwbvaGE0Onn6YqEpSIhRsDCguhaxSggLzmd0iIG5sH7dBVqKaVpZ0m8Y3g660l6QHJTU/mT+1OYHnmR2faP6oUyX/eR7tc6WIK6q+eTjo0usd+g1Ji2Aozlly8P9CmX7PZoZLI+FUAA0oMrHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749635436; c=relaxed/simple;
	bh=d2odlYWuohn9vOz/r2rICK+nYWZ3BRx7kUUlYEimQdI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l+Rr2bTH+obDBg1MhhzbxvshcbwL6vR2b/ieX037pHrmuXwP7o6/zFrXd8HdwSrNWZiFqim5sY9aX6/Y2C2GOdIfKPKKpbcsW1fR/X41eKDIHkTQ3Aq9BHKm7lvunT9IalfYvEAkDSeCrlQPfXlr9H9v2EeVFoDIGglYvbLeTzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH9HkSN7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13C62C4CEEE;
	Wed, 11 Jun 2025 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749635436;
	bh=d2odlYWuohn9vOz/r2rICK+nYWZ3BRx7kUUlYEimQdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HH9HkSN7TdpRcuMfGp59qshneRzWUIuw/W7dm+Xi7gVIVsaJM2BcHTt0sG6bh/TLi
	 TjjBSuCddjJufT9XJPl2o5rHD5w9OkipxWrVTrt3ymBtDhsXjLVZC95x7UMGLClCzE
	 6tq7xPSbFFPgdvlL+Hv74b9pTHp6JTcKTpBaLej8wAUQQjzxRAE/edl8ahFulgD3Ye
	 YFHpf/pxJAbvLCH/d6ejePF70oDVAveRdiXG7B4rASpzLL6qcqogYtZGyGhIUJ4EDO
	 bPi3bnq1s7aFFkO1mwJCKYZynH8ExbkVJH25V+RoleS2X/a209FjGwNhoEXLG5WOua
	 XsovYh6j4J/PQ==
Date: Wed, 11 Jun 2025 11:50:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v4 1/4] man/man2/prctl.2,
 man/man2const/PR_FUTEX_HASH.2const: Document PR_FUTEX_HASH
Message-ID: <hnghlt2dekdjb34vitzdu3w6zfkrlq64vetaqaj37rk5g4hu4h@m4cmds43h6av>
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
 <20250602140104.2769223-2-bigeasy@linutronix.de>
 <qgp2ueiyfwfd6t3fpwvnryrhnpy6rro5npsqjqzvkovhyawiyb@kl6igspxexqn>
 <20250611084716.xboKOTHN@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3oqy7dsarzc6vyet"
Content-Disposition: inline
In-Reply-To: <20250611084716.xboKOTHN@linutronix.de>


--3oqy7dsarzc6vyet
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org, 
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>, Darren Hart <dvhart@infradead.org>, 
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>, 
	Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Valentin Schneider <vschneid@redhat.com>, 
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v4 1/4] man/man2/prctl.2,
 man/man2const/PR_FUTEX_HASH.2const: Document PR_FUTEX_HASH
References: <20250602140104.2769223-1-bigeasy@linutronix.de>
 <20250602140104.2769223-2-bigeasy@linutronix.de>
 <qgp2ueiyfwfd6t3fpwvnryrhnpy6rro5npsqjqzvkovhyawiyb@kl6igspxexqn>
 <20250611084716.xboKOTHN@linutronix.de>
MIME-Version: 1.0
In-Reply-To: <20250611084716.xboKOTHN@linutronix.de>

Hi Sebastian,

On Wed, Jun 11, 2025 at 10:47:16AM +0200, Sebastian Andrzej Siewior wrote:
> On 2025-06-11 10:43:07 [+0200], Alejandro Colomar wrote:
> > Hi Sebastian,
> Hi,
>=20
> > On Mon, Jun 02, 2025 at 04:01:01PM +0200, Sebastian Andrzej Siewior wro=
te:
> > > The prctl(PR_FUTEX_HASH) is queued for the v6.16 merge window.
> > > Add some documentation of the interface.
> > >=20
> > > Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> >=20
> > LGTM, thanks!  Please let me know when this is merged into Linus's tree.
>=20
> This is in v6.16-rc1 since last Monday. We do regression handling now
> but I think it will stay. I can poke you once v6.16 is out in case we
> need a last minute revert of this.

Thanks!

I've applied patch 1/4, with the following amendments:

	diff --git i/man/man2const/PR_FUTEX_HASH.2const w/man/man2const/PR_FUTEX_H=
ASH.2const
	index 08511b183..b500c943b 100644
	--- i/man/man2const/PR_FUTEX_HASH.2const
	+++ w/man/man2const/PR_FUTEX_HASH.2const
	@@ -53,14 +53,16 @@ .SH DESCRIPTION
	 the kernel will allocate 16 hash slots
	 once the first thread has been created.
	 If the process continues to create threads,
	-the kernel will try to resize the private hash based on the number of thr=
eads
	+the kernel will try to resize the private hash
	+based on the number of threads
	 and available CPUs in the system.
	-The kernel will only increase the size and will make sure it does not exc=
eed
	-the size of the global hash.
	+The kernel will only increase the size
	+and will make sure
	+it does not exceed the size of the global hash.
	 .P
	-The user can configure the size of the private
	-hash which will also disable the
	-automatic resize provided by the kernel.
	+The user can configure the size of the private hash
	+which will also
	+disable the automatic resize provided by the kernel.
	 .P
	 The value in
	 .I op

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D243de1dbc9cf818fa71c97856cbaf88b9d255b44>


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--3oqy7dsarzc6vyet
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJUWcACgkQ64mZXMKQ
wqn8rA//dN6Sl+Qyjd5/9qDPrig4jxxKrBPBHk4lY39dYa2M6DPQpBP3TFO5rWXg
lT4wA1mhUB65y2syN9rc/8N/biZiWvgygHsfisV4pbK0nBP34hv8JlFy2wbWxzbD
fVmz0xhG6VblJKDU57w7b0PKG8FfgNld/gmvPG5l3OHqw/gU9Rmomd1ktd6m3ldl
5C2gp3ZZbzyYNEYmhoGgFKb/dau9UQ9snNd66mYU9ybgAmqyKaBs/8iCQgyGUZyb
Rq5aQxXnE1FpdSMXyzrqCjgZVR0Q+jg3A7b4hr0ee2Zu4zUeL+NB7yV4nMDDfkBX
Iqitk4YYvsRgx6n45s79aHX8MRdJ7k0yRq4fRVFdilQcfii68n7lrGQIYYu/BWrt
7HxTEGpE0MX56PDSganZpABnKgELh3KJQTCVZUBym2zheKQh5AtMgU+sqAlgOqAv
YwAY4vB9nlV47GKYcFYN8ckKb3bDqFzC/BDy1BhRdIeu8lSpEevMBHSNeDXPleiP
9mnsyl9liFHvwSbuG4FbXZPShLY6Jd9OW56OW39OvJuwwWfMTtjcPqVhJEbFfp6a
/mRqv/8kKtgBoFTLjsYyh06NmhKTPqUIhzaYryE3X8VgMuBnEerbjH7TDCsc+0Sh
zGG093WY4kHaIL7uG/W0UfbyJb4BPuYyKoXoqnfXP44liXQGK8g=
=/cnx
-----END PGP SIGNATURE-----

--3oqy7dsarzc6vyet--

