Return-Path: <linux-man+bounces-5557-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKfTM3SPC2p1IwUAu9opvQ
	(envelope-from <linux-man+bounces-5557-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2026 00:15:16 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AD85745C5
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2026 00:15:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E300300CE4E
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 22:15:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B218F39C632;
	Mon, 18 May 2026 22:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYo4fbfy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C953921E4
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 22:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779142506; cv=none; b=JNtG06bMegOoPwzBIpB21Ge03gLVuP/Q70taUloHBvYIR+uxgSwkttO44LxKTVtm7w906VK1k/bX6a/BCkMTXoTn+5tRxiWmLO2Mli8CTjeDrKpTCPdUSgahJ7voS8cp7ivy6QyEuG60TF02yWlBs5HFjcSXVCyE6oN/i6IBPfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779142506; c=relaxed/simple;
	bh=auGORRY43BQGM6cgvmCZ/0CQBJoe+kQRaPSJ9AXs+II=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OEeez6yFXuISew2yCrqAIvWYRfkobdeDPyO84wkPB03KHPnRq72LNneiJA5kMQ66wsMWruDg9WS9wLGFCEcNskxtFw6+4gzxvRHMt9DtL1S8K9H5w4wHRxtnStGIXID3oofyvpC9BC+3icnsZA5FUggvlR4gJDe+wX9w5un0cLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYo4fbfy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E2B6C2BCB7;
	Mon, 18 May 2026 22:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779142506;
	bh=auGORRY43BQGM6cgvmCZ/0CQBJoe+kQRaPSJ9AXs+II=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lYo4fbfyO/pTKRKTV/xq/6YoXWNBrvoNqTeaEF97a/M1SyZ7KfrR4n+4Sbnc+CVOn
	 2pVFX82JPIUPtoUxbAX47QEDnkLsVPprPICX33tIy/4IfTyomqfqx1VbOrbyHFgnkz
	 HVT/Y8VmRBA1J1CIr+ipyzoDx7npqrgPROB8eDZz0DU9MCPwIRODLbWZPrNyMT7RRa
	 e+f0kK1xWR/+x8UvBu8QK+fsQoWtAQP4sQRO3v90Z40yuOOQIgEtL8P+CRuDrOMHqf
	 qI5W5vdkw7BCi2/XY6DsGHrnvnclOSX6dqTttzfx+fKB/NyBVIXi2k2vN+HDm4sX8U
	 FaOUmHIGYu47Q==
Date: Tue, 19 May 2026 00:15:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: funsafemath <funsafemath@proton.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Document seccomp flags
Message-ID: <aguPU8LynijI5dS5@devuan>
References: <agjZM97qL3w4JZBX@nix-mail>
 <agqDvDQsWJG4Pw4q@nix-mail>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="txzrmsks2frkkude"
Content-Disposition: inline
In-Reply-To: <agqDvDQsWJG4Pw4q@nix-mail>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5557-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,proton.me:email]
X-Rspamd-Queue-Id: 31AD85745C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--txzrmsks2frkkude
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: funsafemath <funsafemath@proton.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Document seccomp flags
Message-ID: <aguPU8LynijI5dS5@devuan>
References: <agjZM97qL3w4JZBX@nix-mail>
 <agqDvDQsWJG4Pw4q@nix-mail>
MIME-Version: 1.0
In-Reply-To: <agqDvDQsWJG4Pw4q@nix-mail>

Hi,

On 2026-05-18T04:13:08+0100, funsafemath wrote:
> Hello,
>=20
> Yes, a libc wrapper would return -1, I've changed the wording and applied=
 other suggestions.
>=20
> funsafemath (2):
>   man/man2/seccomp.2: Document SECCOMP_FILTER_FLAG_TSYNC_ESRCH
>   man/man2/seccomp.2: Document SECCOMP_FILTER_FLAG_WAIT_KILLABLE_RECV

Thanks!  I've applied both patches.


Have a lovely night!
Alex

