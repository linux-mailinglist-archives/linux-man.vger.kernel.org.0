Return-Path: <linux-man+bounces-2467-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 705BDA38734
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 16:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC8D9165433
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 15:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06C08148FE6;
	Mon, 17 Feb 2025 15:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b="o9C3ITTG"
X-Original-To: linux-man@vger.kernel.org
Received: from eggs.gnu.org (eggs.gnu.org [209.51.188.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD4F20328
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 15:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.51.188.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739804728; cv=none; b=ok1cvg+mi+fB402YycyYFOTpzyR6d4OtmgJjH22vOWMulZxuj0wy3yUwhi6BIUXanb6SgxVtwZaX75Qy7o+2gTY8ESfoHQgv2AuyUsTF2CYHFmOYfCurKiEAs5TH2b3o7mFuZKMJ6QNPEaBcBdVtlrcWEFUiBT52TKXeYxnyq18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739804728; c=relaxed/simple;
	bh=I8X/iStddeDDHeHawNEXeE3tVsNECuhLi4ImU91i3U8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vz4eYmzkSLMHBHMVBbBnvjTmMoQWE+EePigHSNcnPC8Uxz6M8sQRQd4Ej5l1lVQtqKObpqNE3vLW7cqbbQME7dvdyZncV5PEDRe4duFEzw93tVRYBICqehQr1Ijz2Ct5yr7t2rJjpJvusK+MeYejwSdZXT9EZwqhSZpCrvTX7LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org; spf=pass smtp.mailfrom=gnu.org; dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b=o9C3ITTG; arc=none smtp.client-ip=209.51.188.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gnu.org
Received: from fencepost.gnu.org ([2001:470:142:3::e])
	by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.90_1)
	(envelope-from <karlson2k@gnu.org>)
	id 1tk2gT-0007Ml-8f; Mon, 17 Feb 2025 10:05:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
	s=fencepost-gnu-org; h=In-Reply-To:From:References:To:Subject:MIME-Version:
	Date; bh=I8X/iStddeDDHeHawNEXeE3tVsNECuhLi4ImU91i3U8=; b=o9C3ITTG42c39jLJVknF
	QYtAx+MFMfYD619ZA/gOq4bciuBbtwHhBPgQpe596IolOfyFQ1MUyTias2PdYMgEQ94pFNjipVliT
	jOi15RimVzT/ajRLZkoe6/6Mg2s1Txup2fwfneNGHiUK28mKBteZu9Ch9J6oKPOl6c/0bCXE+PYY/
	KuiQNHryHmfeMHlgtFaS5iuAw5Ysd/lcA98v8SbJXFf/mL6BoAwr9ZF5FyJcc6Y7AyAOyN94/UJe/
	Ol29NFPlelhPuFiCCBwAQByu0wfkRJ7eYyQdj00GG5dTs0ax6HCK76hQgJT2zMpR1wimjY64wCOGJ
	Li8REXAcxD5g4g==;
Message-ID: <41a157af-0e53-4ce9-8728-d47930a489e0@gnu.org>
Date: Mon, 17 Feb 2025 16:05:17 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [musl] Re: [shadow-maint/shadow] Add cheap defense mechanisms (PR
 #1171)
Content-Language: ru, en-GB
To: Rich Felker <dalias@libc.org>, Alejandro Colomar <alx@kernel.org>
Cc: libc-help@sourceware.org, linux-man@vger.kernel.org,
 Tobias Stoeckmann <tobias@stoeckmann.org>, Serge Hallyn <serge@hallyn.com>,
 Iker Pedrosa <ipedrosa@redhat.com>, musl@lists.openwall.com
References: <shadow-maint/shadow/pull/1171@github.com>
 <shadow-maint/shadow/pull/1171/c2661802270@github.com>
 <p6zqecnj4czocoksbicabvp3ec4sgicejct6nhuq4mccisemig@2i3dhnffkav5>
 <20250217143829.GA1827@brightrain.aerifal.cx>
From: Evgeny Grin <karlson2k@gnu.org>
Autocrypt: addr=karlson2k@gnu.org; keydata=
 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
 Y1ZLjj6i7g==
In-Reply-To: <20250217143829.GA1827@brightrain.aerifal.cx>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------HotB6VwY17k1csnxfFH0H6N4"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------HotB6VwY17k1csnxfFH0H6N4
Content-Type: multipart/mixed; boundary="------------1J0is5MQARLDCPn3bx0Bbnc8";
 protected-headers="v1"
From: Evgeny Grin <karlson2k@gnu.org>
To: Rich Felker <dalias@libc.org>, Alejandro Colomar <alx@kernel.org>
Cc: libc-help@sourceware.org, linux-man@vger.kernel.org,
 Tobias Stoeckmann <tobias@stoeckmann.org>, Serge Hallyn <serge@hallyn.com>,
 Iker Pedrosa <ipedrosa@redhat.com>, musl@lists.openwall.com
Message-ID: <41a157af-0e53-4ce9-8728-d47930a489e0@gnu.org>
Subject: Re: [musl] Re: [shadow-maint/shadow] Add cheap defense mechanisms (PR
 #1171)
References: <shadow-maint/shadow/pull/1171@github.com>
 <shadow-maint/shadow/pull/1171/c2661802270@github.com>
 <p6zqecnj4czocoksbicabvp3ec4sgicejct6nhuq4mccisemig@2i3dhnffkav5>
 <20250217143829.GA1827@brightrain.aerifal.cx>
In-Reply-To: <20250217143829.GA1827@brightrain.aerifal.cx>

--------------1J0is5MQARLDCPn3bx0Bbnc8
Content-Type: multipart/mixed; boundary="------------Hs62MIeSfr4VxvwPPYTiAfN4"

--------------Hs62MIeSfr4VxvwPPYTiAfN4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCjE3LUZlYi0yMDI1IDE1OjQ0IChVVEMrMDEwMCksIFJpY2ggRmVsa2VyIHdyb3Rl
Og0KPiBPbiBNb24sIEZlYiAxNywgMjAyNSBhdCAxMDo0MjowNkFNICswMTAwLCBBbGVqYW5k
cm8gQ29sb21hciB3cm90ZToNCj4gDQo+Pj4gSXNuJ3QgaXQgc2FmZSB0byB1c2UgY29uc3Ry
dWN0cyBsaWtlDQo+Pj4gYGBgIEMNCj4+PiBzaGFkb3cgPSBmb3BlbiAoU0dST1VQX0ZJTEUs
ICJyZSIpOw0KPj4+IGlmIChOVUxMID09IHNoYWRvdyApDQo+Pj4gICAgc2hhZG93ID0gZm9w
ZW4gKFNHUk9VUF9GSUxFLCAiciIpOw0KPj4+IGBgYA0KPj4+ID8NCj4gDQo+IFVuZm9ydHVu
YXRlbHkgdGhpcyBkb2Vzbid0IHdvcmsgYmVjYXVzZSBpdCdzIFVCIHRvIHBhc3MgYW55IG1v
ZGVzIGJ1dA0KPiB0aGUgc3RhbmRhcmRzLXNwZWNpZmllZCBvbmVzLg0KDQpZb3UgYXJlIHJp
Z2h0LCBhY2NvcmRpbmcgdG8gUE9TSVgsIGZhaWx1cmUgd2l0aCBFSU5WQUwgaXMgbm90IGd1
YXJhbnRlZWQuDQpUaGF0IGlzIG5vdCBuaWNlIGFzIHRoZSBmdW5jdGlvbiBpcyBhbGxvd2Vk
IHRvIHBlcmZvcm0gbm90IGFzIHJlcXVlc3RlZCANCndpdGhvdXQgYW55IGluZGljYXRpb24u
DQoNCj4gSW4gYW55IGNhc2UgdXNlIG9mIGZvcGVuIGlzIGp1c3QgZ3JhdHVpdG91c2x5IGJh
ZCBmb3Igc29mdHdhcmUgdGhhdA0KPiB0YXJnZXRzIFBPU0lYLiBUaGUgcmlnaHQgd2F5IHRv
IGRvIHRoaW5ncyBpcyBhIHR3by1zdGVwIG9wZW4rZmRvcGVuLg0KPiBUaGlzIGF2b2lkcyBu
ZWVkaW5nIHRvIGRlcGVuZCBvbiBuZXcgZmVhdHVyZXMgdG8gb3BlbiBhbmQgbGV0cyB5b3Ug
dXNlDQo+IGFsbCB0aGUgbW9kZXJuIG9wZW4gZmxhZ3MsIG9wZW5hdCBpZiBuZWVkZWQsIGV0
Yy4NCg0KSSBhZ3JlZS4gVGhpcyB3b3VsZCBiZSB0aGUgYmVzdCBhcHByb2FjaC4NCg0KV2hp
bGUgZGlldGxpYmMgZG9lcyBub3Qgc3VwcG9ydCAiZSIgbW9kZSBhbmQgZ2xpYmMsIG11c2ws
IHVjbGliYy1uZyANCnN1cHBvcnQgImUiIG1vZGUsIGNoZWNraW5nIGZvciBwYXJ0aWN1bGFy
IGxpYnJhcnkgaXMgYmFkLg0KQ2hlY2tpbmcgZm9yIGZlYXR1cmUgc3VwcG9ydCBpcyBub3Qg
cmVsaWFibGUgKGZ1bmN0aW9uIG1heSBub3QgcmV0dXJuIA0KZXJyb3IsIHdoaWxlIHRoZSBm
bGFnIGlzIGlnbm9yZWQgb3IgZXZlbiB1c2VkIGRpZmZlcmVudGx5KSBhbmQgbm90IA0KcG9z
c2libGUgd2hlbiBjcm9zcy1jb21waWxpbmcuDQoNCi0tIA0KQmVzdCwNCkV2Z2VueQ0KDQo=

--------------Hs62MIeSfr4VxvwPPYTiAfN4
Content-Type: application/pgp-keys; name="OpenPGP_0x3193C1B46AE02A8E.asc"
Content-Disposition: attachment; filename="OpenPGP_0x3193C1B46AE02A8E.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
TBzXxkI1rfnrqH27Y1ZLjj6i7g=3D=3D
=3DRzCp
-----END PGP PUBLIC KEY BLOCK-----

--------------Hs62MIeSfr4VxvwPPYTiAfN4--

--------------1J0is5MQARLDCPn3bx0Bbnc8--

--------------HotB6VwY17k1csnxfFH0H6N4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEELwGQCsq+EVdX60JFMZPBtGrgKo4FAmezUC4FAwAAAAAACgkQMZPBtGrgKo7E
ehAAjhrh/N99V3xxtIg7RIObNqVn0Ck0AU27bBhgQOJFJCEksQLwkD8Agj4fe2O1jaGB6gYcSUxg
evZapyz+Db/riD3/Y+VA2PkyIu74G9evCJiU/qKb62NY2SJgPRW1HAlDRI4BEvxpfQDhmzsUzWAH
vycsLIkGwVvXk7Natb4CO9sIIqrOZhaEdj7QySaE0WfkId7yPoUfihVieKOW6pC9mmLaC4TlhPqe
bq03kGb5nCfTTkcZr5eoPlwml0bVinPPoFY3yJd67q/hBexZWMdzGT+Qffnw92EG1EADdBEKOUju
YnCWSku08MBANrwpiJboamubaitPe5a+5jsZJykF1cOChqSWSQ6LnTj0oUQE9NHelCnMHFzppT95
Aqc19cpyLcJPB+LI/k7+oq+fpKqrW5g4MFnmTCbOpNiC14zhwuRRroflS1yQNwXXTrux1NeJcYke
uOuu+WrKdkRQQHOg8jzHA8LpqF08OHHCJueFsThhWvVnkPTQCTB/oxdIQpUJG7TKEog2IZaug51Q
DLVY5wKHoYZO5ixHvUehlvOiLn02txCqjrZRK6QA0pdDD9brSzMeoQpnQjdQSOf9EKz94Fh2hKIK
lGcveVwlBoi1qn6I84Jl41WG7C08mCP24CCiGRSeWbGNjEsK/mxBwCjj1IS/BX2F3ci0znYW6b87
2s0=
=xhEx
-----END PGP SIGNATURE-----

--------------HotB6VwY17k1csnxfFH0H6N4--

