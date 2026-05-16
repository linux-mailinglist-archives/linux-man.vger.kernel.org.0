Return-Path: <linux-man+bounces-5529-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIBBC1q0CGr31wMAu9opvQ
	(envelope-from <linux-man+bounces-5529-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 20:15:54 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C58F555D0C3
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 20:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BA8033005A8A
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 18:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66C2199920;
	Sat, 16 May 2026 18:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Px7S7t/m"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B15C33987
	for <linux-man@vger.kernel.org>; Sat, 16 May 2026 18:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778955351; cv=none; b=grC4op3z2yfOUL9tMigYiG8P5EBBT9Cvhj6CyNmN3RgDRYLsMLLButlWVKy7O9agZoqWDzCI2ADWqkh6QETYDeCP+SJ8oR8yEa7dMZ6cmB3aI7NmTvvWoHDaHVUqXvrNE5u4CXGB0lOGGLgCldbGK7ZjKxfsjKHCr3PDq0+fjd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778955351; c=relaxed/simple;
	bh=e0tOkirjTfULQzsxLhkYRAt9rGxAfN8q6mgX/Kcdd9I=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jqiKBNF8/zw6D2Uu7+JKhtItVklgAFZj+YNV3Jy+O1AQzAOhwT/MFRlFjl5ReqvSt6HzJAHLCrqGVx3UTlz19U8TgRg69CNT1N1JPL8XL8GBPASRv2PkfGZrjbF8wer/5nMIZ/L8K60inUrUiABFnPY17HAzcvciRbCXEOo5ZkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Px7S7t/m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A015C19425;
	Sat, 16 May 2026 18:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778955351;
	bh=e0tOkirjTfULQzsxLhkYRAt9rGxAfN8q6mgX/Kcdd9I=;
	h=Date:From:To:Cc:Subject:From;
	b=Px7S7t/m1D0ygV7nooFDYl+yV1nwOVHX5yFhMLnv5vRWyp0Wc2KhpKdDOYPQUbLBK
	 VeO4UzVQhQSaAXcjgwE665458WhMrvgBLujST2Rq4tZtRGvN5KfjtbHxYwlXrXZeXN
	 PxGMJ4+ziBNk+qGyGXeW9hrXaHRJ198w27OI4pPTYhUP4zn7PEQDoCduQvSIUilrF+
	 m0hNIAqdJ0GhngXIiCWmDjYFhPruoQWtyruKZlw6G0Wu7QV5HTtB+mKx/KVjqz2TFO
	 OBfa9kDXz8Rn73sYUgJcyt7u3WDSOC/6vDKrOhWvBJKaDJxxtCKpqhyayifmceBmew
	 d2KGREX85WItg==
Date: Sat, 16 May 2026 20:15:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: non-standard const-preserving string APIs
Message-ID: <agizh06CdDnhDvAB@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="efvcfid2fu7qcudh"
Content-Disposition: inline
X-Rspamd-Queue-Id: C58F555D0C3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5529-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--efvcfid2fu7qcudh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: linux-man@vger.kernel.org
Subject: non-standard const-preserving string APIs
Message-ID: <agizh06CdDnhDvAB@devuan>
MIME-Version: 1.0

Hi!

I'm working on documenting the recent API change of strchr(3) et al.
to adapt to C23.  While doing that, I've realized that the related APIs
that are not standardized by ISO C, such as memrchr(3), have not been
changed consistently with their relatives.  Has this been discussed?

I think the inconsistency might be dangerous.  Should we change the
other string functions accordingly?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--efvcfid2fu7qcudh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoItE0ACgkQ64mZXMKQ
wqnf0Q/+Nig40KOljYVR/ImGYVtQ3wUnS5716OXfIQNIJi8rl6p9FOtF1MDt/oyn
DKTm3RBWmoQ14rsmfXTKYEvLDB/eryQXyAo488RGV69utk+zE+lZ1DMM3cjlBbG4
oZ/QnpMfp0W+sWP8csNfZLFIJfGBHNsO67zOqTGGm6gUF9vUnZxiVJId6EoUZxdx
OAidYsOqVa04m0MuSdoq1wrvgvr1VS5OBWxw59hj+btcwf+8gKOw2NvahiNjUYRm
OXTB8T5MKklbB5RtVoOP3h4DwN3qzngpsVogwxPK3zpudTx8UVZ3rldMmxg51Wk2
4ilOX9BPJeI3LWtotvOv2Y1TgimMkPoXiZj44apfe11+/A3TabVW0oIQUNUqUN0y
coB3ZDNO7yPyEguqOHKSqQeKUIABqbMzVdVAGy6vkaZDuh1lR9/AWzMKREqlhpCy
prZTOKSpSiiO/9ymFJIE/n2+EnI0X4B0uZT78FTeF0ziEju26286zzy2wmSIfthf
iVFsVWzVqfwrojcYyR8eZCEKQ8Iey99tM1ZLM0XE+1x8PMBTV48/rGgxpyb5SX4w
c4FCeJjI+vJgvkAHaJfp8Q7RTolhjVZzcK58XSGomZ4m4ribTqtgNJ3ZLqAi7IyF
RFPG8L24jL+dlUz6UTMwKtLXSWqWMg9Dt6hoXE+EQXBMKwTpjq0=
=p7/c
-----END PGP SIGNATURE-----

--efvcfid2fu7qcudh--

