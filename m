Return-Path: <linux-man+bounces-5475-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDdYMTnY/Wl2jgAAu9opvQ
	(envelope-from <linux-man+bounces-5475-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 08 May 2026 14:34:01 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 338E74F669B
	for <lists+linux-man@lfdr.de>; Fri, 08 May 2026 14:34:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1DBA33016B62
	for <lists+linux-man@lfdr.de>; Fri,  8 May 2026 12:34:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADF513DDDCA;
	Fri,  8 May 2026 12:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/k2Vmv+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84FD3DDDA3
	for <linux-man@vger.kernel.org>; Fri,  8 May 2026 12:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778243636; cv=none; b=iaLzdGlMMLYyTGQqmeXsXByu2Ct2ZZeoxMb3SCbHrd2QQ7CFXEJR/irsF+HC0q6gezefNqR6P1zR60A4D2WpzSS/Z0KrN+2jIW4Fwgk5QX4n1KDAZv7L6SYy1dVGJjBMw4Z24FFZTHBWm8P25qy/IiDCw3Jf/TXbsk4h4H+xRyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778243636; c=relaxed/simple;
	bh=CIFNpt+BmXKiuwtpUy1kxtAOO+qUwffI1qnFcX2Yb7E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y4VXK4+5mH38qu7cf5bzYAyUCR+ukPh2a0OfX35c7Ac7jCcsNke+HeKKBMh3yv7UKZM64rIF+PB53JpREBlWoq6iErAo5VN9VScuVqfSknWVB+1Ev/jQ91o95IviW+8Jeq7oggjR0G4NDLJMhRgd9B5ptHeDNdLnw5egQQjzB5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/k2Vmv+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FC97C2BCB0;
	Fri,  8 May 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778243635;
	bh=CIFNpt+BmXKiuwtpUy1kxtAOO+qUwffI1qnFcX2Yb7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p/k2Vmv+LpM2kSkPkQ2/4azQ/pCt5tnJOlFE/2sDSfyZrDmuSEmAeJ0TrSmdloH6k
	 Omr8NnXhCItzqW+ssZ9f66ZKFQgZwZB4xVRkBr4/lFvPh7StmYc7PT8dTIaNI/lp/h
	 t1+CIUQCRBi7IenH5Pwj/NsURV2v9etvYTWILOXeJ9UuN4MGUD1DEtL9xgPFNJXr79
	 BXc7ggwX94Hsoc5O4EtAVaocST86VcBGRcHlMWLk4P3XLu/3rOQ3Z8z/MOy6V1vZjD
	 l0r0z11mOkomK+rDd7y2Kc/H1IMjMxf1PG/PRPqS4Idrp4Wi+rQmhLr+0p1QXlMQvM
	 Zsa2F1ZNPWZuw==
Date: Fri, 8 May 2026 14:33:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Garrett Wollman <wollman@bimajority.org>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, 
	linux-man <linux-man@vger.kernel.org>, kleink <kleink@netbsd.org>
Subject: Re: mkstemp(3)
Message-ID: <af2KFQI7aPjcyMMq@devuan>
References: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>
 <afzrREof611q7MIX@devuan>
 <27133.498.654796.822374@hergotha.csail.mit.edu>
 <CAKH6PiWALYokfQtUdmhWPXJpyTSHKFAruZPd1qjG9W71om7DPg@mail.gmail.com>
 <27133.19262.184587.893784@hergotha.csail.mit.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fegnmbjwe64gpw6d"
Content-Disposition: inline
In-Reply-To: <27133.19262.184587.893784@hergotha.csail.mit.edu>
X-Rspamd-Queue-Id: 338E74F669B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5475-lists,linux-man=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devuan:email,dartmouth.edu:email,alejandro-colomar.es:url]
X-Rspamd-Action: no action


--fegnmbjwe64gpw6d
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Garrett Wollman <wollman@bimajority.org>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, 
	linux-man <linux-man@vger.kernel.org>, kleink <kleink@netbsd.org>
Subject: Re: mkstemp(3)
Message-ID: <af2KFQI7aPjcyMMq@devuan>
References: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>
 <afzrREof611q7MIX@devuan>
 <27133.498.654796.822374@hergotha.csail.mit.edu>
 <CAKH6PiWALYokfQtUdmhWPXJpyTSHKFAruZPd1qjG9W71om7DPg@mail.gmail.com>
 <27133.19262.184587.893784@hergotha.csail.mit.edu>
MIME-Version: 1.0
In-Reply-To: <27133.19262.184587.893784@hergotha.csail.mit.edu>

Hi Doug, Garrett,

On 2026-05-07T22:32:30-0400, Garrett Wollman wrote:
> <<On Thu, 7 May 2026 21:34:03 -0400, Douglas McIlroy <douglas.mcilroy@dar=
tmouth.edu> said:
>=20
> > Posix System Interfaces Section 2.2 tells me that I should #define
> > _POSIX_C_SOURCE before #include <stdlib.h>. That fact is missing from
> > Linux's man 3 mkstemp.  Arguably the Posix description of mkstemp
> > should mention it, too.

