Return-Path: <linux-man+bounces-3356-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B22B1C752
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 16:07:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D14C63BBF27
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 14:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB4D128CF44;
	Wed,  6 Aug 2025 14:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="Iu3MXqIg"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89777215F42
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 14:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754489239; cv=none; b=ZWCRcuShBNWV3/tDYRsmzSWlZxVmzljq0QYNvrBvdtpsjUNMXR9X8yu2/KM6yCWfR9tdLkOKd5NFakXFIBXzJSHX/16KWUszYeRl/SiMRnNxaCNWX0bB7TPYRBogoAhqOW/WQqQbYaosjbKsZN3NwCcSKlTvYPWr0su2aEo/9RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754489239; c=relaxed/simple;
	bh=/rDtMl7DM2oCYXOm5PM1EzixopaMoFBNQf83nFkrJw8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r7CI0ybdqTEIBxRTn7w8pNkIx4y+UHjXKiQr8t9ni+s9eBjRGA9rHfOo5Ngamw2rHNP/oaucDizy+4tZfOkJyux44UDiYfIL24Nq/hT8AA1+k9RcJf8iFD4qEJI9G2jldUvfeGDJg3AyBBm9fHs1RyU4EB5nAqeDN+K5iZvid8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=Iu3MXqIg; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4bxsYY3K1Sz9sxp;
	Wed,  6 Aug 2025 16:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754489233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/rDtMl7DM2oCYXOm5PM1EzixopaMoFBNQf83nFkrJw8=;
	b=Iu3MXqIgJfkzjovldhqlGpMzRo9V1oQ2+97A51bvN7Uhe8udXVSJJExvbNdMEhdnLNLUDu
	U+QQfYJdjVBGMrxTLHxzIwVL79wah/Z3quoihLVrszlh7n5xphSJ9b53Pee+2WqOD9ts3K
	PE80Ic6x+ZGUGCwYSMowBWhYckkRpWWkulLPFzqOu4+A44adhIu3qtWQlbvbGmN86Z85H5
	29LArvZmKqC8CAWcYObvcH403lSu2RDN7j54obAwRn3oENklpZsHThIwTu2/N4PtiIyQT6
	+LtQRSgrjrsN3luLJuW5rTcL563vfu0KTTlF9JaT8mFHWB16KycRE9osFW0TMg==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
Date: Thu, 7 Aug 2025 00:07:01 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Askar Safin <safinaskar@zohomail.com>
Cc: alx@kernel.org, brauner@kernel.org, dhowells@redhat.com, jack@suse.cz, 
	linux-man@vger.kernel.org, mtk.manpages@gmail.com, viro@zeniv.linux.org.uk
Subject: Re: [PATCH 06/10] fsmount.2: document 'new' mount api
Message-ID: <2025-08-06.1754488782-endless-dots-niche-snooze-unloved-bishops-EH5hxK@cyphar.com>
References: <20250806-new-mount-api-v1-6-8678f56c6ee0@cyphar.com>
 <20250806120438.83633-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z2gebgfnu37v5w62"
Content-Disposition: inline
In-Reply-To: <20250806120438.83633-1-safinaskar@zohomail.com>
X-Rspamd-Queue-Id: 4bxsYY3K1Sz9sxp


--z2gebgfnu37v5w62
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 06/10] fsmount.2: document 'new' mount api
MIME-Version: 1.0

On 2025-08-06, Askar Safin <safinaskar@zohomail.com> wrote:
> > The resultant file descriptor acts the same as one produced by open(2) =
with O_PATH,
> > meaning it can also be used as a dirfd argument to other "*at()" system=
 calls.
>=20
> This may be interpreted by somebody that fsmount returns exactly same fd =
as open(2) with O_PATH returns.
> This is not true, because, for example, you can use move_mount with fd, r=
eturned by fsmount,
> but cannot use move_mount with fd, returned by open with O_PATH.
>=20
> So, please replace "acts the same as one" with "can be used as one" or so=
mething.

Well, the slightly odd thing is that technically it _is_ just an O_PATH
file descriptor (ditto for open_tree(2), even with OPEN_TREE_CLONE) --
they are constructed with dentry_open(O_PATH). You can also use regular
file descriptors with move_mount(2) to move around (attached) mount
objects.

The only thing that is special about fsmount(2) and OPEN_TREE_CLONE file
descriptors is that they are the root of a mount *in an anonymous mount
namespace* and the mount infrastructure has special handling for that
(on close(2) the mount gets unmounted because of FMODE_NEED_UNMOUNT, and
move_mount(2) permits cross-namespace mounts but only for anonymous
mount namespaces).

I am not sure what is the best way of expressing this -- "can be used
as" doesn't quite convey the fact that they really are almost identical.
(Also, I guess you'd like the text in open_tree(2) to also be adjusted.)

> Also, please, replace 'to other "*at()"' with 'to "*at()"'. No at-syscall=
s were
> mentioned in this paragraph before, so "other" is not needed here.

Fair enough.

> > /* Create a new file without attaching the mount object. */
> > int tmpfd =3D openat(sfd, "tmpfile", O_CREAT | O_EXCL | O_RDWR, 0600);
> > unlinkat(sfd, "tmpfile", 0);
>=20
> You meant mfd here, not sfd.

:facepalm:

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
https://www.cyphar.com/

--z2gebgfnu37v5w62
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaJNhhQAKCRAol/rSt+lE
b7v4AQD9171JP3+XJLEGOjZ6TI1Ylq9oSg9ubj0qIsHe5gwPvgD/eCQnNKoGFK8C
CkmLV762+gubRdsu6FklHlhLrUqVZgI=
=qgR0
-----END PGP SIGNATURE-----

--z2gebgfnu37v5w62--

