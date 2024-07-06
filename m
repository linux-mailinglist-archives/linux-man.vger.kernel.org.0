Return-Path: <linux-man+bounces-1353-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0223192913A
	for <lists+linux-man@lfdr.de>; Sat,  6 Jul 2024 08:12:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 685441F21E7F
	for <lists+linux-man@lfdr.de>; Sat,  6 Jul 2024 06:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB92C17C68;
	Sat,  6 Jul 2024 06:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPCXbQlp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9FB31C687
	for <linux-man@vger.kernel.org>; Sat,  6 Jul 2024 06:11:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720246318; cv=none; b=Wi0dWyIjbgwY/YX3Cm8fyjehQ7IinCWs+Gswmei9DxNUKurJVisgnf3YIC7PWDqUG+/jZOLGetQOjkkE/HeZ3K6MjzstqMupaI0MWS3AKbcLuKXKzHC3nRadG+c9pMn9nRC5b7xYTFawTiHxZ1byvHMSLAKarLNYP3S5lGYKE4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720246318; c=relaxed/simple;
	bh=D5i3vwLNPkL291+PYZvZi+FtLwXj4Dt4xinL7+ia40I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SE1avJPfo9Z0Ramse52DVM2KWH06ILilqd3HxyXEFSmi7bLMkugSMblgSQeBIhCkhrAtBcgocsWmGEw8T/mjzAMN3eNGYEHRLO6xruWXEwvjCesdR9Z0aZn+0SDzg+lEcGVX6GDWhFF8LMlXX1GOFrIzDvdxPUCRmqfNSx1ocnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPCXbQlp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE55AC2BD10;
	Sat,  6 Jul 2024 06:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720246318;
	bh=D5i3vwLNPkL291+PYZvZi+FtLwXj4Dt4xinL7+ia40I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bPCXbQlppbzy0w6iFRXpObdjaF6KiMbZW5tXnPAiDBx8GBpHRm5D/S7Q4tJ4hyD9W
	 oBa9LV0uhXKsDzJY0ELy4V33mlq54ACJFEkFkoQd1xLYMGXsKHZaNdTlTZPkX7p+Yu
	 XZrwhs3AA/VqU9cbiAsRpzh6ZZEpjRRZZydcONg1N6BsKl0zDJvwx9uOsh4y+L+Jm2
	 WxAPgpwXEMiIjahgM/DNRMXRNKyOQnsncSwKZk08kX833K8xHO6XuzdbHEuAqiXb+4
	 OgCOfXfabH/TXKtEs6llebeL9WFEpWkSoXkBqyhP1zYqpNhS3JFcZcNDpAeOIjlGij
	 R9R0peMIJvrSQ==
Date: Sat, 6 Jul 2024 08:11:53 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Jonathan Wakely <jwakely.gcc@gmail.com>, 
	Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	LIU Hao <lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, 
	Sam James <sam@gentoo.org>, Ben Boeckel <ben.boeckel@kitware.com>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <p3qwgpztdd6gmdfhqw3gz6hg2nus2icovct2tqvgqwhl3bdijt@5y2bmspd34lt>
References: <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
 <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
 <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>
 <1423b977ef060df385a62330c6b941fd60be7d8f.camel@xry111.site>
 <cigir4ogdtcwzop5vdj66ijal63c4iz6btydjx2htgvttca7xk@4rfpbvvdefdl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7hbpbsnlftts2cfr"
Content-Disposition: inline
In-Reply-To: <cigir4ogdtcwzop5vdj66ijal63c4iz6btydjx2htgvttca7xk@4rfpbvvdefdl>


--7hbpbsnlftts2cfr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Jonathan Wakely <jwakely.gcc@gmail.com>, 
	Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	LIU Hao <lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, 
	Sam James <sam@gentoo.org>, Ben Boeckel <ben.boeckel@kitware.com>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
 <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
 <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>
 <1423b977ef060df385a62330c6b941fd60be7d8f.camel@xry111.site>
 <cigir4ogdtcwzop5vdj66ijal63c4iz6btydjx2htgvttca7xk@4rfpbvvdefdl>
MIME-Version: 1.0
In-Reply-To: <cigir4ogdtcwzop5vdj66ijal63c4iz6btydjx2htgvttca7xk@4rfpbvvdefdl>

