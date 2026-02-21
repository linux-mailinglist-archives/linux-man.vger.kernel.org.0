Return-Path: <linux-man+bounces-5167-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMBULXvJmWm/WgMAu9opvQ
	(envelope-from <linux-man+bounces-5167-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 16:04:27 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5AA16D1CC
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 16:04:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B62EA30131E8
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 15:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1227438DD3;
	Sat, 21 Feb 2026 15:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPSmQ6XL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DC83EBF31
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 15:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771686264; cv=none; b=rzZkNHOB7XQuJqXjvoi7l8LhAxaRxUFGNOwYqUAkl01uySAbI23PCfB5igl8MUjBiKqO3hd8K+Gi5uZAvv6khoB6dwTgzHiYxE1UdR+z3Ut2vhKpvgRRm1w4cq/2HOcuntN/H9Th+JadF7ztOUABtQjSqudRM8LSY3F8uu2nOnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771686264; c=relaxed/simple;
	bh=MxUDf9I8RnimJ5JKmerNH8VXXSwA5SvUrS1jxvVKSf0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PQbAdO5CwKsI37Vp7seNQ9+A+FKjb0l1ucNgv3jX53nmL+OPLSQQFue9n+IX4g/aO00pcjc+f5D9ppnZjf3cLcxece8uq+n8MjYb2jnaI0uB3DC2RwM7cx4bBRHeL0fksNMJO5RAoWxIiGpWQkqYAOeuktPCRlJUkPWM3aF1wc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPSmQ6XL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B89E0C4CEF7;
	Sat, 21 Feb 2026 15:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771686264;
	bh=MxUDf9I8RnimJ5JKmerNH8VXXSwA5SvUrS1jxvVKSf0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nPSmQ6XLbMBQDS4wN1KcOqToJv4hDkmGnmwS24zyInGpJpb3uTpXhg28SAQkUNE/o
	 8Kj191H+8BAj3En5k6+Qj37kVZf/LYsh8168IwnwQreZdXIiXDjBCpnIgtwEgh1lGp
	 +F2o2QV/0K3qzhAknsn35dIcwqP90+IltQNEs2ff1C1Oc7Y4jzD8waGnWVypfeivnW
	 1+k5wkaiCiaxs9yfwXb5A4rpIv+9fJrwVv6e/eLybRfBqag8nhpput5SLmPgszdr2x
	 5kwLZNn+2D9CT2RWaQoSte6O7uhscW77r255adionswGLvosU/gUV21er142JlE1Sv
	 xBEroBbiLvFYA==
Date: Sat, 21 Feb 2026 16:04:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: bug-gnulib@gnu.org
Subject: Re: [PATCH v1 0/1] Document strnul(3)
Message-ID: <aZnJYmxVIpqvaFZQ@devuan>
References: <cover.1771686088.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fncgmcqgv46oqcha"
Content-Disposition: inline
In-Reply-To: <cover.1771686088.git.alx@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5167-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 1C5AA16D1CC
X-Rspamd-Action: no action


--fncgmcqgv46oqcha
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: bug-gnulib@gnu.org
Subject: Re: [PATCH v1 0/1] Document strnul(3)
Message-ID: <aZnJYmxVIpqvaFZQ@devuan>
References: <cover.1771686088.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <cover.1771686088.git.alx@kernel.org>

On 2026-02-21T16:02:49+0100, Alejandro Colomar wrote:
> Hi!
>=20
> gnulib has added strnul(3).  I hope libc implementation eventually pick
> up this API.  Let's document it in a manual page.

Here's how the page looks like:

$ MANWIDTH=3D72 diffman-git HEAD
fatal: path 'man/man3/strnul.3' exists on disk, but not in 'HEAD^'
--- HEAD^:man/man3/strnul.3
+++ HEAD:man/man3/strnul.3
@@ -0,0 +1,39 @@
+strnul(3)               Library Functions Manual              strnul(3)
+
+NAME
+     strnul - string null=E2=80=90terminator
+
+LIBRARY
+     gnulib - The GNU Portability Library
+
+SYNOPSIS
+     #include <string.h>
+
+     char *streq(const char *s);
+
+DESCRIPTION
+     strnul() returns a pointer to the terminating null byte in the
+     string s.
+
+RETURN VALUE
+     s+strlen(s).
+
+ATTRIBUTES
+     For an explanation of the terms used in this section, see attrib=E2=
=80=90
+     utes(7).
+     =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
+     =E2=94=82 Interface                            =E2=94=82 Attribute   =
  =E2=94=82 Value   =E2=94=82
+     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4
+     =E2=94=82 strnul()                             =E2=94=82 Thread safet=
y =E2=94=82 MT=E2=80=90Safe =E2=94=82
+     =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
+
+STANDARDS
+     GNU.
+
+HISTORY
+     gnulib 202607.
+
+SEE ALSO
+     strlen(3), strchr(3), string(3)
+
+Linux man=E2=80=90pages (unreleased)     (date)                       strn=
ul(3)

--=20
<https://www.alejandro-colomar.es>

--fncgmcqgv46oqcha
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmZyXUACgkQ64mZXMKQ
wqlc4xAAkvs04Va1FyPXNMyAUDfrCMplzQqLIhE4OGpbxPXUCW0x7SubwW/ZwmpG
XN03wAMys1HfV2cyo4JeNXWc49kA7pet4x99cJ3trplALCEGJZwJQExkYYB14UHg
+4WQ2t4oMMiDs9gyYo2wvuIKcRrCz9xh8hh7b/MzV5kyAYGTsjGekQ1bEZuLryDV
UvMfpnIZr2OO6My7LfhhM3LzwF1Aj3kalkcE6GI2MBnJfimPhIQsp3i5qwqWZOGa
b0pK325WnTPHvFQ+v4y8iSOhRhqX2sUmlUgeaeeO3Pc5hfpbNxKQLeQVb6saEhYm
x2SpBhcdew+RACbi7LDC93vnKIQrLBgnjCWrM3Wc9F3WPX/O6lRmodpQTPmXEFqw
uPflQIeZFHg57tlQ0//0ma0RmmDIdx/9haZ4CvEu+GeCL2cNI65takvhfL4d3bFH
pNKzjkRGS8wc//HOnx877sWqBwXYWjr7VokfuQgl5LntOl2AZJydZo24SYEznF3r
llZDKvapGdp9Grm7vPp1Eb33TCT6F54efcfpwxX4el+79weIf2bUV7wrYwA+KMAH
1aUBkHmRcUocXNffMTahNZsotTNWG2viXK6VsMftwiksC6Q217vMGLNiJbqoBfhU
TeUiXOP1m3oP5FF9HRwRbfZiayNF1eo141v6zDZCFGfWhDkFT+s=
=ouqI
-----END PGP SIGNATURE-----

--fncgmcqgv46oqcha--

