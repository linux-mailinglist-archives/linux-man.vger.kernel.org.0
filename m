Return-Path: <linux-man+bounces-4318-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E34BC81CBE
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 18:06:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D84094E95AF
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 17:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E052B2BEC2D;
	Mon, 24 Nov 2025 17:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXamqYbG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04B5A59
	for <linux-man@vger.kernel.org>; Mon, 24 Nov 2025 17:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764003812; cv=none; b=S5h9yMOWSeGDrvsSeiG/ORoLRatv3Ll+k/C072rYc6KwgomFWWORWwOY3qYkhnAuTNA2Xw9WERpCXksItUmELAQJu2IUqyQtkWT4PPuhqo2ecdFJTlsyTdJ1WIYMFURqCqBdV6vpvU4DWZUGTZ9Guw8ux3D13GBjEk/csR0fRv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764003812; c=relaxed/simple;
	bh=R1IWpFPYfc3wLgmYD9Z81L+LdLjsFqN+cuP+yQSMb1I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LyEFwAqIkUwagl+TH5Yv0UhcJ9VJ/Y4s5NFX2NVQmpdT9Pv9B6G7wRxsnsUTkqsQ+JovmpCKehxoemxd131u3tyeQtSbXX1Z4UCERixW3tM5FP1C9cwj1ni0f6pxZSQxcq0KYK6pNYybbZE+ARvNPJezH95J0hrOUiZ/SkhNHFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXamqYbG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B9D1C4CEF1;
	Mon, 24 Nov 2025 17:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764003812;
	bh=R1IWpFPYfc3wLgmYD9Z81L+LdLjsFqN+cuP+yQSMb1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gXamqYbGh881YK57dVCd7cYx5jTr/2A0HFAQgl+yjZrc79xlilc8CpjkvGgTQG4O8
	 63Gb+ldhKR+PeR7ejJn4HRn04WAGz5UGQBZE21Jp9WuPmF1IVXpSxphwERluItRrUc
	 R9gwljk4yopoFtkC+QIXkYze1eLwLkVyTI3NCOG9blOh5i4SRJxPd09ZT0w7cNkgNV
	 qeF+DKIHbF7dXZ4mTtZec0xXzUiSupOHFtg0NEeEly0I7NuFFsL+4IUBPKrPWIHljl
	 sZ2nkuHCNjKItlLpL98sHjNpqtfJOMolY/TQ5+f3EXg9MJnEE8Bn4N7bfyd3IV5Mp8
	 sNL5p71FD5ESQ==
Date: Mon, 24 Nov 2025 18:03:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Davin McCall <davmac@davmac.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Possible error in capabilities(7)
Message-ID: <aslvhaxfplm7t2cp2qget2lsvzrpuojg4pnysvrjfrohvhnv53@ahs72ynlphew>
References: <b7f25b3a-5618-139d-9f10-ba2f6ec1dff9@davmac.org>
 <n4vyah4lmdwlfopbtk7z74jvxhgbeu764eqzhimrlt6w6bel6o@hbfw2lnzxvd6>
 <92d24905-48a6-c100-e7e6-54918b576e08@davmac.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s3ya36doxvfvhxq3"
Content-Disposition: inline
In-Reply-To: <92d24905-48a6-c100-e7e6-54918b576e08@davmac.org>


--s3ya36doxvfvhxq3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Davin McCall <davmac@davmac.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Possible error in capabilities(7)
Message-ID: <aslvhaxfplm7t2cp2qget2lsvzrpuojg4pnysvrjfrohvhnv53@ahs72ynlphew>
References: <b7f25b3a-5618-139d-9f10-ba2f6ec1dff9@davmac.org>
 <n4vyah4lmdwlfopbtk7z74jvxhgbeu764eqzhimrlt6w6bel6o@hbfw2lnzxvd6>
 <92d24905-48a6-c100-e7e6-54918b576e08@davmac.org>
MIME-Version: 1.0
In-Reply-To: <92d24905-48a6-c100-e7e6-54918b576e08@davmac.org>

On Thu, Sep 11, 2025 at 07:32:58PM +1000, Davin McCall wrote:
> Hi Alejandro,

Hi Davin,

