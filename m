Return-Path: <linux-man+bounces-5701-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UEaUF3TlTGrXrgEAu9opvQ
	(envelope-from <linux-man+bounces-5701-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 13:39:32 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B7E71B04E
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 13:39:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="gjxeI/eP";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5701-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5701-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D994D301A1D9
	for <lists+linux-man@lfdr.de>; Tue,  7 Jul 2026 11:31:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 742463F824A;
	Tue,  7 Jul 2026 11:31:37 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39CB3F8239
	for <linux-man@vger.kernel.org>; Tue,  7 Jul 2026 11:31:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783423897; cv=none; b=VvEAWl92izEXDjS5OAr0i0xoJjBUhZWWsb4am/8NMPjQtioyStaV6kMv0dxp74GwoPPloAfV3Gg5Ma81GnvDYdJYJSjhrS/oiT+auL69KQw3Mfu+qnoK6nF4UJ9UAenDOJDnQEa0J2HawK8Tud/MGK4PjMTwb46qLSq9iED6u30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783423897; c=relaxed/simple;
	bh=qrjp5hFyk4skT03mBoRekTdXNgGjuCLwrhxPqsJnRo8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Swm6c2E5ia18YzC4JpYvy2vTSeNNfc3lw4dTs5lXWNH1FU4VnCeDPnUpizd6Q15wic9W9l53jxONqWXeN20UD3VQ+wGR4jyv8j6zPy1xOEDRCt8dif+HLf9YZ2xKsqC3R2GXy8jnPXhzS3VgzUU/Q1aNNuLI3ZOstG/ZdrD3sms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjxeI/eP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D0D61F000E9;
	Tue,  7 Jul 2026 11:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783423895;
	bh=5btbMRfPtjke71LbUrQHzA6F3VsXRdT5HG1MFJuHM/M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gjxeI/eP4CgmSSWL5tT9qZ0bA3HWXqOJSVXgKGbzXZcZjd/2CTxRGDPcFKulNe2IE
	 XbhFrIQRIeocz5XLAsyKRX2xklW+GidxOe6yC9lTQJ8v3MbWHrxW9Et5s150yAwn+D
	 mN5c4WCMZC4IdI/7Kk0N1vVWbeDAU9BY12F2zktZDBoJRvThI73zxIiXGT/jHVs1nq
	 YI3OzIcatPEfgQXIRj9tUHW3hytgEnk89MaBperju2U99NddmrHBbGDIMGvJp1i4Vm
	 6vPXyEwBBWNCdmKhecLePWXMfqFteq0mpSm01rFf3ndwUReLJvCbK/uFkB+JJJAZqz
	 2vosArt8hOCqQ==
Date: Tue, 7 Jul 2026 13:31:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man7/environ.7: Fix underspecification of
 "name=value" strings
Message-ID: <akziEjm7cgrNTmGT@devuan>
References: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>
 <74bea4adebbd24979b9a072d518f1f202a788674.1783421176.git.jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="phr2aqi5efhftwmn"
Content-Disposition: inline
In-Reply-To: <74bea4adebbd24979b9a072d518f1f202a788674.1783421176.git.jason@jasonyundt.email>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jason@jasonyundt.email,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5701-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,alejandro-colomar.es:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,jasonyundt.email:email,codeberg.org:url,devuan:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A2B7E71B04E


--phr2aqi5efhftwmn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jason Yundt <jason@jasonyundt.email>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man7/environ.7: Fix underspecification of
 "name=value" strings
Message-ID: <akziEjm7cgrNTmGT@devuan>
References: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>
 <74bea4adebbd24979b9a072d518f1f202a788674.1783421176.git.jason@jasonyundt.email>
MIME-Version: 1.0
In-Reply-To: <74bea4adebbd24979b9a072d518f1f202a788674.1783421176.git.jason@jasonyundt.email>

Hi Jason,

On 2026-07-07T06:53:26-0400, Jason Yundt wrote:
> Before this change, environ(7) said this:
>=20
> > By convention, the strings in environ have the form "name=3Dvalue".  The
> > name is case-sensitive and may not contain the character "=3D".  The
> > value can be anything that can be represented as a string.  The name
> > and the value may not contain an embedded null byte ('\0'), since this
> > is assumed to terminate the string.
>=20
> That description has a few problems:
>=20
> 1. It talks about =E2=80=98the character "=3D"=E2=80=99, but it doesn=E2=
=80=99t specify what
>    character encoding would be used to represent that character.  Two
>    different character encodings could represent that same =E2=80=9C=3D=
=E2=80=9D character
>    using two different bytes (or even sequences of bytes).
>=20
> 2. It mentions that =E2=80=98The name is case-sensitive and may not conta=
in the
>    character "=3D".=E2=80=99  It doesn=E2=80=99t clearly say what what is=
 allowed to be in
>    a name.  It only says that those two things are explicitly
>    disallowed.
>=20
> This change fixes those two problems.  For the first problem, this
> change makes it so that the description is all about bytes, not
> characters.  Describing the format in terms of bytes allows us to
> sidestep the question of character encoding entirely.  Additionally, it
> is more accurate to describe strings in environ as being sequences of
> bytes instead of sequences of characters.  Both the name and value of an
> environment variable could be sequences of bytes that don=E2=80=99t conta=
in any
> characters at all.
>=20
> For the second problem, this change clarifies that the name of an
> environment variable can contain any byte except for 0x3D.  It also
> clarifies that while it=E2=80=99s OK for environment variable values to be
> empty, it=E2=80=99s not OK for environment variable names to be empty.
>=20
> Additionally, this change replaces "=3D" with '=3D'.  In the C programming
> language, "=3D" refers to two bytes: one for the equals character plus one
> for the terminating null byte.  In the C programming language, '=3D'
> refers to a single byte.  In this particular instance, we=E2=80=99re talk=
ing
> about a single byte, so it=E2=80=99s better to use '=3D'.  Using '=3D' al=
so makes
> environ(7) more internally consistent.  Before this change, environ(7)
> used '\0' and "=3D".  This change makes it so that environ(7) uses '\0'
> and '=3D'.

I like the change from this paragraph.  If you send a separate patch
with only this change, I'll apply it.

>=20
> I was able to obtain obtain the information that I needed in order to
> create this change by writing two test programs:
>=20
> show-env-var-bytes.c:
>=20
> 	#include <stdio.h>
> 	#include <stdlib.h>
>=20
> 	void print_string_bytes(char *s) {
> 		printf("\"");
> 		for (size_t i =3D 0; s[i] !=3D '\0'; i++) {
> 			printf("\\x%02hhX", s[i]);
> 		}
> 		printf("\"\n");
> 	}
>=20
> 	int main(int argc, char *argv[]) {
> 		if (argc !=3D 2) {
> 			fprintf(stderr, "USAGE: %s <NAME>\n", argv[0]);
> 			return EXIT_FAILURE;
> 		}
> 		printf("Name: ");
> 		print_string_bytes(argv[1]);
> 		char *getenv_result =3D getenv(argv[1]);
> 		if (getenv_result =3D=3D NULL) {
> 			fprintf(stderr, "Environment variable not found.\n");
> 			return EXIT_FAILURE;
> 		}
> 		printf("Value: ");
> 		print_string_bytes(getenv_result);
> 	}
>=20
> set-env-var-then-show-bytes.c:
>=20
> 	#include <stdbool.h>
> 	#include <stdio.h>
> 	#include <stdlib.h>
> 	#include <string.h>
> 	#include <unistd.h>
>=20
> 	char *every_nonnull_byte(bool exclude_3d_byte);
> 	char *environ_item(char *name, char *value);
>=20
> 	char *every_nonnull_byte(bool exclude_3d_byte) {
> 		char           *ret;
> 		size_t         i =3D 0, size =3D 256;

Unused variable 'i'.

> 		unsigned char  byte =3D '\1';
>=20
> 		if (exclude_3d_byte)
> 			size -=3D 1;
> 		ret =3D malloc(size);
> 		for (size_t i =3D 0; i < (size - 1); i++) {
> 			if (exclude_3d_byte && byte =3D=3D '\x3D') {
> 				byte++;
> 			}
> 			ret[i] =3D byte;
> 			byte++;
> 		}
> 		ret[size - 1] =3D '\0';
> 		return ret;
> 	}
>=20
> 	char *environ_item(char *name, char *value) {
> 		char  *ret =3D malloc(strlen(name) + 1 + strlen(value) + 1);
>=20
> 		sprintf(ret, "%s\x3D%s", name, value);
> 		return ret;
> 	}
>=20
> 	int main(int argc, char *argv[]) {
> 		char *name =3D every_nonnull_byte(true);
> 		char *value =3D every_nonnull_byte(false);
> 		char *env[] =3D { environ_item(name, value), NULL };
>=20
> 		if (argc !=3D 2) {
> 			fprintf(stderr, "USAGE: %s <PATH>\n", argv[0]);
> 			return EXIT_FAILURE;
> 		}
>=20
> 		execle(argv[1], argv[1], name, NULL, env);
> 		perror("execle() failed");
> 		free(name);
> 		free(value);
> 		free(env[0]);
> 		return EXIT_FAILURE;
> 	}
>=20
> Once those two programs are compiled you can run them by running this
> command:
>=20
>     ./set-env-var-then-show-bytes ./show-env-var-bytes

I think these programs don't prove what happens on a system with an
encoding incompatible with ASCII.  I think if you compile glibc on an
EBDIC-based system (if that is possible at all, which I ignore), you'll
get the behavior based on '=3D' and not 0x3D.  I think this is required by
POSIX.  0x3D is not special.

Of course, if your system is a mix of ASCII and EBDIC, you have
a problem: glibc might have been compiled as ASCII (and thus use 0x3D)
and your program might be using something else.


Cheers,
Alex

> Additionally, I got the information about the setenv(3) and unsetenv(3)
> functions from their man pages (specifically, the parts of their man pages
> that talk about EINVAL).
>=20
> Signed-off-by: Jason Yundt <jason@jasonyundt.email>
> ---
>  man/man7/environ.7 | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man7/environ.7 b/man/man7/environ.7
> index 31a69017cf75..89d48991e8b7 100644
> --- a/man/man7/environ.7
> +++ b/man/man7/environ.7
> @@ -28,9 +28,19 @@ .SH DESCRIPTION
>  .I environ
>  have the form
>  .RI \[dq] name\f[B]=3D\f[]value \[dq].
> -The name is case-sensitive and may not contain
> -the character
> -.RB \[dq] =3D \[dq].
> +The name is case-sensitive
> +and may contain any nonnull byte
> +other than 0x3D (the
> +.BR ascii (7)
> +.RB \[aq] =3D \[aq]
> +character).
> +The name must be at least one byte long,
> +or else programs will not be able to manipulate it using the
> +.BR setenv (3)
> +or
> +.BR unsetenv (3)
> +functions.
> +Immediately after the name, there must be a 0x3D byte.
>  The value can be anything that can be represented as a string.
>  The name and the value may not contain an embedded null byte (\[aq]\[rs]=
0\[aq]),
>  since this is assumed to terminate the string.
>=20
> Range-diff against v1:
> 1:  d5b0d9b86029 ! 1:  74bea4adebbd man/man7/environ.7: Fix underspecific=
ation of "name=3Dvalue" strings
>     @@ Commit message
>          and '=3D'.
>     =20
>          I was able to obtain obtain the information that I needed in ord=
er to
>     -    create this change by writing a test program.  You can find the =
test
>     -    program here [1].  Additionally, I got the information about the=
 setenv(3)
>     -    and unsetenv(3) functions from their man pages (specifically, th=
e parts
>     -    of their man pages that talk about EINVAL).
>     +    create this change by writing two test programs:
>     =20
>     -    [1]: <https://codeberg.org/JasonYundt/environ-format-example-pro=
gram>
>     +    show-env-var-bytes.c:
>     +
>     +            #include <stdio.h>
>     +            #include <stdlib.h>
>     +
>     +            void print_string_bytes(char *s) {
>     +                    printf("\"");
>     +                    for (size_t i =3D 0; s[i] !=3D '\0'; i++) {
>     +                            printf("\\x%02hhX", s[i]);
>     +                    }
>     +                    printf("\"\n");
>     +            }
>     +
>     +            int main(int argc, char *argv[]) {
>     +                    if (argc !=3D 2) {
>     +                            fprintf(stderr, "USAGE: %s <NAME>\n", ar=
gv[0]);
>     +                            return EXIT_FAILURE;
>     +                    }
>     +                    printf("Name: ");
>     +                    print_string_bytes(argv[1]);
>     +                    char *getenv_result =3D getenv(argv[1]);
>     +                    if (getenv_result =3D=3D NULL) {
>     +                            fprintf(stderr, "Environment variable no=
t found.\n");
>     +                            return EXIT_FAILURE;
>     +                    }
>     +                    printf("Value: ");
>     +                    print_string_bytes(getenv_result);
>     +            }
>     +
>     +    set-env-var-then-show-bytes.c:
>     +
>     +            #include <stdbool.h>
>     +            #include <stdio.h>
>     +            #include <stdlib.h>
>     +            #include <string.h>
>     +            #include <unistd.h>
>     +
>     +            char *every_nonnull_byte(bool exclude_3d_byte);
>     +            char *environ_item(char *name, char *value);
>     +
>     +            char *every_nonnull_byte(bool exclude_3d_byte) {
>     +                    char           *ret;
>     +                    size_t         i =3D 0, size =3D 256;
>     +                    unsigned char  byte =3D '\1';
>     +
>     +                    if (exclude_3d_byte)
>     +                            size -=3D 1;
>     +                    ret =3D malloc(size);
>     +                    for (size_t i =3D 0; i < (size - 1); i++) {
>     +                            if (exclude_3d_byte && byte =3D=3D '\x3D=
') {
>     +                                    byte++;
>     +                            }
>     +                            ret[i] =3D byte;
>     +                            byte++;
>     +                    }
>     +                    ret[size - 1] =3D '\0';
>     +                    return ret;
>     +            }
>     +
>     +            char *environ_item(char *name, char *value) {
>     +                    char  *ret =3D malloc(strlen(name) + 1 + strlen(=
value) + 1);
>     +
>     +                    sprintf(ret, "%s\x3D%s", name, value);
>     +                    return ret;
>     +            }
>     +
>     +            int main(int argc, char *argv[]) {
>     +                    char *name =3D every_nonnull_byte(true);
>     +                    char *value =3D every_nonnull_byte(false);
>     +                    char *env[] =3D { environ_item(name, value), NUL=
L };
>     +
>     +                    if (argc !=3D 2) {
>     +                            fprintf(stderr, "USAGE: %s <PATH>\n", ar=
gv[0]);
>     +                            return EXIT_FAILURE;
>     +                    }
>     +
>     +                    execle(argv[1], argv[1], name, NULL, env);
>     +                    perror("execle() failed");
>     +                    free(name);
>     +                    free(value);
>     +                    free(env[0]);
>     +                    return EXIT_FAILURE;
>     +            }
>     +
>     +    Once those two programs are compiled you can run them by running=
 this
>     +    command:
>     +
>     +        ./set-env-var-then-show-bytes ./show-env-var-bytes
>     +
>     +    Additionally, I got the information about the setenv(3) and unse=
tenv(3)
>     +    functions from their man pages (specifically, the parts of their=
 man pages
>     +    that talk about EINVAL).
>     =20
>          Signed-off-by: Jason Yundt <jason@jasonyundt.email>
>     =20
>     @@ man/man7/environ.7: .SH DESCRIPTION
>      -The name is case-sensitive and may not contain
>      -the character
>      -.RB \[dq] =3D \[dq].
>     --The value can be anything that can be represented as a string.
>     --The name and the value may not contain an embedded null byte (\[aq]=
\[rs]0\[aq]),
>     --since this is assumed to terminate the string.
>      +The name is case-sensitive
>     -+and may contain any byte
>     -+other than null (\[aq]\[rs]0\[aq]) and 0x3D (the
>     ++and may contain any nonnull byte
>     ++other than 0x3D (the
>      +.BR ascii (7)
>      +.RB \[aq] =3D \[aq]
>      +character).
>     @@ man/man7/environ.7: .SH DESCRIPTION
>      +or
>      +.BR unsetenv (3)
>      +functions.
>     -+Immediately after the name, there should be a 0x3D byte.
>     -+Immediately after the 0x3D byte is the value.
>     -+The value may contain any byte except for null.
>     -+The value may be zero bytes long.
>     -+Immediately after the value, there must be a terminating null byte.
>     - .P
>     - Environment variables may be placed in the shell's environment by t=
he
>     - .I export
>     ++Immediately after the name, there must be a 0x3D byte.
>     + The value can be anything that can be represented as a string.
>     + The name and the value may not contain an embedded null byte (\[aq]=
\[rs]0\[aq]),
>     + since this is assumed to terminate the string.
> --=20
> 2.54.0
>=20

--=20
<https://www.alejandro-colomar.es>

--phr2aqi5efhftwmn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpM45IACgkQ64mZXMKQ
wqkTeA/7Bqk9/5SWpYf7VGCtJQjqnUR6mc5rzT7hvKE68v78j3EdGz2dxJhbqHIw
umC+aQ+GbRl+euIbpYDDSvEplX7TvUA+CfVVBuOE7Wjh3AkGrUQ+hyLxg/ZyMskj
VZzt+Afc5Tj6tt7Ol55aMh/VSU5gtFuPTdPyA43PMvjRVmAQW2eLY8XbfyUaQWOJ
TOhvA5GFUre9Yh5l/cys/09AZRGbUnpnWoWK9+i71OiFgVh1ZubFKVrOL3W9cShw
DkgQdFqj8ErmbpeL6RnVOE8eP8cd58WU+dHS5D6X7wla8iAsyNbMczwhqQDvjSqz
KkfO8zA2Q+l/83DTmZP44SbXuS6rECGPu5mmf5xMERRhGlMC78TCKSnSxEUL8Vtp
Ch+grOCQtNlLIr2CDPAoYiIX5WipuEfBDaQhC93uw7MRtNVSJfRMaToyxM0jplnj
28YurQEdWYUwFAHaBtvW6gZRoFvE0sDQucqjuVPJebpSLj1wjYMWIzYmfan3gDX7
zJ6A32TN/hVS0OSFtl78j8WyTjcTdAs5jGe4UrWnuYTNKajmoSLpnIbh3JjnoCGY
OtSiDom0s/wcNE1iC+VANYyj+7HrEcFT4CqB5PzqicEd6ao2eV+A51bBCpu+0r4R
DQ9wguMbIeVE3x4YHtK0MgnMbG13o95cCI2arm63nG2mHj0DwdE=
=AYcq
-----END PGP SIGNATURE-----

--phr2aqi5efhftwmn--

