Return-Path: <linux-man+bounces-5002-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPMREVpve2mMEgIAu9opvQ
	(envelope-from <linux-man+bounces-5002-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 15:31:54 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 54453B0F85
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 15:31:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5FA38300292C
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 14:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC8C625B1DA;
	Thu, 29 Jan 2026 14:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHG/bSnu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DDB3254AF5
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 14:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769697107; cv=none; b=uV9K7ZdBgsjtqO17tt4vGbqvfT7vkNf6qwYLvH7TebM1hPPwNIAe/H6e5tpBv2SHYAKWSQar9i5jeajItBEAA987+VrCFWF0LrHAplVzW4I0GHEfMUegd3P7tWDtbO+wyjO07Us21Jc/kc+35uHbRsqSMQMn7TIYhyqkPp+CMac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769697107; c=relaxed/simple;
	bh=8LMSr1zYM/FVlHvGTOA/uv6enkX/OcymlORyZ6IG5qw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tEuyI70swzcfugB1xJ3AF5YNu3OrXTA1ABWWoC+s+QVYP6t4SyYZsDR/aAJDr3iaaNGWl46cEPSbm8InGuop7yRz4vsCG3TCuIQsBL9EfAVPWrWUO+grcfo5NqrkWss4VeZFsFdgELq0isanqqFZaaj6BvykQ/SE8P5APl2rgSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHG/bSnu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10B41C4CEF7;
	Thu, 29 Jan 2026 14:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769697107;
	bh=8LMSr1zYM/FVlHvGTOA/uv6enkX/OcymlORyZ6IG5qw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mHG/bSnuIIBCeTF7MxrNk6LhVdcq41ivdjB+4eFHkrghxR7ddkIOekxYIZLGr81Dm
	 1E2vOMLayU+Os6kpn0Q9K1ioZD657e50ZIGP4uQavjme5TJtqlR7VnhbAhRtHuC1Zk
	 DjBXcvtPvTq8pDR8Dq6tYdxIgdsadVu/+NY+TZD0+z7UtW/pyCcfO8cj++yOFMz8LP
	 mXOztVORR4c3mTKVgIlwtUqLCqc1FGiXmpimFP616TL6zGwh6dOr1t9xaQ8r/O/J6B
	 m5wr9TNzcbMXW/Z/tlJCvmYDCpHjDYnzJ321RVGUO1j+itdddRNSR9Uv4IhWvDJv5x
	 XdTdE1cRqpAfw==
Date: Thu, 29 Jan 2026 15:31:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: New PARAMETERS section in manual pages (was: [PATCH v2]
 src/bin/mansectf, man/man1/mansectf.1: Add program and manual page)
Message-ID: <aXtuXfFTn2VjD5z3@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
 <aXr1G4Y2VZZO0t3N@McDaDebianPC>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bkszznkajwmbxvy7"
Content-Disposition: inline
In-Reply-To: <aXr1G4Y2VZZO0t3N@McDaDebianPC>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5002-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,devuan:email]
X-Rspamd-Queue-Id: 54453B0F85
X-Rspamd-Action: no action


--bkszznkajwmbxvy7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: New PARAMETERS section in manual pages (was: [PATCH v2]
 src/bin/mansectf, man/man1/mansectf.1: Add program and manual page)
Message-ID: <aXtuXfFTn2VjD5z3@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
 <aXr1G4Y2VZZO0t3N@McDaDebianPC>
MIME-Version: 1.0
In-Reply-To: <aXr1G4Y2VZZO0t3N@McDaDebianPC>

Hi Seth,

On 2026-01-29T05:50:26+0000, Seth McDonald wrote:
> Hi Alex,
>=20
> On Wed, 28 Jan 2026 at 19:55:43 +0100, Alejandro Colomar wrote:
> [...]
> > +.SH PARAMETERS
> > +See
> > +.BR mansect (1).
>=20
> (If this isn't a problem then feel free to skip this)
>=20
> AFAICT, 'PARAMETERS' isn't a heading used anywhere else.  Running
>=20
> 	~/Code/Linux/man-pages$ grep -Fnr 'PARAMETERS' man/
>=20
> comes up empty for me (besides mansectf(1) of course).  Perhaps instead
> the DESCRIPTION can explicitly state this.  Something akin to "This
> command uses the same interface as mansect(1)."

That heading is used in FreeBSD.  There's also an ARGUMENTS section in
other pages, but parameters is technically more correct.

	alx@devuan:~/src/bsd/freebsd/main$ find -type f | grep '\.[123]$' | xargs =
grep '^\.S[Hh] PARAMETERS' | wc -l
	49
	alx@devuan:~/src/bsd/freebsd/main$ find -type f | grep '\.[123]$' | xargs =
grep '^\.S[Hh] ARGUMENTS' | wc -l
	49

<https://man.freebsd.org/cgi/man.cgi?query=3Drdma_get_local_addr&apropos=3D=
0&sektion=3D0&manpath=3DFreeBSD+15.0-RELEASE+and+Ports&arch=3Ddefault&forma=
t=3Dhtml>
<https://man.freebsd.org/cgi/man.cgi?query=3Drpc_gss_set_svc_name&apropos=
=3D0&sektion=3D0&manpath=3DFreeBSD+15.0-RELEASE+and+Ports&arch=3Ddefault&fo=
rmat=3Dhtml>

I've been wanting to add this section for some time.  It would make the
pages more schematic, which I think improves readability.

What I wonder is wether it should go before or after the description.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--bkszznkajwmbxvy7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml7b0kACgkQ64mZXMKQ
wqndlQ//VD4T+t6U4MQ3Tu0Z4nzGwGJiY4Rusx7A0pf5R9aFUMH9fvQzLWJavZm+
AxYsLdG1wXBf46gTm7zTtV9sG5hRNTks9NYH4n+xAYMsNpm8p2ba5STPyEoYJgI5
E2GYdYn4OhF7aN8JMMmG2QVBpKRkBmTNIM3hKED49SJUcBJ3FNBEdBlNMNPr9Imx
A6d6GbTE9moEHVFW/mwOZbhEa8rc0wqdLm7lZv/Ikg7w8Rl7659kFTrm3OyfYAPW
Wwp2F+TTdfIG5ZYcmpoMeY07+OyoGItpg1c/IgLwW/nEy+a7Ug73K/zi2mrgcF5o
MQfPGQFPxykLvDvSZlQG2Gbp0msbLv4SsZBR0/4QWzBcADrJ03Yge3kI0fNmUlQl
+jnGQUuWxECrH5YDSGkJ1+rn0Tt/OjKQhi1OzY2hJKJAtYgqWQFtITQhE0k41S7O
Ow9BPv/mgruTgH03bQo2BxquWLpF2jDqOZibINvEPTuN726LzLH9sJBSjlKY4nzB
+/u7VtwftiTnNCxFZjk1bGtvB0iHlXAbRGJSYLUAq7vTErh1omfeTBBLfWm5IRlo
iv6inpbe+6RKbxeOg1LDDwC4FIEw5skpawF0FZvh3GLWTmZjW8h+86d3VZZxD39t
scHIUctz9MLBzmvwjaGSRyaWGbIFYaPrdJj0+6LqvnHKRme9VlU=
=lkMG
-----END PGP SIGNATURE-----

--bkszznkajwmbxvy7--