> > Could you please execute a shell session that experiments with this and
> > shows the exact behavior so that we can compare that with the wording?
>=20
> I used the following C program:
>=20
> --- begin ---
> #include <unistd.h>
> #include <stdlib.h>
> #include <stdio.h>
> #include <sys/capability.h>
>=20
> int main(int argc, char **argv) {
> =C2=A0=C2=A0=C2=A0 cap_t proc_caps =3D cap_get_proc();

The email seems to be corrupted.

	$ gcc -Wall -Wextra foo.c |& head
	foo.c: In function =E2=80=98main=E2=80=99:
	foo.c:17:1: error: implicit declaration of function =E2=80=98or=E2=80=99 [=
-Wimplicit-function-declaration]
	   17 | or("cap_to_text");
	      | ^~
	foo.c:18:1: error: stray =E2=80=98\302=E2=80=99 in program
	   18 | <U+00A0><U+00A0><U+00A0><U+00A0><U+00A0><U+00A0><U+00A0> return EX=
IT_FAILURE;
	      | ^~~~~~~~
	foo.c:18:2: error: stray =E2=80=98\302=E2=80=99 in program
	   18 | <U+00A0><U+00A0><U+00A0><U+00A0><U+00A0><U+00A0><U+00A0> return EX=
IT_FAILURE;
	      |         ^~~~~~~~


Have a lovely day!
Alex


> =C2=A0=C2=A0=C2=A0 int have_net =3D cap_get_ambient(CAP_NET_BIND_SERVICE);
> =C2=A0=C2=A0=C2=A0 cap_flag_value_t have_net_fv;
> =C2=A0=C2=A0=C2=A0 cap_flag_value_t have_chown_fv;
>=20
> =C2=A0=C2=A0=C2=A0 int recurse =3D (argc !=3D 2);
>=20
> =C2=A0=C2=A0=C2=A0 ssize_t cap_text_len;
> =C2=A0=C2=A0=C2=A0 char *cap_text =3D cap_to_text(proc_caps, &cap_text_le=
n);
> =C2=A0=C2=A0=C2=A0 if (cap_text =3D=3D NULL) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 perror("cap_to_text");
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return EXIT_FAILURE;
> =C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0 printf("Capabilities: %s\n", cap_text);
>=20
> =C2=A0=C2=A0=C2=A0 if (cap_get_flag(proc_caps, CAP_NET_BIND_SERVICE, CAP_=
PERMITTED,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &have_=
net_fv) !=3D 0) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 perror("cap_get_flag maybe fai=
led idk");
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return EXIT_FAILURE;
> =C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0 printf("Have P=C2=A0 CAP_NET_BIND_SERVICE?: %d\n", (in=
t)have_net_fv);
>=20
> =C2=A0=C2=A0=C2=A0 if (cap_get_flag(proc_caps, CAP_NET_BIND_SERVICE, CAP_=
INHERITABLE,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &have_=
net_fv) !=3D 0) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 perror("cap_get_flag maybe fai=
led idk");
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return EXIT_FAILURE;
> =C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0 printf("Have I=C2=A0 CAP_NET_BIND_SERVICE?: %d\n", (in=
t)have_net_fv);
>=20
> =C2=A0=C2=A0=C2=A0 if (cap_get_flag(proc_caps, CAP_CHOWN, CAP_PERMITTED,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &have_=
net_fv) !=3D 0) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 perror("cap_get_flag maybe fai=
led idk");
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return EXIT_FAILURE;
> =C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0 printf("Have P=C2=A0 CAP_CHOWN?: %d\n", (int)have_net_=
fv);
>=20
> =C2=A0=C2=A0=C2=A0 if (cap_get_flag(proc_caps, CAP_CHOWN, CAP_INHERITABLE,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &have_=
net_fv) !=3D 0) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 perror("cap_get_flag maybe fai=
led idk");
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return EXIT_FAILURE;
> =C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0 printf("Have I=C2=A0 CAP_CHOWN?: %d\n", (int)have_net_=
fv);
>=20
>=20
> =C2=A0=C2=A0=C2=A0 cap_iab_t cap_iabs =3D cap_iab_get_proc();
> =C2=A0=C2=A0=C2=A0 if (!cap_iabs) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 perror("cap_iab_get_proc");
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return EXIT_FAILURE;
> =C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0 printf("Have IAB (I) CAP_NET_BIND_SERVICE? %d\n",
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cap_iab_get_vector(cap_iabs, C=
AP_IAB_INH, CAP_NET_BIND_SERVICE));
> =C2=A0=C2=A0=C2=A0 printf("Have IAB (B) CAP_NET_BIND_SERVICE? %d\n",
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cap_iab_get_vector(cap_iabs, C=
AP_IAB_BOUND, CAP_NET_BIND_SERVICE));
> =C2=A0=C2=A0=C2=A0 printf("Have IAB (I) CAP_CHOWN? %d\n",
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cap_iab_get_vector(cap_iabs, C=
AP_IAB_INH, CAP_CHOWN));
> =C2=A0=C2=A0=C2=A0 printf("Have IAB (B) CAP_CHOWN? %d\n",
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cap_iab_get_vector(cap_iabs, C=
AP_IAB_BOUND, CAP_CHOWN));
>=20
> =C2=A0=C2=A0=C2=A0 // Set the following:
> =C2=A0=C2=A0=C2=A0 // CAP_CHOWN blocked, CAP_NET_BIND_SERVICE blocked but
> =C2=A0=C2=A0=C2=A0 // also inheritable:
> =C2=A0=C2=A0=C2=A0 cap_iab_t cap_txt_iabs =3D
> cap_iab_from_text("!CAP_CHOWN,!%CAP_NET_BIND_SERVICE");
>=20
> =C2=A0=C2=A0=C2=A0 if (!cap_txt_iabs) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 perror("cap_iab_from_text");
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return EXIT_FAILURE;
> =C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0 if (cap_iab_set_proc(cap_txt_iabs) !=3D 0) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 perror("cap_iab_set_proc");
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return EXIT_FAILURE;
> =C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0 if (recurse) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 execl(argv[0], argv[0], "norec=
urse", NULL);
> =C2=A0=C2=A0=C2=A0 }
>=20
> =C2=A0=C2=A0=C2=A0 return EXIT_SUCCESS;
> }
> --- end ---
>=20
> So, it prints the the current "permitted" and "inherited" status of both
> CAP_NET_BIND_SERVICE and CAP_CHOWN, then removes both of them from the
> process bounds (B) but adds CAP_NET_BIND_SERVICE in the inherited vector =
(I)
> and re-exec's itself.
>=20
> The output when run as root is as follows:
>=20
> ---begin---
> Capabilities: =3Dep
> Have P=C2=A0 CAP_NET_BIND_SERVICE?: 1
> Have I=C2=A0 CAP_NET_BIND_SERVICE?: 0
> Have P=C2=A0 CAP_CHOWN?: 1
> Have I=C2=A0 CAP_CHOWN?: 0
> Have IAB (I) CAP_NET_BIND_SERVICE? 0
> Have IAB (B) CAP_NET_BIND_SERVICE? 0
> Have IAB (I) CAP_CHOWN? 0
> Have IAB (B) CAP_CHOWN? 0
> Capabilities: =3Dep cap_net_bind_service+i cap_chown-ep
> Have P=C2=A0 CAP_NET_BIND_SERVICE?: 1
> Have I=C2=A0 CAP_NET_BIND_SERVICE?: 1
> Have P=C2=A0 CAP_CHOWN?: 0
> Have I=C2=A0 CAP_CHOWN?: 0
> Have IAB (I) CAP_NET_BIND_SERVICE? 1
> Have IAB (B) CAP_NET_BIND_SERVICE? 1
> Have IAB (I) CAP_CHOWN? 0
> Have IAB (B) CAP_CHOWN? 1
> --- end ---
>=20
> You can see that CAP_NET_BIND_SERVICE remains permitted afterwards (which
> must be due to it being in the Inherited vector) but CAP_CHOWN doesn't (it
> is in neither the Inherited vector nor the process capability bounds).
>=20
> The fact that CAP_NET_BIND_SERVICE is permitted shows that capabilities a=
re
> not masked by the bounding set as the paragraph which I think is erroneous
> states.
>=20
> Is that sufficient?
>=20
> Regards,
>=20
> Davin
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--s3ya36doxvfvhxq3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkkj+AACgkQ64mZXMKQ
wqlhCRAAmC8B8iErXQQHuIxm0VS9Qil0LGYtv8ngAppwp2EHo0AKihYub8qyJglZ
0s4bNVieInqvKSZQDGR6kCnr2vYxrjiR8GvDSsMJA9kw5KwSFoztVjI3c73fAIhm
sB43epYs5OGXeIUMpBrDy/jrJ4+2WVxEwRcFPVPL4/r8CdktIfqqcE1J3eEE2WTf
aPXXHIdY6RAO3CeMU7VAYNm5SMkYIrfvhNOPS8IvLt7EwnUeeJ0RWrntW6Qzydi9
ACiUljx11zR8eiwUvb3mcm8YStUHHhluZ7Ys8vwD5/qAEDPZpP5FgT5uW/hJ5hqt
rvPx3Tg/sS6SuHpd/T4j72UxZvAfNk3Si4rWMqIJifcWg4ImqPS7asjXB+AO22GO
GN4hheJ5eUcNJoVxwFl3iqW8ntIOw0QGEoGGkUIdHA7uqj98wYFvhCsfj77hiLLU
rIZMJa/JD1Gg0VPaytnWSk1K6+OikzFFbZ7mnHsWBhE2YHQ9+Nk2Gx4T/EcIQmAb
QYseV9P57FGlTX3HC5+e7byfYPL9Ae9ikTwnuBzacchOMRvPaDs9RTNxFSHQdUtm
hQALWkC9C/iL38sMiVxkiw8oLa3F6/UzEl8ymq/zXoBnrqvBLolNeHTX2ZgD5txF
CT10kRAz5ajLH5Zdwfwd+WwtbNh7m7c7vDDJI5r7AyjpEaC60oI=
=k/IQ
-----END PGP SIGNATURE-----

--s3ya36doxvfvhxq3--

