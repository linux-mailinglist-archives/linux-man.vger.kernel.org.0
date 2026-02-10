Return-Path: <linux-man+bounces-5103-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPEvAGbBi2l6aQAAu9opvQ
	(envelope-from <linux-man+bounces-5103-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 00:38:14 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE1412019A
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 00:38:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 189223005AE2
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E625311C0C;
	Tue, 10 Feb 2026 23:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzaHpkjs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224772DC76F
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 23:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770766691; cv=none; b=WdpYLZJsFKe4yHfLsXmlZmLBRyMfK3QQqOidXXLjqGsdBpxj90IqyRGC2a9lathmzSTDtKaTQcqVBts0v6Ipv93ceu8Dew+G8UM4bLDice7EuNnD/X+rC3VbgroopG56H70KIw/8UqCTWXr07KHSv1JG1ahW58r2Uz3BNcMZASc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770766691; c=relaxed/simple;
	bh=ne8tQwSIpk1ThpFg8zj24docJEqb7kOQ2Lq+64CsQGI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VUEVBdv8XW4fXeka/RIwFcRCYF+Gqzc3J9EtfyVqn2/j8rik1/i2brbLEl9+WOHYrhckV6DiOzekI579zUCzTYWqvVxs/MGG7hXQyvs8kZeG2sbNptieWwpIlB2SpjGmCgiZE//AMM8I0LaRsZovDafsiK8X09DjZRZa2dkbCTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzaHpkjs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B802FC116C6;
	Tue, 10 Feb 2026 23:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770766690;
	bh=ne8tQwSIpk1ThpFg8zj24docJEqb7kOQ2Lq+64CsQGI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RzaHpkjsLVHfyv5xOJM7mF7OEeWpN6AjuICGhiSfvEgG+oa1PzRYMYYbyG/cUqhI6
	 xdhdkU9WAY0d/zhSr4sjv7Ds83oZzVgwmqpUxxoxIyigZxoxhNIhfjW3lelqmHjYFF
	 w7MLfLhrEUuBMbfTq4TnJAAiq5HPsuqk1uUT2GVrF4cvIrvThpYbI7o/DmVDTXeJ2Y
	 OFKl/PJNmgfsQ8CGh70Q0dV5vdm3IGqPjBeo7OKOI8oknWMqAaH+ygUX7EyfUkQaGj
	 jY2LeknxkUaWyFJBK8d+4939PoM5DjaZqsvZfc87n5+pvgWlKGu4b+T+C4OWHJ6Bmq
	 XMEcsisuP8fWA==
Date: Wed, 11 Feb 2026 00:38:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: Joseph Myers <josmyers@redhat.com>, linux-man@vger.kernel.org, 
	libc-help@sourceware.org
Subject: Re: floor/ceil man pages
Message-ID: <aYvBRnDPb3e6RZSD@devuan>
References: <CANv4PNkbi35JzgKump4zdNSUEwSjCpS7pQLZ8LTm+kKZ_4vtyw@mail.gmail.com>
 <aXt9Cad8zPxKEWHx@devuan>
 <af74fa04-e25a-7300-bdc5-bd3092ecc3ff@redhat.com>
 <CANv4PNm4HCsNK6+pprzxw2Db_s8JEfpxn2kzZ+BsWA3K8-G9wA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yr2smezzdcctorfd"
Content-Disposition: inline
In-Reply-To: <CANv4PNm4HCsNK6+pprzxw2Db_s8JEfpxn2kzZ+BsWA3K8-G9wA@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5103-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 6BE1412019A
X-Rspamd-Action: no action


--yr2smezzdcctorfd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: Joseph Myers <josmyers@redhat.com>, linux-man@vger.kernel.org, 
	libc-help@sourceware.org
Subject: Re: floor/ceil man pages
Message-ID: <aYvBRnDPb3e6RZSD@devuan>
References: <CANv4PNkbi35JzgKump4zdNSUEwSjCpS7pQLZ8LTm+kKZ_4vtyw@mail.gmail.com>
 <aXt9Cad8zPxKEWHx@devuan>
 <af74fa04-e25a-7300-bdc5-bd3092ecc3ff@redhat.com>
 <CANv4PNm4HCsNK6+pprzxw2Db_s8JEfpxn2kzZ+BsWA3K8-G9wA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANv4PNm4HCsNK6+pprzxw2Db_s8JEfpxn2kzZ+BsWA3K8-G9wA@mail.gmail.com>

Hi Morten, Joseph,

On 2026-01-29T13:08:43-0500, Morten Welinder wrote:
> For NaN, it comes down to the ieee spec.  Ieee-754-2008 in Section 6.3
> specifies that the only operations delivering a defined sign for NaNs
> are: copy, abs, negate, and copysign.  "For all other operations, this
> standard does not specify the sign bit of a NaN result, even when
> there is only one input NaN, or when the NaN is produced from an
> invalid operation."
>=20
> The glibc people have in the past defended the freedom to return
> whatever sign on NaN they feel like.  See
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D31104 for an example
> where float/double/long double versions of various functions disagree
> on what sign to return for NaN.
>=20
> I don't think the man page should promise more than some standard
> requires unless the implementation is specifically offering further
> guarantees.

Agree.  Would you want to send a patch?


Have a lovely night!
Alex

>=20
> M.

--=20
<https://www.alejandro-colomar.es>

--yr2smezzdcctorfd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLwV8ACgkQ64mZXMKQ
wqmVSQ/9Ejs+DvLRZavijfDdr0Zh6t8q6yUT2FgKmOiJCNTWeKHDQPEEphFPfONm
YoG0LrM3xQcDqEnEcmQNoMSZC+h9WcBzJSkdc5uRGJhpI40UsPs1+a7GLSaFhyFr
+hK1WkYXxkN+PSM87G9F3/cq9qjvqyQxrMGovksqg0iDbvUFX241KBKkn6SFEhW7
y72a2gp3Pwu3USoCCowvzOQVVYSwkHlFpFbIvQ4bQUQxkPOiBY3GxghBfOtmE/Sv
LX35DXOvkbCp1ph+jCNShywsNeCPSo94okn7AFAVZlRyKplP6asUGWDZcHjenA0A
HSZbGC0UP7PCg+7sDnVCjXHDH4N4KaHvIeEe42eu/5DMPWxHMws356Cg6LjfrYDh
oawrbbYuWWo6pEZxpGptwTo6mqwt6bAxOvjGp8nkr793R5JjK8xsce8MPOYvZICU
LNOnlfODHY+rMKCqZTn9VWCqe8olb08QAMj7bcc+4Gz9wUUU7ZKmd58gXu2LRLMP
cQj+CLKLHKVZi9QoyUauNjBD9JajHVGGC7OzkMpjUNjzUH1eSM9s7ZCwUQo8Hw2y
WgtZBFtc+OWOGKKsY3AuTErfa260VeWCfh9n0AuQjd9ESo53gPNJvgfiO55d0cR9
Y6fPunShY+zvRAfnImhfcWPGVbK8un9cBvBoFrkX3rdUiBmKsPA=
=GHLy
-----END PGP SIGNATURE-----

--yr2smezzdcctorfd--

