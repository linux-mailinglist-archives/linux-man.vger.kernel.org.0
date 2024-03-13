Return-Path: <linux-man+bounces-579-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCBB87A968
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 15:27:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 113552819FE
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 14:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30FB14645B;
	Wed, 13 Mar 2024 14:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="mKvdKvEr"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8C241A80
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 14:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710340018; cv=none; b=fh9ZGp3sTBqnPScn3C8UITpgtbKqBC3zvPRs/ngdEA2AE0H0pRkdfqrVPC7ErVY4jYW4CGwif4d5J9jEid9pzQI60y2OLB6gb5UfLQPaAMhRXhnZVoUMGnkhwgBuu3Ve82RBioHqna1p6enZq8GMZzGACLlqAYTFplAo1bK2wVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710340018; c=relaxed/simple;
	bh=O4ALsMQjbxaI8WwtwiAmbFMUl/lzfFouIGn+xeyZ8Kk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fNkqjudt7AW0f8sdaNL8zROLIHmmqcndoILDxXWo3pYfRcqgW+2YD+TapkMk0pncbOCrPsJrAmIRTaswCc8FMGb4zBUyo2zGRfz3e/Jx4/S45PU4d0V0EX4Zf4gb9OVybbEok+Hy0GR82gSuN9tEcaqAi7eh1nnk8QIruyJhaEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=mKvdKvEr; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1710340012;
	bh=O4ALsMQjbxaI8WwtwiAmbFMUl/lzfFouIGn+xeyZ8Kk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mKvdKvErGwBaK6MycjDaRIJZPp6LiHHSFNcnpCtv4KLVFRhs/9XP4iXinVSlHQu1q
	 7t+Dtn71WHHSi98tFl6vUwHbmDr7lUIsWn2srrj9QzdtDPTU04jUvYSOq6PNwYDp0a
	 lAXnpUEKJ0E94QcdeVGbMDHEuzp880WwczTB+G8YV83eMmxwvSuSzZHa3MW3rd9eds
	 SQU72FFijc44Q2lm6kM4MzvRU8w6eXHA3LOV8kyZLGysimRbjdB2zz1dnTiWXb4hQP
	 KWbgR7ulFwAbgJtNqvHdRLcXKAw043InlzPDCLb8Taxm3qFWK0oUIGPUjzN8vbiaaa
	 +TiKnQxSeKtVQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A94171014;
	Wed, 13 Mar 2024 15:26:52 +0100 (CET)
Date: Wed, 13 Mar 2024 15:26:52 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 5/6] getrusage.2: proc(5) /proc/pid/stat -> proc_pid_stat(5)
Message-ID: <e48a7ec4150f9b2930c4b8bbc53f66f55da77b75.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bq3xgweutbh3scqf"
Content-Disposition: inline
In-Reply-To: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--bq3xgweutbh3scqf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/getrusage.2 | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/man2/getrusage.2 b/man2/getrusage.2
index 8323bef35..8baff09c4 100644
--- a/man2/getrusage.2
+++ b/man2/getrusage.2
@@ -239,15 +239,11 @@ .SH HISTORY
 .SH NOTES
 Resource usage metrics are preserved across an
 .BR execve (2).
-.P
-See also the description of
-.IR /proc/ pid /stat
-in
-.BR proc (5).
 .SH SEE ALSO
 .BR clock_gettime (2),
 .BR getrlimit (2),
 .BR times (2),
 .BR wait (2),
 .BR wait4 (2),
-.BR clock (3)
+.BR clock (3),
+.BR proc_pid_stat (5)
--=20
2.39.2


--bq3xgweutbh3scqf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmXxt6wACgkQvP0LAY0m
WPG16Q//ahl55Tew+iHD1EVbfcyQJvpP95P/Zhlnas7lI72ss+hU0LYDB/etp5ok
nExXVTP5oCE4ui6eDYho1mdVCjcGCLMYMguponVRLVZpDhEtdpcyhKXc/P6M0E/S
QeH58PoXP6eNXkne8OvSgJXvMpljH2kBAVidAm0b1o6LpVqdlg61x+8QI8/m9J8r
JsUK+cwgUL9EOXKBK/8ASp8lLZNHDGL6R0gsx6qqkF/7UFNafRxzqQNN3sMNrLIJ
UY0nNG8NO3eYKM9OC5Nv1e8fxdjf/k62X39gdHOsy7ir4HczZhkZM/NO8E+k3wg9
Y9daZ+xNB8kF6n70FxKZGkpzz+wwFnWCJPIt3R1P3rmUg81Zh/ZiCrfd08AdVy1C
NpXil0WIJexWPmKjHTVoQsSRes4MX6fvG/TESAdjyB2hbLYk7CunNiWJ0gBUd8eH
KrXsND9uAz/I2fbJVBnyhl/2Gib5joZ5O5FbX3J6gM4PXVWHKETD8Y6QAkYw025J
Ys+oYxKR7eiPXioJKvncstfRGOxbtfBHZm12okbpDHBOGQ9N90RlQgbtP0pNzqZ/
hrLgFOlNcB7KgDgM777B9ICXHMNF0nubpZyrl5Q1PWfXXhciUY7XvRx0tEeWtrgh
OkKOF7D2jWF6Vi9IjfNTTvX2PI8dOXqVtQfUlCd17L+DEAz4ak4=
=OA8G
-----END PGP SIGNATURE-----

--bq3xgweutbh3scqf--

