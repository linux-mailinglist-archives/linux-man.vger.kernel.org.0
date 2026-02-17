Return-Path: <linux-man+bounces-5147-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2N6RNBdhlGk6DQIAu9opvQ
	(envelope-from <linux-man+bounces-5147-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 13:37:43 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B42E14C053
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 13:37:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0B8A23013EF9
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 12:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ED78352FA5;
	Tue, 17 Feb 2026 12:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b="VJCxL5W8";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="d8kdzgee"
X-Original-To: linux-man@vger.kernel.org
Received: from flow-a8-smtp.messagingengine.com (flow-a8-smtp.messagingengine.com [103.168.172.143])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0C133555D
	for <linux-man@vger.kernel.org>; Tue, 17 Feb 2026 12:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.143
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771331859; cv=none; b=gTqq+0vJo6B8XO2elcSRKgQGsPTQ3iC2J2NGwo7zuDhLVNAcqPuEbG3oTJNLwJHKxt4zs3RrAgzEop+EQByccrNxj1P5ns4ZvSgYLdUDuiuHaMxym6HnmhsHsNrQI+PMll3WupbOAuPqPQkce2nUlOBQ3JRdMyoS6pMpMK7ENQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771331859; c=relaxed/simple;
	bh=IEaa1L8jrXDMcOjRZ9JaX3r0DgGyaus3EjEiBS1Ktv8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NV/kAc+8nS5cnriYfhl4uAPmW86bvhKEPLZ2lprXdpCI6Bp4fW58EaUt587qe1I67dzYOhD/1Bnp5uhwaHDwNoheXYOhdcaOkyo0neAZBFy6lHtypHolebyvijccGGu2bcn6Mv9nMD8aDLbhHDomMgZPEFrQoRxY44zD2b3KmkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au; spf=pass smtp.mailfrom=sethm.id.au; dkim=pass (2048-bit key) header.d=sethm.id.au header.i=@sethm.id.au header.b=VJCxL5W8; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=d8kdzgee; arc=none smtp.client-ip=103.168.172.143
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sethm.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sethm.id.au
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
	by mailflow.phl.internal (Postfix) with ESMTP id 6AB2E13809E0;
	Tue, 17 Feb 2026 07:37:36 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-10.internal (MEProxy); Tue, 17 Feb 2026 07:37:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sethm.id.au; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1771331856; x=1771335456; bh=Mvd9IIqjir
	NXnZn4QicMXlv4bhloEi80/jGsWx0zWh8=; b=VJCxL5W8DhYj1J5k/i3Wex2Lbu
	b6syDIv+XYz+GyaSfE/4DRnANa/uNyozca3nT9M8T5jZ+s0rnL0rRmMH/rFcPZHC
	8zypDfsPPHrP9nEpXwj6RGhvj6CbIOSN//oNdSedcntrheBwxwwdBXSeAOo+80J8
	eSURXgqFD6dvn+awPy0nlgEmP3Bi7OVcR/cXKJUWWgNcNIAwEWkH5hGRc7I74bQJ
	s3VEZXoqhDcAoOmSjvOVv62C0x+14dAwZ00zjZOVjdu7S9OdnbbSobENs41Z+FI1
	xUPgctDXJGV5sHlGrqehP18ATBptPg++3VKfaUNmCp6IOKOaHKnoC4bPK9wQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1771331856; x=1771335456; bh=Mvd9IIqjirNXnZn4QicMXlv4bhloEi80/jG
	sWx0zWh8=; b=d8kdzgee5uMurLMSkElY1l58D0Rc3Uexfz+N68EJMeigEcjvWa5
	uquov0NlXf3cA22AI5iKlKBH9OOMC+CC3Ahj3BFX5VgjQI588wP39mRpdyeXIbZ2
	XIT29D9FnmzEmWW55ewlRtI/6ktb6qxzSm4HO8TJnVamfG6AKDShV2CZaXgqXI0I
	m4lBISV5/gVDXWOhxIhhiG9FGkTRgtvaXX5SVDXv5E9jYyFWaBLwaQHCtuxz+N/A
	NYkNExSQWlqWnQciYvlmtDo+wNsL4BlbBQdxG5yMWuF1bda0kjQQNUPH+JQtSFy1
	fWy0dPvpwpOJFrrCO7jezqFTOor+VXIqxPg==
X-ME-Sender: <xms:D2GUaf2O25wWYLIEmRXgUjAZu1hQ2t2frOQo-_LOMOcWsihO8hQmkw>
    <xme:D2GUaUHPwhtsHUcS9osX5M_-m1U20SiNl2EEu0Z0a476UBam0btHDzAkN7QsfmeOl
    daaYi6TQ-h5oeQ1GiEQkSfI97sB5zhFeVx4tGLb4VwwYE9LiQxlu2o>
X-ME-Received: <xmr:D2GUadiaW3oizL3jqxfp-hnx6JqBRbeSVHcxGXttKbjqZQ6Z4ni26-V5AututWBh-ORZzYyO6siiwn1QzuAc2KHRDXqxzUMwqtPhH3tro8tgCI2t>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvudeljeekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjfgesghdtre
    ertderjeenucfhrhhomhepufgvthhhucfotgffohhnrghlugcuoeguvghvsehsvghthhhm
    rdhiugdrrghuqeenucggtffrrghtthgvrhhnpeejfedtueevhfdthefgfeevfffhvdfhgf
    egteduffetgeefffejhfeuueetleevffenucffohhmrghinhepmhhighgrughurdgtohhm
    pdhkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpeguvghvsehsvghthhhmrdhiugdrrghupdhnsggprhgtphhtthhopedv
    pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegrlhigsehkvghrnhgvlhdrohhrgh
    dprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:D2GUaf9GGZ18AP0MjQ-jfbDb2GoXWYBK1qaD3MosZNDBt4RBy9JQ8g>
    <xmx:D2GUaUrSZhhTn3_VhwSKUBvpRQyJ5tVX37VwluEtuepFjt9U2F_23g>
    <xmx:D2GUae_whWp16F9AeXLlvQjO0t-SsydjyzbtN9lZzoslVZ_wIj4xug>
    <xmx:D2GUaYUCZ-u38WmCPaVbtftCPxzAgDCFefdf1NJksHX-GMFZh0Rvng>
    <xmx:EGGUaff5osEPw8OLu1aLBq3CV9YS00Q9BZIethZ4IdYp4P87-0_9L2k1>
Feedback-ID: i35064beb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 17 Feb 2026 07:37:35 -0500 (EST)
Date: Tue, 17 Feb 2026 22:37:28 +1000
From: Seth McDonald <dev@sethm.id.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 0/1] man/man2/*: Update history of syscalls H-M
Message-ID: <019c6b7c-ba8d-72e1-be96-ab6e6b8eb535@sethm.id.au>
Mail-Followup-To: Seth McDonald <dev@sethm.id.au>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <cover.1769429341.git.sethmcmail@pm.me>
 <cover.1771232583.git.dev@sethm.id.au>
 <aZMeuDza3H4tVbgu@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8dQaealj6u1U64Ki"
Content-Disposition: inline
In-Reply-To: <aZMeuDza3H4tVbgu@devuan>
User-Agent: Mutt/2.2.13 (2024-03-09)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sethm.id.au,reject];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[sethm.id.au:s=fm1,messagingengine.com:s=fm3];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5147-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[sethm.id.au:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@sethm.id.au,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim]
X-Rspamd-Queue-Id: 6B42E14C053
X-Rspamd-Action: no action


--8dQaealj6u1U64Ki
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Mon, 16 Feb 2026 at 14:57:06 +0100, Alejandro Colomar wrote:
> I personally use Migadu <https://migadu.com/>.  I've had a very good
> experience with them, and they're very quick in fixing any bugs I report
> to them.  If Fastmail works fine for you, that's great!

I'm actually quite surprised I didn't come across them.  I tried looking
at every email provider (even considered Purelymail, which I believe is
currently a 2-3 person project).  Migadu do look great from their
website, so I'll keep them in mind as a good backup.

> BTW, the ubuntu keyserver shows the existence of a non-revoked key that
> is probably old?
>=20
> 	pub (4)eddsa263/82b9620e53d0a1ae2d696111c267b0020a900289 2024-12-06T06:5=
3:33Z
>=20
> It contains two UIDs, one of which is revoked, but the other is not
> revoked:
[...]
> Is it intentionaly that you revoked the UID instead of the key?

That actually was intentional.  The two signatures on my key are of the
keys I used with my Proton emails; I signed it to show that I'm indeed
the same person despite the different email address.

I added the second UID to imply that of the two keys, if someone wanted
to send me encrypted email, they should use the one whose UID states
"email encryption".  But since I'm no longer planning on those being my
main email addresses, I revoked the "email encryption" UID.  But my
Proton address does still use that key, so I didn't revoke the whole
thing.

> > Let me know if it's still corrupt, and I'll =CC=B6k=CC=B6i=CC=B6c=CC=B6=
k=CC=B6 =CC=B6m=CC=B6y=CC=B6 =CC=B6P=CC=B6C calmly figure out
> > what's going on.
>=20
> It worked.  :)

Well that's certainly a relief!

Btw, did the strikethrough text render correctly for you?  It renders as
strikethrough for me on mutt(1) and vim(1), but it looks -l-i-k-e-=20
-t-h-i-s on the lore.kernel.org archive.

Take care,
	Seth McDonald.

--=20
E9D1 26A5 F0D4 9DF7 792B  C2E2 B4BF 4530 D39B 2D51

--8dQaealj6u1U64Ki
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.4.7

iHUEARYKAB0WIQTp0Sal8NSd93krwuK0v0Uw05stUQUCaZRhAQAKCRC0v0Uw05st
UWd8APoCeD6dCALk3ZHojOOEOl+uM6L1KI8C29rrlFZviE0rawD/Yo6D+cJ/77yz
VQN0FOqZgSEoYXhMOnr/9Pn3MBkJYQU=
=ivyW
-----END PGP SIGNATURE-----

--8dQaealj6u1U64Ki--

