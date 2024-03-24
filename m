Return-Path: <linux-man+bounces-685-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BAA887EDA
	for <lists+linux-man@lfdr.de>; Sun, 24 Mar 2024 21:31:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A22F1F21018
	for <lists+linux-man@lfdr.de>; Sun, 24 Mar 2024 20:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78B42DDD2;
	Sun, 24 Mar 2024 20:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=m2osw.com header.i=@m2osw.com header.b="akMFStUx"
X-Original-To: linux-man@vger.kernel.org
Received: from m2osw.com (m2osw.com [146.190.169.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6852533EE
	for <linux-man@vger.kernel.org>; Sun, 24 Mar 2024 20:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=146.190.169.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711312279; cv=none; b=pJgb1kjLnWqAghyjXm1UWP4PoQpMAucS+7ZTkWRa/1AD30B63oD7eWPM6mExU4C4oaf1KxF6rQSV938E6i9lSIgAUbX+EFGSrylzicBhKo/af+XHmd5LnP079zLnaf7gya1VeUQTcefSHW4nKYXaUWOhVEpD05XYhPreMnH4fKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711312279; c=relaxed/simple;
	bh=chwBehAHKtyJb48CbgK4z6B9CQ4hcqzheiFGNlKnmFY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:Cc:
	 In-Reply-To:Content-Type; b=ncS0DqCV7x12NoiiOz7HQbvwOI5NBwxql0FEC1kkAQyeeelmAkWvPAwuymwIEDQs5PRZJ4efGhDtHwfthEh7/sL0s7EzhVCbymAQBmTt6DxA6iiTuSacDcduwrAihvAsFMeBMoByaGXYIR3uuMH54Yu5KmNqZi/mckynzBbayu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=m2osw.com; spf=pass smtp.mailfrom=m2osw.com; dkim=pass (2048-bit key) header.d=m2osw.com header.i=@m2osw.com header.b=akMFStUx; arc=none smtp.client-ip=146.190.169.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=m2osw.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=m2osw.com
Authentication-Results: mail.m2osw.com; dmarc=fail (p=quarantine dis=none) header.from=m2osw.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=m2osw.com; s=mail;
	t=1711311804; bh=chwBehAHKtyJb48CbgK4z6B9CQ4hcqzheiFGNlKnmFY=;
	h=Date:Subject:From:To:References:Cc:In-Reply-To:From;
	b=akMFStUxSRLVLdJYOS0tGTsf5HsQ5EWtSD4J3hvjt3VfjjW1bBDA33/qLqHGRdoZB
	 M6fngxgbiCc86GSRiH93yQa5PPlsFZXdbkXGmJDAbWj2Nxb6J0uSZyrR9znSY0UyaT
	 uh8leCPjgIAGYSjHl64yqFQjs4NEl7O2iSi22f+7rMQ8Gs3A7FaAGTXs4IsnbrE7ql
	 3uxQXgDQkusLm09HeSrzMUTTzbhsuZXLCkwF1gf/BYcu+JIKjBEzO8kx+pTSVNjOWm
	 7irSanr9ZJq4jTndgh79avn1aJ0H8WT5F0tcG8eCgdlFIgAF5QYn7ffOLDbpFu36z3
	 MIwBBQfehc+Gw==
Received: from [10.1.10.201] (c-71-197-127-190.hsd1.ca.comcast.net [71.197.127.190])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m2osw.com (Postfix) with ESMTPSA id 2D5C57E54E;
	Sun, 24 Mar 2024 20:23:24 +0000 (UTC)
Message-ID: <23f53f11-d49f-4abc-bdc8-085014f509f4@m2osw.com>
Date: Sun, 24 Mar 2024 13:23:22 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: listen(2) man page enhancement
Content-Language: en-US
From: Alexis Wilke <alexis@m2osw.com>
To: Alejandro Colomar <alx@kernel.org>
References: <59f9ef34-e9d9-41d5-8f97-2c070532a7d0@m2osw.com>
Cc: linux-man@vger.kernel.org
Autocrypt: addr=alexis@m2osw.com; keydata=
 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
In-Reply-To: <59f9ef34-e9d9-41d5-8f97-2c070532a7d0@m2osw.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hbspyhFB0VRPpesbGOrLDVRL"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------hbspyhFB0VRPpesbGOrLDVRL
Content-Type: multipart/mixed; boundary="------------0IVhzplTJEcR3Mrsalpw0CB7";
 protected-headers="v1"
From: Alexis Wilke <alexis@m2osw.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <23f53f11-d49f-4abc-bdc8-085014f509f4@m2osw.com>
Subject: listen(2) man page enhancement
References: <59f9ef34-e9d9-41d5-8f97-2c070532a7d0@m2osw.com>
In-Reply-To: <59f9ef34-e9d9-41d5-8f97-2c070532a7d0@m2osw.com>

--------------0IVhzplTJEcR3Mrsalpw0CB7
Content-Type: multipart/mixed; boundary="------------uweeanJmIAfTiEZwuSBxKc0R"

--------------uweeanJmIAfTiEZwuSBxKc0R
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQWxlamFuZHJvLA0KDQpJIHdhcyBsb29raW5nIGF0IGNoYW5naW5nIHRoZSAiYmFja2xv
ZyIgb2YgYSBsaXN0ZW4oMikgY2FsbCBhbmQgY291bGQgDQpub3QgZmluZCBhbnkgZG9jdW1l
bnRhdGlvbiBvbiBob3cgdG8gZG8gc28uDQoNCkNsZWFybHksIGl0IGlzIHBvc3NpYmxlIHVu
ZGVyIExpbnV4IHNpbXBseSBieSBjYWxsaW5nIGxpc3RlbigyKSBhZ2Fpbi4gDQpIb3dldmVy
LCB0aGUgZG9jdW1lbnRhdGlvbiBkb2VzIG5vdCBtZW50aW9uIHRoZSBwb3NzaWJpbGl0eS4N
Cg0KV2Ugc2VlIG9uIHRoaXMgc3RhY2tvdmVyZmxvdyBwb3N0IHRoYXQgaXQgaXMgaG93IE5n
aW54IGRvZXMgaXQgKHNlZSANCmFuc3dlcikuDQoNCmh0dHBzOi8vc3RhY2tvdmVyZmxvdy5j
b20vcXVlc3Rpb25zLzY0MDUwMjgxL2Nhbi1iYWNrbG9nLXZhbHVlLXRoYXQtaXMtcGFzc2Vk
LXRvLWxpc3Rlbi1jYWxsLWJlLW1vZGlmaWVkLWxhdGVyLW9uLXdpdGhvdXQtYyANCg0KDQpJ
IHdvdWxkIHByb3Bvc2UgdG8gZWl0aGVyIGFkZCBhIG5ldyBwYXJhZ3JhcGggb3IgYWRkIG9u
ZSBzZW50ZW5jZSB0byB0aGUgDQpleGlzdGluZyAiYmFja2xvZyIgcGFyYWdyYXBoIHRvIG1l
bnRpb24gdGhlIGFiaWxpdHkuDQoNCkhlcmUgaXMgdGhlIGV4aXN0aW5nIHBhcmFncmFwaDoN
Cg0KIMKgwqDCoMKgwqDCoCBUaGUgYmFja2xvZyBhcmd1bWVudCBkZWZpbmVzIHRoZSBtYXhp
bXVtIGxlbmd0aCB0byB3aGljaCB0aGUNCiDCoCDCoCDCoMKgIHF1ZXVlIG9mIHBlbmRpbmcg
Y29ubmVjdGlvbnMgZm9yIHNvY2tmZCBtYXkgZ3Jvdy4gSWYgYSBjb25uZWN0aW9uDQogwqDC
oMKgwqDCoMKgIHJlcXVlc3TCoCBhcnJpdmVzwqAgd2hlbiB0aGUgcXVldWUgaXMgZnVsbCwg
dGhlIGNsaWVudCBtYXkgcmVjZWl2ZSANCmFuIGVycm9yDQogwqDCoMKgwqDCoMKgIHdpdGgg
YW4gaW5kaWNhdGlvbiBvZiBFQ09OTlJFRlVTRUQgb3IsIGlmIHRoZSB1bmRlcmx5aW5nDQog
wqDCoMKgwqDCoMKgIHByb3RvY29sIHN1cHBvcnRzIHJldHJhbnNtaXNzaW9uLCB0aGUgcmVx
dWVzdCBtYXkgYmUgaWdub3JlZCBzbw0KIMKgwqDCoMKgwqDCoCB0aGF0IGEgbGF0ZXIgcmVh
dHRlbXB0IGF0IGNvbm5lY3Rpb24gc3VjY2VlZHMuDQoNCldoYXQgSSBwcm9wb3NlIGlzIHRv
IGFkZCB0aGUgZm9sbG93aW5nIHNlbnRlbmNlIHRvIHRoYXQgcGFyYWdyYXBoOg0KDQogwqDC
oMKgwqDCoMKgIEl0IGlzIHBvc3NpYmxlIHRvIGNhbGwgbGlzdGVuKCkgYWdhaW4gdG8gY2hh
bmdlIHRoZSB0aGUgc2l6ZSBvZiB0aGUNCiDCoMKgwqDCoMKgwqAgYmFja2xvZyBxdWV1ZS4N
Cg0KVGhhbmsgeW91Lg0KQWxleGlzDQoNCg==
--------------uweeanJmIAfTiEZwuSBxKc0R
Content-Type: application/pgp-keys; name="OpenPGP_0x3950C41EA102EFFA.asc"
Content-Disposition: attachment; filename="OpenPGP_0x3950C41EA102EFFA.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=3DHmSb
-----END PGP PUBLIC KEY BLOCK-----

--------------uweeanJmIAfTiEZwuSBxKc0R--

--------------0IVhzplTJEcR3Mrsalpw0CB7--

--------------hbspyhFB0VRPpesbGOrLDVRL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEEPO3MFVxCwd4Zu/AwOVDEHqEC7/oFAmYAi7sFAwAAAAAACgkQOVDEHqEC7/q7
Lgv+P5Gl6aHUoEw9DjaC0ZWj7//nNK/OWDUMcLa5B0fAAVd6Dr2G/iFcvexdVnMnUhElPkpJ+wlQ
Xve3sNa4TWFuRl0jTODR78MG6g37PLhQrjtLyHW4KtfMsRd6CI//19Xf0gZAJmCQwoEjV/Nzqduw
w3xnmyXuKxCFcHf1XBy76RPzAjSku0a7sQv1kpcISmSV/uFnlf9WlOn0x1DPjt1GehB4hsw7ZejI
8cQjrN604YQfPzIt11twYqKpMHWg9cJ4OjgIWFKLkQVJNQA1TKsAkl0/cg/JMJeo0g63hLUA86+k
bpps3m8y6TuuTs5zFVcsnMSgWTLLcR1PCUm0Wc7YxFeV396LdsUrV5RDn7a/Vdek6kWk/J6clN2E
Jyo3EIW0vY20VVUu9dbRHAl1XaDDnkaRwYhGhTzmg8I+eXXL/Ra1ZuplX8fzR/Du5omlUaB4X7kk
JRJwbKGS9Q5jatH8dT8VjiDqP2d4gQ/wID2/Hrtm5YRGkasF7ry7VVM5Q7R8
=0Ysk
-----END PGP SIGNATURE-----

--------------hbspyhFB0VRPpesbGOrLDVRL--

