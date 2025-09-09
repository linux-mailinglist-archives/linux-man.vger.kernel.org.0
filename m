Return-Path: <linux-man+bounces-3849-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA58B4A24F
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 08:32:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3DD03A402B
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 06:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A2A53019B1;
	Tue,  9 Sep 2025 06:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5PhMnBQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE91618A93F
	for <linux-man@vger.kernel.org>; Tue,  9 Sep 2025 06:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757399562; cv=none; b=kHUbLlt7tRLgU15kYUaGV1RyeB6EkUMKvQ8KcuV/aTsqeSadxYL2Wzolq0baqUhzcZ2DERivzne6KCPz28xBN82Cl/BmIc+5tDR8yr+UL1eS8Rr76ZSsbu3d9yj4lREOAVi3xhLgtQ2qHFQukhY4YjByNmQA9xyEeVwRQBOZ1P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757399562; c=relaxed/simple;
	bh=YLS2KXFDmFUs1CL9EgtVEKEtj2NlSW8sDD70Vu9zsuE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TBoADJpEmXXa5j1GvPW6+ICxL+5ZAxmuX2flywlE4uzB3lDWj4upSCmGMudGwtQjsUoynlzpZBkWXy6JfJdV9Q9XeZKHSoszaplzXRiK6dnL9xY5e6of1a5RW3ncYx7HHJCJ/L5abo7uRKHal4zDMHhcxDdfIf8ysm2I/IZN77g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5PhMnBQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2775C4CEF4;
	Tue,  9 Sep 2025 06:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757399562;
	bh=YLS2KXFDmFUs1CL9EgtVEKEtj2NlSW8sDD70Vu9zsuE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c5PhMnBQB488o6YOkjH7LKI7Iu7XwfiPnQDAQSbDveHHweYLyDDFLdLzQXjXCCQzr
	 q/vHteGLBvPh5dDXlix0syhHcJH9jn3pIO0hwtmmNQ1ormliuNQuXaJCyCeG7wWW4V
	 wLPCjORhfvsUdK0G71TMvAJ84AVf+4HVTsPglBR8hXe7XX6JQCdBrLgxvi87zoro7f
	 3xZBR1ReMkwdB6xqjKYVsdNqAH+fB2B3EPS2a8DsXWPc9MZRNU8FHWT7bn6woGcDBE
	 sOjwVLnOqHl6nc4lIcPQNPX0l7Iaz3+7triI5ZtFWknEasEaBHqQwl4x2XD1qu9Gf7
	 olwGzy6SoU9qw==
Date: Tue, 9 Sep 2025 08:32:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] man/man2/sigaction.2: Update si_code list with Linux
 v6.16
Message-ID: <pb4yns6tmw5x25tvflkgnyqwfkusthtrnd66il7e22adisk5in@4qzbdyda3ro2>
References: <20250828210752.619435-1-thiago.bauermann@linaro.org>
 <66a84774-0c5b-4dc1-af25-1e6d35e3e5ef@redhat.com>
 <87h5xkgrly.fsf@linaro.org>
 <1131d940-b487-4ce4-8316-533cffbdc173@redhat.com>
 <87plc071y7.fsf@linaro.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="skescb4qc57wbydd"
Content-Disposition: inline
In-Reply-To: <87plc071y7.fsf@linaro.org>


--skescb4qc57wbydd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] man/man2/sigaction.2: Update si_code list with Linux
 v6.16
References: <20250828210752.619435-1-thiago.bauermann@linaro.org>
 <66a84774-0c5b-4dc1-af25-1e6d35e3e5ef@redhat.com>
 <87h5xkgrly.fsf@linaro.org>
 <1131d940-b487-4ce4-8316-533cffbdc173@redhat.com>
 <87plc071y7.fsf@linaro.org>
MIME-Version: 1.0
In-Reply-To: <87plc071y7.fsf@linaro.org>

Hi Thiago, Carlos,

On Tue, Sep 09, 2025 at 12:13:36AM -0300, Thiago Jung Bauermann wrote:
> Carlos O'Donell <carlos@redhat.com> writes:
>=20
> > On 9/2/25 11:08 PM, Thiago Jung Bauermann wrote:
> >> To be honest, my motivation to write this patch was just to fix the fa=
ct
> >> that SEGV_CPERR was not mentioned. Then I noticed that other constants
> >> were missing too, and thought it would be easy enough to add them as
> >> well...
> >
> > Welcome to the rabbit hole! :-)
>=20
> Thanks? :-)
>=20
> >>>   (a) Adding the constants to C libraries in a conformant way.
> >>>
> >>>   (b) Cleaning up the UAPI header to be conforming and work with
> >>>       the existing C libraries to include it indirectly.
> >>>
> >>>   (c) Cleaning up both headers to allow dual inclusion with
> >>>       additional constants showing up as needed.
> >>>
> >>> In summary:
> >>>
> >>>   - This patch contains 2 constants that don't work today in a glibc-=
based
> >>>     userspace.
> >>>
> >>>   - The existing man page documents 1 constants that doesn't work tod=
ay
> >>>     with the standard #include <signal.h>.
> >> As you suggested (thanks!), I sent a patch to the glibc mailing list
> >> adding the si_codes it's missing to its siginfo-conts.h header:
> >> https://inbox.sourceware.org/libc-alpha/20250903024151.3030839-1-thiag=
o.bauermann@linaro.org/
> >> If that one is accepted, hopefully this patch can go in?
> >
> > Yes, that works for me.
>=20
> Just FYI to the people on this mailing list, the glibc patch was
> committed today.

So, all the things that Carlos said weren't in glibc are now in glibc?
Would you mind adding "(since glibc X.Y)" to them in the patch?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--skescb4qc57wbydd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi/ygUACgkQ64mZXMKQ
wqmc1xAAmfXxIM+QVosN+w9CyKM7obwN4kVbQrzSPnmSDZBNP4lPMUJzRy6v1FGn
h6+dBdtScSQ4jYvDUhTBVVMCpG59YCA1Jna67bw19uix5PqizSlod5yVLjFxHPFG
mA2LpmVu+kUV0Bgh9arUvsrUQHwQqu86SVGSo4AXlpj24BieLzCRVKEx+CaLL7+K
49P/Jq6c0CP8T3p5Kjlus4XxBZNf6Up3LgXQWz0M+KshOIAXrWSF6q79fIQjJYop
ltFeZD/TtzeJunsakiD2yFDfd0RVhw8ZYhz+OEqNd4Fzjec+URFaO+wETe853/C7
jIhq8k3mUcVSR0DUo12gePXN3OIIxdm3H6q+q859tUNnjjISOgAa75lTs6DUcRk5
NdCL9EbUD/RHZZuyz1OLVNbggwcHOmc3wRUJ1JE1zsjENhdLwqQXFxU1dIRemNnM
8DZTqNvxPdu7aHe1VbEBYpIopWwNGxJ7vuzDASqlKD4ha+kMtBsM2MzbgAJ4mrxL
pC6y0HuRyf3q0tiJU9ijOvmSz3yUz6jb4SHhi7SJxwyamBzRa9zffgOAss8ZRoMF
y4UBlICU8XlU47Gpf0ekXrjFc3raOEul11k0ysY1k28tAmKtgYpvXes62oUoTv/D
7pOGEaAF4Q9mXtK1/C0uDJzeB8Y3qhin3CL7LVswwVouIHHjjag=
=oQCd
-----END PGP SIGNATURE-----

--skescb4qc57wbydd--

