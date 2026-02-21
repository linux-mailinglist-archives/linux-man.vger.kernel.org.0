Return-Path: <linux-man+bounces-5172-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ED6GK0kUmmmeYQMAu9opvQ
	(envelope-from <linux-man+bounces-5172-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:23:37 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D206916DCED
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:23:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4638C301FE5B
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 20:23:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59A0F36828E;
	Sat, 21 Feb 2026 20:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=permerror (0-bit key) header.d=josefsson.org header.i=@josefsson.org header.b="JZPHURK9";
	dkim=temperror (0-bit key) header.d=josefsson.org header.i=@josefsson.org header.b="xfGxriUN"
X-Original-To: linux-man@vger.kernel.org
Received: from uggla.sjd.se (uggla.sjd.se [178.174.241.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F9636606E
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 20:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.174.241.107
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771705411; cv=none; b=lCXTQ6v2jP2Mis+WhHEgxiT+eFG4bBiRN8IIq0ylC3ZgzvM5bM9pKBUI8wrWnoGUN0do0P90qsSeUigQdmh5YiOKvY2p6FeMqJsj2nyKjnyuSgLcRDMFuV/NTxi/9hKW7jNG/+bszaKU5pY0b2Du3omNpT+OfBzZ7IqPTV+qshU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771705411; c=relaxed/simple;
	bh=CaxHXMPd0clmr59EEeiHHu18QfObAPnG7IcxP8nRsTc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=A39EdmWyG5vFYkyN/2tPPTc40Sj8YNRK5GCtueZ8Fm2rujbehkwDhJS5pMXLFmoXTz7q3t2CZKQQ8vXPMkveKPrZ1j39JPaP/SHSA72m6ZrqQfsKy6qwfPb0gQv4XZX/44BN+qdAO7eHYSGUVmTzKHCm/LLK8mThZSYvdDy9fho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=josefsson.org; spf=pass smtp.mailfrom=josefsson.org; dkim=permerror (0-bit key) header.d=josefsson.org header.i=@josefsson.org header.b=JZPHURK9; dkim=temperror (0-bit key) header.d=josefsson.org header.i=@josefsson.org header.b=xfGxriUN; arc=none smtp.client-ip=178.174.241.107
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=josefsson.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=josefsson.org
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=ed2303; h=Content-Type:MIME-Version:Message-ID:Date:
	References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=HrKDhnuZlpy4YtKnPzMxrInJf9WdLU4/rK76v27VXH0=; t=1771705402; x=1772915002; 
	b=JZPHURK9mTMSFK4221p+U/obRBwZYunrMDqWgwwCW0uicX0IhDCU/4fnKQ8zEepbupWLGVH2vu8
	1VCRVAMXnBw==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=rsa2303; h=Content-Type:MIME-Version:Message-ID:Date:
	References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=HrKDhnuZlpy4YtKnPzMxrInJf9WdLU4/rK76v27VXH0=; t=1771705402; x=1772915002; 
	b=xfGxriUNH3WfoEHoqZif3IRfXiJGkM4f/9/cOUHRvciefxArFdrf0uJ3OatIiGmar6rHDexZ53u
	IHoKlO1JNqf8S0ZZZyqQBkJloS1OrCPovsoem+GKBX3wSuktsDR6k1UOUDJOjlahcuBwL3yY+qp7h
	GbJ9ThdGqdYX/oQhRnrPrfnn9UkCxbKTDfmuSYVPvxuOmP9jV3ojGfebC3YpgUcgtI1ggSCMdQu92
	lAW3jlT4KHB0VRJZ1rDCFInROiF7tDL0iLiuEBkbvOXqabEZMX+MRmUllZJRwQjfCpWeSr22asT4+
	ucCzdoHUpgAd60bK/fxx+08LjRP6JzrY1LmAtiz4JGWs3lLXZMRIAAM9N/3IxeqtmqLofRzBxER6I
	m/vFIE0hvpgtk5ohqDRbjh6saVqNcEcJRNd2Rf1JLPHjER30CdJzfzSVWqwEhBif42PtxloGQ;
Received: from h-178-174-130-130.a498.priv.bahnhof.se ([178.174.130.130]:43196 helo=frallan)
	by uggla.sjd.se with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <simon@josefsson.org>)
	id 1vttBU-00G04B-VP;
	Sat, 21 Feb 2026 20:02:37 +0000
From: Simon Josefsson <simon@josefsson.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
  linux-man@vger.kernel.org,  bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
In-Reply-To: <aZoMp9gUNpU6rGo4@devuan> (Alejandro Colomar's message of "Sat,
	21 Feb 2026 20:56:05 +0100")
References: <cover.1771686088.git.alx@kernel.org>
	<7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
	<20260221174142.5e6xufffrawahxsp@illithid> <aZoMp9gUNpU6rGo4@devuan>
OpenPGP: id=B1D2BD1375BECB784CF4F8C4D73CF638C53C06BE;
 url=https://josefsson.org/key-20190320.txt
X-Hashcash: 1:23:260221:g.branden.robinson@gmail.com::uWxAuq9gXcMihsOf:3FhK
X-Hashcash: 1:23:260221:alx@kernel.org::HG0bTBR6mvq2hsRi:6oii
X-Hashcash: 1:23:260221:linux-man@vger.kernel.org::T7evu9iXLYKUWCk+:bZOy
X-Hashcash: 1:23:260221:bug-gnulib@gnu.org::0BZtXgW5NnrS1ck7:0TKtM
Date: Sat, 21 Feb 2026 21:02:49 +0100
Message-ID: <87fr6t7tli.fsf@josefsson.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[josefsson.org,quarantine];
	R_DKIM_ALLOW(-0.20)[josefsson.org:s=ed2303,josefsson.org:s=rsa2303];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5172-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,gnu.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[simon@josefsson.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[josefsson.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[josefsson.org:mid,josefsson.org:dkim]
X-Rspamd-Queue-Id: D206916DCED
X-Rspamd-Action: no action

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Alejandro Colomar <alx@kernel.org> writes:

> Hi Branden,
>
> On 2026-02-21T11:41:42-0600, G. Branden Robinson wrote:
>> Hi Alex,
>>=20
>> At 2026-02-21T16:02:52+0100, Alejandro Colomar wrote:
>> > +.SH RETURN VALUE
>> > +.IR s+strlen(s) .
>>=20
>> Too cute, in my opinion.  Use English.  :)
>
> The thing is, at first I thought, am I going to repeat the same exact
> words as in the DESCRIPTION?
>
> DESCRIPTION
>      strnul() returns a pointer to the terminating null byte in the
>      string s.
>
> RETURN VALUE
>      strnul() returns a pointer to the terminating null byte in the
>      string s.
>
> I could remove the DESCRIPTION altogether...  What would you do?

Use the same style as for strlen:

DESCRIPTION
       The  strlen() function calculates the length of the string pointed t=
o by
       s, excluding the terminating null byte ('\0').

RETURN VALUE
       The strlen() function returns the number of bytes in the string  poi=
nted
       to by s.

One says what it does, the other says what it returns.

/Simon

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQNoBAEWCgMQFiEEo8ychwudMQq61M8vUXIrCP5HRaIFAmmaD2kUHHNpbW9uQGpv
c2Vmc3Nvbi5vcmfCHCYAmDMEXJLOtBYJKwYBBAHaRw8BAQdACIcrZIvhrxDBkK9f
V+QlTmXxo2naObDuGtw58YaxlOu0JVNpbW9uIEpvc2Vmc3NvbiA8c2ltb25Aam9z
ZWZzc29uLm9yZz6IlgQTFggAPgIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgBYh
BLHSvRN1vst4TPT4xNc89jjFPAa+BQJn0XQkBQkNZGbwAAoJENc89jjFPAa+BtIA
/iR73CfBurG9y8pASh3cbGOMHpDZfMAtosu6jbpO69GHAP4p7l57d+iVty2VQMsx
+3TCSAvZkpr4P/FuTzZ8JZe8BrgzBFySz4EWCSsGAQQB2kcPAQEHQOxTCIOaeXAx
I2hIX4HK9bQTpNVei708oNr1Klm8qCGKiPUEGBYIACYCGwIWIQSx0r0Tdb7LeEz0
+MTXPPY4xTwGvgUCZ9F0SgUJDWRmSQCBdiAEGRYIAB0WIQSjzJyHC50xCrrUzy9R
cisI/kdFogUCXJLPgQAKCRBRcisI/kdFoqdMAQCgH45aseZgIrwKOvUOA9QfsmeE
8GZHYNuFHmM9FEQS6AD6A4x5aYvoY6lo98pgtw2HPDhmcCXFItjXCrV4A0GmJA4J
ENc89jjFPAa+wUUBAO64fbZek6FPlRK0DrlWsrjCXuLi6PUxyzCAY6lG2nhUAQC6
qobB9mkZlZ0qihy1x4JRtflqFcqqT9n7iUZkCDIiDbg4BFySz2oSCisGAQQBl1UB
BQEBB0AxlRumDW6nZY7A+VCfek9VpEx6PJmdJyYPt3lNHMd6HAMBCAeIfgQYFggA
JgIbDBYhBLHSvRN1vst4TPT4xNc89jjFPAa+BQJn0XTSBQkNZGboAAoJENc89jjF
PAa+0M0BAPPRq73kLnHYNDMniVBOzUdi2XeF32idjEWWfjvyIJUOAP4wZ+ALxIeh
is3Uw2BzGZE6ttXQ2Q+DeCJO3TPpIqaXDAAKCRBRcisI/kdFomUPAQCrSrRabgWZ
cnWV2HkYN26ys8e82cqi7I1fJDP54TJF4wD/VDajMK0a52TTRi7Yv8hzzrrHE/F/
zzpTgvd87XHQtgA=
=Ssz5
-----END PGP SIGNATURE-----
--=-=-=--

