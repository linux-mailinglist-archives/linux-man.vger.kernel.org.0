Return-Path: <linux-man+bounces-1642-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E867995A55F
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 21:41:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71542B218B2
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 19:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF6B616F0DC;
	Wed, 21 Aug 2024 19:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faGOgM4b"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D45316F0CB
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 19:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724269271; cv=none; b=mUDUJuC98JsbP5P0qj4ztLVLKR5Kh15je4YbhE1gmcJLIn6Ep9Dlz3UCEKibMJZSZ7vNRuMiKFZOP71q6pQLh1f+pI00oNejV7hKghP2lLNUsiZvdwzC4zS3laMWiBSlTjG6Z6kzqT8vjwFsWIXx2XQP6gm+F0iLzdtK8R5fefo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724269271; c=relaxed/simple;
	bh=eTGUSHJ8x7iYXHF2j84QkyuoA+ih7OP9kaCnxUty8l4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nBlusK4c7ZJjmdt8IrldZbN/kEIaxOVZIaDs8W6uaCshmjwYeEmung49i3IgdBiV3UJ8j35PhUqO8Uj4oRA8n5gDAwUMxq/lyttSgWxkUJ4guhK7pTGoU+mFebVPISeE4HLkZZfR+C/oYZzhkYlbPhBAefFFIwqm7X4CVCvBB8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faGOgM4b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0402FC4AF10;
	Wed, 21 Aug 2024 19:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724269271;
	bh=eTGUSHJ8x7iYXHF2j84QkyuoA+ih7OP9kaCnxUty8l4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=faGOgM4bEHr3caXdT61++OXy7AZ4RaMMwYOxDAbYanHB+Vf9Y5ONSIfsb5pnoBpJl
	 6w5PWGG3b0k3NIrGSFmIzrv2MoKDMBpZkjuHVXFYutCw8K6yn7hCnH7AYZwM2g/VFz
	 0p3IVAhm3xFNLI9qcn00PC1IZKYJC35tbX4did9FQ44/PJWQeBujt1NBxuDANGGDJq
	 XdxhI003Pq1E0sv3rSh7JDXdoMFFzaiayivmlV+e0S4+Xs8LP9GeCRhQVhtFSGb++s
	 NEHdOBHib818DtP2oTKCApyS/384zyJdwmiWiCgVH78rb/QLo0nb7jtVv8+V6/4ISA
	 WSsClXunV2sYw==
Date: Wed, 21 Aug 2024 21:41:07 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: enh <enh@google.com>, libc-alpha <libc-alpha@sourceware.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: arch_prctl()
Message-ID: <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
References: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
 <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
 <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
 <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
 <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4tlza5nixt4mlssm"
Content-Disposition: inline
In-Reply-To: <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>


--4tlza5nixt4mlssm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Cc: enh <enh@google.com>, libc-alpha <libc-alpha@sourceware.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: arch_prctl()
References: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
 <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
 <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
 <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
 <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>
MIME-Version: 1.0
In-Reply-To: <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>

Hi Adhemerval, Elliott,

On Wed, Aug 21, 2024 at 03:19:02PM GMT, Adhemerval Zanella Netto wrote:
> I would use either the kernel interface:=20
>=20
> arch/x86/kernel/process_64.c
> 961 SYSCALL_DEFINE2(arch_prctl, int, option, unsigned long, arg2)
>=20
> Where is seems to what most caller do, or maybe something like:
>=20
> union __arch_prctl_arg
> {
>   unsigned long addr;
>   unsigned long *vaddr;
> };
>=20
> int arch_prctl (int option, union __arch_prctl_arg *arg);

Or you could use a transparent union:

	$ cat arch_prctl.c=20
	union __attribute__((__transparent_union__)) __arch_prctl_arg {
		unsigned long  set;
		unsigned long  *get;
	};

	int my_arch_prctl(int op, union __arch_prctl_arg arg2);

	int
	main(void)
	{
		unsigned long  u =3D 0;

		my_arch_prctl(1, u);
		my_arch_prctl(1, &u);
	}
	$ gcc -Wall -Wextra -S arch_prctl.c=20
	$=20

> And for constants, it would require a x86_64 specific sys/prctl.h header
> with either the has_include tricks to include the kernel one or to just
> copy the kernel one (along with possible a test to check the sync with
> kernel definitions).

I think including would be simpler, if it's possible.

I've seen some problems arise from copying kernel stuff in glibc
headers, such as being unable to include both a some kernel and some
glibc headers in the same program due to redefinitions.


Have a lovely night!
Alex


--=20
<https://www.alejandro-colomar.es/>

--4tlza5nixt4mlssm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbGQtMACgkQnowa+77/
2zKy7Q//b6R3ftiz1PQwwMxy+klTkfZ8TpFJrCLnyX+oRazhax6krHGFJHPya0o7
c516X3RxF1zopzZwtnYj2eE1+4H0EjN836tdN+vxv0VlROos0C/xyESAWI/uNh/8
HFssQwabZzfRZpA7VI52RbdJU9f9KvK3ylvIbt54SfplYHbi+S8c1KGh7NTsV/1S
G091eEfnuAAccbau0g5XAA6Sdg9hKKG0OJbH+8GzQAEIjh+cp8ln6Y9zSC4hLRLb
r0gsCSYckcTik18P3BvJBiJjbNXzKhI3TnPIsp+d9rB7qy1cfSpb1L18KlzMuHAD
bHuecn2PYTq1yx1w2YRc61fnpp5t/sYekpq9Fhpys9cCJqMsEwuCEPHakfoWlzb9
/jhaMn55+wMKhGdSzxdpdRw83TN+H99nx5f5aD18Sx5vk2SvHD9ZYmmNxpSf7+Xk
wm5z0z47RHnriHZHpjw80C4CoJJMuWrridPYd46ihCxPdD2rDP+78w7MlHT+uq0U
Lt4uUyK5Uza+Dt/kSzKYzsxDANzDBRjQ31Tk+zBWEcObkBUxlQNxxY40nAtKNiH3
lQDjRzLMXXu5NmdDb9GtHv3KiN1IOk54/CRJHy8ivBFLVd9IMAgzGLtSAIeQoY55
Je3kB7XQNg31u+IXvrqrZD9ooPAqiLK0yK2BKCuD0Xk24ADTRQ8=
=gPta
-----END PGP SIGNATURE-----

--4tlza5nixt4mlssm--

