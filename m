Return-Path: <linux-man+bounces-2732-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9824DA7A12C
	for <lists+linux-man@lfdr.de>; Thu,  3 Apr 2025 12:41:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CA583B5A0B
	for <lists+linux-man@lfdr.de>; Thu,  3 Apr 2025 10:40:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39E324A070;
	Thu,  3 Apr 2025 10:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYvdGVTW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7D41E04AC
	for <linux-man@vger.kernel.org>; Thu,  3 Apr 2025 10:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743676862; cv=none; b=InKvnpcm9j+2JfMlcngIAb1g83by3/EMDDPLhlr0vdubhcSJk3WtZEq/ec/5yDuv5TsDkZFNXs+wJVJlCjGOGMWxaZ/VdhUPUzRWxbZlDfCka6BFMZ6Cy5dV3WYYXv/OsJNvrEOcT7PoL2HvfmpEPH0x86L4IoJ2okqnKwJwEho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743676862; c=relaxed/simple;
	bh=D+WI524/I+ebKRQDltfuH6L3mvpzj50oOZnM06Qldvo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U4pJvPyHf46doqKIvwRJ9FZ6eyy4PmvIRvHGpIUiUJbKJU8DPIGmgv/zxQkCQdSe9y1JhUIjJ2XW0LgPLjV4vqUFRSZSdZKoHMfDy6pn+TYMRgkAQBf15qCvbzPChQfjM/GFre15tWR08PYM8K86mUo12k51wgwfVhVy9UrKqGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYvdGVTW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 303F3C4CEE3;
	Thu,  3 Apr 2025 10:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743676862;
	bh=D+WI524/I+ebKRQDltfuH6L3mvpzj50oOZnM06Qldvo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WYvdGVTWlQswEG60jt0IybS56yAyhlGO7/qpKIyJzQmtvRfwPhFT0jKJ7l6gKEOPK
	 LCwhOgThDrEWYS9kn1ABNwmvkT6KI+L9dAUFUpB9gJnw2Vvo3CT7ZHxoy0/CsOyslG
	 7O8gzzKn4IWgMaSomGdrLbZUQmDWEfvc+RLHbMAYyWI3QhlQN+5MzrmWULh09CrCdo
	 0/dA0NWmJKM9RFCNrlrm2aK4c1PiS4brZkickec+3Sv2ONhnatRYBzPE/dTv3UROKn
	 8k7VkqzaTBnygoMM4Np9wHvkEHyCwzEQBbbEK1itekbWhklJo86V7U+sOGXZhtiFs9
	 WbPA9U1rVRjwQ==
Date: Thu, 3 Apr 2025 12:40:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/3] fanotify: Fixes for documentation of FAN_FS_ERROR
Message-ID: <dailsleziscvaxckxofspllot5xbu4hpdi5pvuqxxd4cvpb5yv@oqhrfslhv4qc>
References: <20250331133959.1436376-1-amir73il@gmail.com>
 <20250331133959.1436376-2-amir73il@gmail.com>
 <rylfwmbs4prqtctgpvex7d7p3efqtxmexyzbnyjcbtyo5pqrer@33rylwxb7zes>
 <CAOQ4uxj3iJbGYsCZ0shGXZJQpFU6A2FnT=846361SRW0vtn_nQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oymts6kjt47loh4r"
Content-Disposition: inline
In-Reply-To: <CAOQ4uxj3iJbGYsCZ0shGXZJQpFU6A2FnT=846361SRW0vtn_nQ@mail.gmail.com>


--oymts6kjt47loh4r
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/3] fanotify: Fixes for documentation of FAN_FS_ERROR
References: <20250331133959.1436376-1-amir73il@gmail.com>
 <20250331133959.1436376-2-amir73il@gmail.com>
 <rylfwmbs4prqtctgpvex7d7p3efqtxmexyzbnyjcbtyo5pqrer@33rylwxb7zes>
 <CAOQ4uxj3iJbGYsCZ0shGXZJQpFU6A2FnT=846361SRW0vtn_nQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOQ4uxj3iJbGYsCZ0shGXZJQpFU6A2FnT=846361SRW0vtn_nQ@mail.gmail.com>

Hi Amir,

On Thu, Apr 03, 2025 at 12:01:01PM +0200, Amir Goldstein wrote:
> > You forgot the .IP in the moved text.
> >
>=20
> I wrote "Reduce unneeded newlines in the FAN_FS_ERROR entry."
> The newlines seem unneeded IMO and inconsistent with other
> entries.

Ah, okay, I missed that.  I thought it was a mistake.  :)
Then I'm fine with it, I think.


Have a lovely day!
Alex

>=20
> But it's not a big deal.

--=20
<https://www.alejandro-colomar.es/>
<https://www.alejandro-colomar.es:8443/>
<http://www.alejandro-colomar.es:8080/>

--oymts6kjt47loh4r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfuZbQACgkQ64mZXMKQ
wqnDbxAAtuXuTuWB0IfB1HTogFR7hHlPIIoosTl8MM5Gaa7R6q/0340NbQAhKQph
3TMIfJZROe8rbqJ2a8u5Kfjgs7E9UXUxJB1y7zTLzgSKbWt/dfo+1j8UoyjGhRL5
euuIrE9H0yaqtkhUbOwbsAdGNBm7+dgRLGAIJ786llAcD21tVN27qOkwB4FM7kmh
8RkzVA0DB5fn1jjPP5atdqit60exiob0ZYkk4x972oTJNLXwAWMEWa7FG2UcxEXb
gWGvkz+EjO2YIR4b3mJEoUr3cR5S1lawxlcjjZErsQa+0do08MJAMHPy0ODpJuuN
xw8lFQmYYjTh4OcB4VjwQC+pURImDI1eF+VxWPYjRW7byEUS7Gl67JnTeXYOQD8p
2uDICrjEv0EpUOz9Vky/tDE0hnY3KYiQRk7IS2XIc8oAkq7r/FjMduDyT77be3hg
VNTt2x9WfO9sFTznG21h2SrJKBs7J11tCa2YH1e48DsRhp7mFjBrocR3Bttdbof0
TxFAiWStd7yatPY8WCOQbU2VxzhgGPerAvai8dYI8G9orFV2WYIqaDLdKGTZyZUI
L2f2wN6v2aEyNRIdZiwhzZSYBHYMeLQEcsLyz7+JXjdq4QqmBz1/zKr8sR7ynA2o
2RYFr2otmBCXXHRH7BiKMluAtSUIAWR1Xc7iGr26S7fBWCFaF3I=
=cjr1
-----END PGP SIGNATURE-----

--oymts6kjt47loh4r--