On Sat, Jul 06, 2024 at 08:10:28AM GMT, Alejandro Colomar wrote:
> Hi Xi,
>=20
> On Sat, Jul 06, 2024 at 10:24:16AM GMT, Xi Ruoyao wrote:
> > On Sat, 2024-07-06 at 00:02 +0200, Alejandro Colomar wrote:
> > > That's precisely the case with strtol(3): it doesn't access any objec=
ts
> > > through *endptr, and so that pointer need not be restrict.
> > >=20
> > > Then, nptr is a read-only pointer, so is doesn't matter either if it's
> > > accessed or not.
> >=20
> > Restrict allows to reorder any writes to other objects with an read from
> > nptr then. In strtol at least errno can be written, and depending on the
> > implementation of locale things there may be more.
>=20
> This does not apply here, I think.  Let's include errno in the list of
> objects that strtol(3) takes, and list their access modes:
>=20
> -  nptr		access(read_only)
> -  *endptr	access(none)
> -  endptr	access(read_write) [it checks for NULL; I had forgotten]

Sorry, I was right the first time; it's write_only.  The NULL check is
on the pointer; not the pointee.

> -  errno	access(read_write)
>=20
> In the callee:
> ~~~~~~~~~~~~~~
>=20
> The access modes are known by the callee, because of course it knows
> what it does, so even without the attributes, it knows that.
>=20
> strtol(3) cannot write to errno until it has parsed the string.  And
> once it knows it has failed (so wants to set errno), it has no reasons
> to read nptr again.  Thus, even without knowing if 'errno' and 'nptr'
> are the same thing, there's nothing that could be optimized.
>=20
> *endptr is access(none), so it is implicitly restricted even without
> specifying restrict on it; the callee couldn't care less about it.
>=20
> endptr is 'restrict', so it can be treated separately from the rest.
>=20
> In the caller:
> ~~~~~~~~~~~~~~
>=20
> We can't specify the access mode of *endptr nor errno, so the caller
> must assume they are read_write.
>=20
> endptr is 'restrict', but this is only useful for having warnings
> against dumb things such as strtol(x, x, 0).  Other than that, the
> caller knows what it has passed in endptr, so it knows it's a different
> thing.
>=20
> The caller also knows that it hasn't passed errno as nptr.
>=20
> Then we must make a distinction in what the caller passes in *endptr:
>=20
> *endptr is uninitialized:
> ~~~~~~~~~~~~~~~~~~~~~~~~~
>=20
> The caller knows that nptr is restricted even without the qualifier,
> since all other objects are either restricted, or known to be different.
>=20
> *endptr points to the same thing as nptr:
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>=20
> Regardless of the 'restrict' qualifier being specified or not, the
> caller has no way to determine if the callee accesses the object via
> nptr or via *endptr, so it must assume the worst case: *endptr; and so
> it must assume it could have written to it (since *endptr is non-const
> --and even if it were const, as you said, it means nothing--).
>=20
>=20
> So, even considering errno in the game, I don't see any difference if we
> specify nptr to be restrict or not.
>=20
> Thanks for the feedback!  I'll incorporate the discussion about errno in
> the paper for WG14.
>=20
> Have a lovely day!
> Alex
>=20
> >=20
> > TBAA does not help here because char aliases with anything.
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--7hbpbsnlftts2cfr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaI4CkACgkQnowa+77/
2zJHSg/+NSTSKhqjWTABC9BDLnRckTy62PF6V84TqQKu+n6+f2PK17vuu4g3CONw
deLEjCMpVjkQTDv75digj36hEqVjQ/Rf+txgYr+LMFgwWeMp0un1elL6eO2wErja
bOOD7928vYprq4+LAfLb+TXoZTk3YIs7yligHQbmDp1VBgfRS4HFd9s0yzT3cSei
PbmRC6+mvvpA85AJuk0ULGyi1gNT8VCb2+zjKC/8FRFQjmssHkZN1W6QspTkCLHY
TXeymWCHMD8kz3Mp8Xl0pjcBthnGnH/zbEo3VM/bv7URG4/SsE6WY0GnsvMprAJU
biW3z25xX+83PdigCaphZ/VvX3+SAOJV8OEi0tt7/Ij0N1K/kC6ARczCsl1QrTkc
FXNFnHMfMx6jOQM1rBk0dEEA/xQPFQdsqwnOs76kJK5Gj2KNNEoCXy0Gk7v+z2sh
mPV17OSfHYKO64XbCncaC0oWCUdEAt0XUA2+QKz+J3FIZhI5nPrUWD45E0lgXEmd
RChS71E8X7MFvhUUPq0Gw5NYfWBDO6OXi/GLd7ZJVseaY8noSn5OPmTiceOENKbk
bKAQRltShXYOkp69CUqZ/miE41bj649AxpeCKWdPMAj+kOiYWRMc9lEaVcm5/ej0
p59KS5LxVYoLfkFM+1+gq+X216YSuNdbTNIvfhDHvunniQ120cg=
=gYM9
-----END PGP SIGNATURE-----

--7hbpbsnlftts2cfr--