It is mentioned in this part (see the bottom of the SYNOPSIS):

	 Feature Test Macro Requirements for glibc (see feature_test_macros(7)):

	     mkstemp():
		 _XOPEN_SOURCE >=3D 500
		     || /* glibc >=3D 2.12: */ _POSIX_C_SOURCE >=3D 200809L
		     || /* glibc <=3D 2.19: */ _SVID_SOURCE || _BSD_SOURCE

To be honest, I've never liked that format too much, and think it would
be more readable as this:

		#define _XOPEN_SOURCE  500
		#include <stdlib.h>

		int mkstemp(char *template);

> <div class=3D"standards-lawyering">
> Conveniently, POSIX.1-2008 removed mkstemp from the XSI option and
> made it standard (shaded only CX and not XSI) so in 2008 and newer,
> you don't have to define _XOPEN_SOURCE.  You do have to set the
> correct _POSIX_C_SOURCE value for the standard your implementation
> confirms to,

Hmmm, I should probably give more preference to _POSIX_C_SOURCE in the
manual page.  Thanks!

> which currently means that you can only use C17 in
> POSIX.1-2024 and cannot use C23 at all.

Well, you could technically ask for a combination of both, by doing:
-D_POSIX_C_SOURCE=3D200809L -std=3Dc23.  Then it's up to the compiler and
libc to decide what to do with such a petition, but since POSIX usually
only adds ISO C-compatible APIs, it shouldn't be problematic.

> This may be the source of the confusion: for ISO C, "the
> implementation" is the compiler, header files, and standard library,
> so your C23 compiler ships with versions of those that meet the
> requirements of the C23 standard.  For POSIX on the other hand, "the
> implementation" is the entire operating system, which must support one
> and only one specific version of ISO C.  It is up to your operating
> system supplier (e.g. Linux distro packager) to build a <stdlib.h>
> that meets the requirements of POSIX if they want to claim to be
> POSIX-compliant.  (Very likely they don't actually care about formal
> compliance.)
>=20
> An application that uses C23 features (or indeed that is compiled with
> anything other than the POSIX.1-2024 `c17` utility) is not a
> conforming POSIX application and its behavior is undefined.  (Likewise
> POSIX.1-2008 requires compilation with the `c99` utility, since that
> standard is aligned to C99.)
> </div>

Interestingly, c99(1) is defined by POSIX to only need to accept an
ISO C-conforming program, and thus it doesn't support POSIX interfaces
added to <stdlib.h>.  I'm not sure if this is intentional.

	alx@devuan:~/tmp$ cat test.c=20
	#include <stdlib.h>

	int
	main(void)
	{
		mkstemp("foo");
	}
	alx@devuan:~/tmp$ c99 test.c=20
	test.c: In function =E2=80=98main=E2=80=99:
	test.c:6:9: error: implicit declaration of function =E2=80=98mkstemp=E2=80=
=99 [-Wimplicit-function-declaration]
	    6 |         mkstemp("foo");
	      |         ^~~~~~~

This is with GCC and glibc.  I don't have c17(1) in my system; maybe GCC
has not cared to add it.


Have a lovely day!
Alex

> -GAWollman

--=20
<https://www.alejandro-colomar.es>

--fegnmbjwe64gpw6d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmn92CkACgkQ64mZXMKQ
wqlSIQ//QNYAQPb3QHF1fnpsa/J8yOoYgS59vZVGArsiqMYG9xbXvhzKSysQVTcQ
hGhC2ROJI/jqjO9+hyiBC/V/OuIvKy1QERjmtDmv03q95SY59y0BnCBRyZ2/OeXG
cI1Ip62wxLI/C4psj+Wp749064RY5aXoX9N0Y1GKiyXGq991y+K9h7ttGsXL4M9Q
Mxh5d+TcF8dfWi5EI1spTLDUk5ISc4llnEj9BxCiw+NAyf3vQt5I4bIUkxhtFMSc
cDF5PcPv/N+ciRKyUYINuTnDj6P7xhxTX245vHzYzNWFzd4Xd1tpST1VlfO+MPr0
KppXrvlnBboV4zN6/0twyRY5k5rwNVKRjFVGIO5L2DeTxYEpRInCyf23G0HQG6sP
OTPYct7o0sGXdpzYjXB3b5LZivRMX79dfdBLmp5YlFexfnEaSz/+Lw7xoihUprNK
dZkginuuOl4oNh7RtHxXise1kDSwdD0sPa0QtyJV2d5gnH5NhI0y4BwIsLHfCHe/
Idh8vWzmYb0Qk7GADbrW6BDk7YmKJZDu85zZqDU46EUJs60GwJjD3ujpI4yEvyTk
Y+lu0ThodrxTgfNRQmaApCgAn7dTmM6+ocF7JWklsNCk7+mJ/aaLew/b4yBPM1fu
FdFqAtK7uabw3SLCVaN+JdUW31N5PIx80CEZzp2kRN7AzCEmpHk=
=YFMF
-----END PGP SIGNATURE-----

--fegnmbjwe64gpw6d--

