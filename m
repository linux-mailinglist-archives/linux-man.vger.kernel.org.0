Return-Path: <linux-man+bounces-4893-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QI0tLfQHcWmPcQAAu9opvQ
	(envelope-from <linux-man+bounces-4893-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 18:08:04 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C85E5A4EF
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 18:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 060917498D7
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 15:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9D0A4D8DA9;
	Wed, 21 Jan 2026 14:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8HeM47W"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0DF4D8DAA
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 14:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769007362; cv=none; b=RWVyq9TMy83eQ7Gb4uanvrhuIrYUrU3JucaAAuYK1ApD86PrCiNAT5DwqO46LeEV5PKn7mpEGX1dDu4zI2VygF77NShFVG5C6yQ4x5L4+5izuTA1gOT//aM1LwDubjM4xBLik2KshH/9zP4FxmuLt+6sPnvhKCtdrONIZhmTFRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769007362; c=relaxed/simple;
	bh=PwjNF40Y5q6kWS7hpvtFCvH88GLMqxoqmrCQlLtjhdA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BzR3FENcDfh1as7qBdE/lK3GjmTlPr+Vwi3JFNmEJ8En8lHib2/MmEVhUWFprlbX9P+AZdb5JtO//yaqwUxzKZUSG9bidtpDCIUKKV7LhZRRBMw98EkHHPCF3x29L5FeVpRIecgt3A1F8USYiEXPPrPhGHhfQgBZe0UZbcZooc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8HeM47W; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 681A1C4CEF1;
	Wed, 21 Jan 2026 14:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769007361;
	bh=PwjNF40Y5q6kWS7hpvtFCvH88GLMqxoqmrCQlLtjhdA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M8HeM47W4t3bRyFf0CC7xxO8T58vDrZSD/W0OYknFKjgxwYWepiFIfazQjEt3ijWN
	 PPaKiBVLXYY3lX2zQZ3LwxDex5HmgnMWCg8exUU94NjrA4fS+Ff3B+ldScC6/2m7dD
	 bM46sCw0Mb3nM5ggJI4qH1VEiHGlGI6/jQ/hyW25zYt8/g8g9Ix8/RY9K5l15jqsRa
	 aoua/No6x1kIB2EKFeq2GKs4NvDjD/nc7YnZxDwEOkWtGhGEN0ww3nTueAEVddgEcM
	 cflIlmMvKUdxxKcJeRo4lpGNtsicQ8uR4wtZoZzp0ifJ8Y9DtYM6/N87TuHuUhhtMT
	 NUrSWo+Kz6DvA==
Date: Wed, 21 Jan 2026 15:55:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/19] man/man2/*: Update history of syscalls A-CH
Message-ID: <aXDn6FlxJsX7u-GB@devuan>
References: <35lZsvMN8xE1C1VDR8Qwz4lNsKFkEYnumVqGPHg7F6k0_GLk6Oqnz9-k9owiHRCszhZCqwDE9BFR73d3nCqawQ==@protonmail.internalid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="thmqc5ccstasudaz"
Content-Disposition: inline
In-Reply-To: <35lZsvMN8xE1C1VDR8Qwz4lNsKFkEYnumVqGPHg7F6k0_GLk6Oqnz9-k9owiHRCszhZCqwDE9BFR73d3nCqawQ==@protonmail.internalid>
X-Spamd-Result: default: False [-3.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4893-lists,linux-man=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 5C85E5A4EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--thmqc5ccstasudaz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/19] man/man2/*: Update history of syscalls A-CH
Message-ID: <aXDn6FlxJsX7u-GB@devuan>
References: <35lZsvMN8xE1C1VDR8Qwz4lNsKFkEYnumVqGPHg7F6k0_GLk6Oqnz9-k9owiHRCszhZCqwDE9BFR73d3nCqawQ==@protonmail.internalid>
MIME-Version: 1.0
In-Reply-To: <35lZsvMN8xE1C1VDR8Qwz4lNsKFkEYnumVqGPHg7F6k0_GLk6Oqnz9-k9owiHRCszhZCqwDE9BFR73d3nCqawQ==@protonmail.internalid>

Hi Seth,

On Wed, Jan 21, 2026 at 11:14:34AM +0000, Seth McDonald wrote:
> Hi Alex,
>=20
> On Tue, Jan 20, 2026 at 02:50:22AM +0100, Alejandro Colomar wrote:
> > Hi Seth,
> >=20
> > On Mon, Jan 19, 2026 at 11:54:29AM +0000, Seth McDonald wrote:
> [...]
> > > And on another note, I think I've found a way to stop Proton Mail from
> > > corrupting patches.  So my patches should henceforth all be PGP-signe=
d,
> > > assuming my workaround is sufficient.
> >=20
> > Yup; that worked!  All patches were correctly signed, and none were
> > corrupted (or at least I didn't notice).  Out of curiosity, what was the
> > workaround?
>=20
> tl;dr: The solution was surprisingly simple: just always use
> quoted-printable or base64 for the email's transfer encoding.
>=20
> Because I did not want to associate my Gmail address with my PGP key(s)
> (I very rarely use it), I spent a good while trying to figure out why
> Proton Mail was corrupting my patches.  And specifically, I continually
> experimented with different patches to see if I could predict exactly
> when and where any corruption would occur (scientific method ftw!).
>=20
> This included trying out different combinations of options for
> git-send-email(1), including those which I previously had no
> understanding of.  And I eventually found that, given the same email,
> executing git-send-email(1) with the --transfer-encoding option set to
> '7bit' or '8bit' would produce the same corrupted patch, but with it set
> to 'quoted-printable' or 'base64' the patch would remain intact.
>=20
> I also found that the mangling was deterministic.  The same email is
> always mangled the same way.  And the mangling always occurs via the
> insertion of line breaks into the email contents.
>=20
> Not only that, but (and this is the weirdest part) if we treat line
> breaks as two characters (i.e. as CRLF), then every line break is
> inserted exactly every 1000 characters.  If you go back to the first
> corrupted patch I sent in and count from the start of the text/plain
> contents, you should find two out-of-place line breaks both 1000
> characters apart (again, counting line breaks as two characters).
>=20
> After doing some research with this information, my guess as to what's
> happening is Proton Mail is getting an email from an external source,
> and checking it to ensure it conforms to the semantics of the specified
> content transfer encoding.  Including that lines are no longer than 998
> characters and line breaks use CRLF when using 7bit or 8bit encodings.
> But may not correctly reset its line length/character count to zero when
> encountering an LF and changing it to CRLF.  And so thinks that the
> email is one giant line, and inserts line breaks every 1000 characters
> to "fix" it.
>=20
> This is just a guess though.  And regardless of the actual cause, I've
> reported the bug with this information (and more) to Proton.  So
> hopefully it'll be fixed sometime.

Wow!  Nice analysis!  I hope they fix it.  :)

> > And how did you sign the patches?  Was it with neomutt(1)? =20
>=20
> The way I set up my email workflow is with Proton Mail Bridge, which
> creates a local SMTP server I can use to send emails via mutt(1),
> git-send-email(1), etc.  I have it configured to by default sign all
> emails I send with the corresponding PGP key.  That way, any email I
> send with mutt(1) or git-send-email(1) should be automatically signed.
>=20
> Now, yes, I am aware that a third party (Proton) having access to an
> (encrypted w/ my password) store of the private key I use can arguably
> defeat the purpose of using PGP.  After all, only *I* should ever have
> access to it.  And in principle I 100% agree.  But since my personal
> threat model currently doesn't include being a state target, I don't
> see the need to change my workflow.  (But who knows, seeing how the US
> is currently going, I may be compelled to change that...)
>=20
> Besides, I also have a separate PGP key I keep *only* on a physical
> security key which I use for most non-email situations.  Such as
> encrypting documents and signing commits.  If I ever need extra
> assurance for authenticity or encryption, this is the key I use.

Thanks!  I'll keep that in mind for special situations.  For now, if
it's more comfortable to you, I guess what you're corrently doing is
relatively fine.  But as you say, it might not be a good idea in the
long term.  ;)


Cheers,
Alex

> --=20
> Take care,
> 	Seth McDonald.
>=20
> On-list:  2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369
> Off-list: 82B9 620E 53D0 A1AE 2D69  6111 C267 B002 0A90 0289

--=20
<https://www.alejandro-colomar.es>

--thmqc5ccstasudaz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlw6PYACgkQ64mZXMKQ
wqmSzhAAmM0lyvoU9Rii8mjWGiJTPdz1gPQC+fenfQ8ERbWDKR6xSZS6zoIDgnV/
zLBCuTU5IlbPaKRAUkv1uCHMPDATALAxham/Fa57mER1/VmU71Jlv5Omq/cwlyKt
VA6ezkSHb5vbrzvO6FqZzz07x3ftXPD1fYR5+ATyAgv+MZcR7eGtxo9kqwU0HO57
Go+n3hAFu1/wj0IPFqusPPEbWoQXFqKk8XpJReDg/kqrzEemMZaqExLGy4Dn4rnq
33REoZGSQx4tZQgPjtK9eGdwsGUcAEhU8LfIieC2jZWqd/vGbEEboWh+MY2T+K0a
B+NCDO7IF0DHEqg5Y11bU3N7CdiY5eMwib8SfLLEzM8Vrgi6ijmoesORoBI/DmVF
JMC4bvIPemhgQnHUvil6dHQL1+P2XEYsmq9vgnvaVcxvMRRc2c8ultcq7zsJbYHn
AkY2ZxPCQWY5KqltiNll/8vN1YED74JVE+26SvjqGu2TzH4RngnDu6i/PS0XxQ5I
fZB/s/Rpy90aNRVg7tt3cjZ1nabzBjtjvbe1MjA/IboiptG4ILA9n6XEW63wUnKU
Co8j8+yXVi5HumquWlRvjfrWoIF3RuYtMBlUDPgG8XUrgkBVBgd5H05qtv+XZb3K
3SBOFGN7qTlcLy1q1NGlQvZpGDMSgCuv3gvn+9Tm+2YR0pib46w=
=aVKu
-----END PGP SIGNATURE-----

--thmqc5ccstasudaz--