>=20
>  man/man2/seccomp.2 | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>=20
> Range-diff against v1:
> 1:  c3c3b728b ! 1:  fec59f483 man/man2/seccomp.2: Document SECCOMP_FILTER=
_FLAG_TSYNC_ESRCH
>     @@ Commit message
>     =20
>          <https://lore.kernel.org/r/20200304180517.23867-1-tycho@tycho.ws>
>     =20
>     +    Signed-off-by: funsafemath <funsafemath@proton.me>
>     +
>       ## man/man2/seccomp.2 ##
>      @@ man/man2/seccomp.2: .SH DESCRIPTION
>       .B SECCOMP_MODE_STRICT
>     @@ man/man2/seccomp.2: .SH DESCRIPTION
>      +.TP
>      +.BR SECCOMP_FILTER_FLAG_TSYNC_ESRCH " (since Linux 5.7)"
>      +.\" commit 51891498f2da78ee64dfad88fa53c9e85fb50abf
>     -+Return
>     ++Fail with
>      +.B ESRCH
>     -+instead of the thread ID on synchronization failure if
>     -+.B  SECCOMP_FILTER_FLAG_TSYNC
>     ++instead of returning the thread ID on synchronization failure if
>     ++.B SECCOMP_FILTER_FLAG_TSYNC
>      +was specified.
>      +.IP
>      +If this flag is not set, using
> 2:  423b0141b ! 2:  8ead033b8 man/man2/seccomp.2: Document SECCOMP_FILTER=
_FLAG_WAIT_KILLABLE_RECV
>     @@ Commit message
>     =20
>          Relevant kernel documentation: <Documentation/userspace-api/secc=
omp_filter.rst>
>     =20
>     +    Signed-off-by: funsafemath <funsafemath@proton.me>
>     +
>       ## man/man2/seccomp.2 ##
>      @@ man/man2/seccomp.2: .SH DESCRIPTION
>       .B SECCOMP_FILTER_FLAG_TSYNC
>     @@ man/man2/seccomp.2: .SH DESCRIPTION
>      +.\" commit c2aa2dfef243efe213a480a1ee8566507a5152f4
>      +Ignore non-fatal signals until the supervisor sends a response.
>      +.IP
>     ++The
>      +.B SECCOMP_FILTER_FLAG_NEW_LISTENER
>      +flag must be set.
>       .RE
> --=20
> 2.52.0
>=20



--=20
<https://www.alejandro-colomar.es>

--txzrmsks2frkkude
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoLj2YACgkQ64mZXMKQ
wqmaRxAAlpT7es2ExM4b88jCCnFiDR/xri67gANBB2capnXWDhIydb+DLK847xCk
EUF38F7GJ96fp00yXYsMRFpQCu2KNSNMr1HLN5Z2qw4bO3UqcdrsLlEVhlX+SpSF
0ld+y6AwL/tGiMVoA7UkBiupSJTIkKSK7KuokDsNmZ8Wmw14PilIUQCn845m9byE
SkFt1NN9mCr1EakExHnmvFK4pnDAKDHViI0AUZMpFDq/DkC9kEy+FjSWuJ2nEP9k
M16Hw++/3iLmoUnbniN16ulfsFaRbcGG4+nI9v8oTHQVkLpcVGflGU8Sg5/C7L3M
WVNU9rWtd+oTUs5CI5E/XoGRlUFvRHWvjPsu0cMZvuR0qTkbTl7aH3McjMTPrEsZ
GxD0q6grN14BCjSz2NH9w9lWb+81lJsembefnkPLuO07uUrDVb5ZRdL5nscU+Vsj
3lyWwVyhgNksivHpwBuH6JC8bkHSDBOOCSV6l0WXC2bjAIVraS25LT5wGEZaPHTj
v3OsqduceNeDz1uh0FXFUeAoxP4bgZnDkrxRz8S8c50xa7riFrH3n9H7gPawbWg2
aLxTBDEGAcs7jFvp2XsvmRDD5BJ+iIpa/K7EqK8NmAOQXDerObhS8DvWi//uw55j
IbuH6H3vHkOzVAt2+Hv7+Tpz/WkN2CY6Zn+2O2Xpa0OzZtHLbqI=
=kA52
-----END PGP SIGNATURE-----

--txzrmsks2frkkude--

