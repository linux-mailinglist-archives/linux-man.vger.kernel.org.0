Return-Path: <linux-man+bounces-5131-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KtCGtNqkGmAZQEAu9opvQ
	(envelope-from <linux-man+bounces-5131-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 13:30:11 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D53D913BDC5
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 13:30:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C494130094EF
	for <lists+linux-man@lfdr.de>; Sat, 14 Feb 2026 12:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AE241DF987;
	Sat, 14 Feb 2026 12:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJe5dGIO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36CF2D9787
	for <linux-man@vger.kernel.org>; Sat, 14 Feb 2026 12:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771072205; cv=none; b=BPjHOLxAReg+VMxLBdcm+9x7cdFw/X9glMtmq1p3pAodydWNvMXNVW/VxcWYLNdy9CgtuLjW/U2Ah8ulpk+yW9UEgKqAXAjLFPKkSLmexAUW5ErB65uYzoVHFL7Bw+l+ysPxtTnSWmVsdj0uaHuBwYSNIl7v5SsOfCtSbJuvRuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771072205; c=relaxed/simple;
	bh=BV5hzzc3YYuaJhfIsim8Ojs1tlvUwvAot4Xr9hKNgK4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XW2EdNaTrQtGeVpIUg7125mJMDRgI2FQ7opxiTN2Z5Bct6qOH8yeAUBzEkdyDK8iHKGONOXQOCda6tZ8oKAWuDjX+fvOZxj/fllfrVdbAdrrtRJSrag4PPC7ANOY2sdTNAXxRpBLk/uT+yjGMeC3uEGQ1B60jMbVubQ6uWUiwH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJe5dGIO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C49CBC16AAE;
	Sat, 14 Feb 2026 12:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771072205;
	bh=BV5hzzc3YYuaJhfIsim8Ojs1tlvUwvAot4Xr9hKNgK4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IJe5dGIOpN1doP1FXwujOVvbdF57+wJn6b+imE2aEYMUVosq/nI5CMFzZnE1zyq61
	 JCheMlXW0cPS9j6FprUdc3dyTVjARTQP+iS+SNv5kIg/9VVb0nI8U091anBRMfkJtd
	 fa5YrbQOa08HtaaLcEi8D0R6IOkS3VaLPuQckPh/wPbJFnVKv5RvDB3xbW3jmQdoGv
	 bE67NUzDP1fkKJ8W3CzTFPzaovTOyyDtNL3roBrpD43ecibvn6FtHe2xQ4JC1H9DXC
	 ddjxg5UWtce/MGabAX//J3/rDrNazVvI9uEHk1nZxg8XxbZRZ+RAf2UFH24PVGb2pq
	 OywjLQc4/u88g==
Date: Sat, 14 Feb 2026 13:30:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Should aiocb(3type) say something about the order of fields?
Message-ID: <aZBoYIj4D_jcMjDO@devuan>
References: <CACb0b4=GZ_pCtuVNTmo9v3XhKVzBB-08xm=af+Ju=iE4Uc_uWQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uxon6nakboaulv3v"
Content-Disposition: inline
In-Reply-To: <CACb0b4=GZ_pCtuVNTmo9v3XhKVzBB-08xm=af+Ju=iE4Uc_uWQ@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5131-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url,man7.org:url]
X-Rspamd-Queue-Id: D53D913BDC5
X-Rspamd-Action: no action


--uxon6nakboaulv3v
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Should aiocb(3type) say something about the order of fields?
Message-ID: <aZBoYIj4D_jcMjDO@devuan>
References: <CACb0b4=GZ_pCtuVNTmo9v3XhKVzBB-08xm=af+Ju=iE4Uc_uWQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACb0b4=GZ_pCtuVNTmo9v3XhKVzBB-08xm=af+Ju=iE4Uc_uWQ@mail.gmail.com>

Hi Jonathan,

On 2026-02-14T11:51:36+0000, Jonathan Wakely wrote:
> https://man7.org/linux/man-pages/man3/aiocb.3type.html doesn't tell
> you that the order shown there is not the real order used on linux.

Hmmm, this was explained in system_data_types(7).  When the page was
split into many, that information remained there (and I still have
pending the move of the remaining two types in that page).

That page says:
     The structures described in this manual  page  shall  contain,  at
     least, the members shown in their definition, in no particular or=E2=
=80=90
     der.

My intention was (and still is) to move that page to intro(3type), and
keep system_data_types as a link page to intro(3type).

> It
> does tell you to look at aio(7), which says:
>=20
>     struct aiocb {
>        /* The order of these fields is implementation-dependent */

How about '/* members in no particular order */'?

>        ...
>        /* Various implementation-internal fields not shown */

I'd replace the second comment by '/* ... */'

>     };
>=20
> I think it would be helpful to repeat that in aiocb(3type) so you
> don't need to go to a second page to get that info. If aiocb(3type)
> shows actual C code with a struct definition it's reasonable to assume
> that it is accurate, which isn't the case here. The comments in the
> aio(7) page make that clearer.
>=20
> The Glibc manual
> <https://sourceware.org/glibc/manual/latest/html_node/Asynchronous-I_002f=
O.html>
> just names the fields (not showing an actual struct definition) and
> doesn't imply anything about the order.

I prefer the actual struct definition.  I think it's more readable.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--uxon6nakboaulv3v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmQasQACgkQ64mZXMKQ
wqmIrxAAh6ifuWMUflsDq51h5RaY68C27iOge3s+Ug9FHHloi5xLg5GS9xW/plle
4HcGWmBHaFvMDEwHG3LEqbnHNFebUUDAYwJpOUnK9zmU3mwCxpDFRo0Qfd2KeuQO
ExRg+EdM8c/t77v3PhmShuqmCjQazh58BrBBoXZmO6pCiEm08G2zYmQEMH/v+teX
Lcs8VcwOpKfhusFQL3+NgP7ChcWeV/wwML2E9gjpE4kq0QtBcjrvcDa51u+nLGGm
Q+JRS6hQlQRjjsacOdxBmZhmINeaifD4yOQ+/BPYWXtkUoDX4LvjNGu5sB7cGezA
glMwRYbEfbM1PZuZ5r9vL06w2ViSdbn0YrJuAGAemnA0TRohvowEaoO3HrrLVZuG
E1Ij/LPAD8bTLEYZqHum2sJ/wcpoNtCYQaVd2AAd3ipsJqcJiPGsY0pfiFz49mSG
wS4aj1tvLgAJsC5amHazI3pXlAzTC9J6/IbEkleVkwgZh8XuNcPbY1BixW/Tggw0
10Q5hkBXHmutOcd0hajSGangJ3qAenevJckyZjzogayj7Tt2PCC/9jox/BHHHtlU
nX8vlQG1VjfQkw1GcaFbHPM3SmJ8H+zeuCXsDqthkdwz37spGbaUF8WvsZ3XPZ0O
MjxD3guIQFdcl29NswbOA6oQYcKKAZqNcsSQCOhEksoZZK04kuE=
=UBbZ
-----END PGP SIGNATURE-----

--uxon6nakboaulv3v--

