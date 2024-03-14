Return-Path: <linux-man+bounces-591-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F9987C0F8
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:08:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 737611C21892
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 16:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 942CA7350F;
	Thu, 14 Mar 2024 16:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iD0akZNp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547CF73500
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 16:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710432486; cv=none; b=QwfugqB145hOVD4kwkqXLCcDAHar5y2njMqVRig0xxojv2SHhDllWTbciujpZapUGOxyT5yxza60oJKvWmWnQ3zUUYaJpAsRXYo8UHU2jyPBLVEhTGF0njA8pgOqoy6oCmzHu5dnfNThstAkSoUf70apM+k/dQQajn36yodHkt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710432486; c=relaxed/simple;
	bh=uXUI0egLcjig5SXBLfETq5OeeGz4O2NdV02pKXutpyI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i9xJYrCyYLeQ17gsRmNuIxWyzyINJ+Kqo3fTGF3xydVlGAQV5ZEaA9nqghIYn5P3iEPWNTmxXOBbwoL9FaZDdZwQM5VzDkT7SFyqvB5eb3Ht75KSv7Tj2Xg3Zmm3stjsaTyX+pzwG/2AGF3g702cwG2Dj41wV8uMA8e4Q7I11+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iD0akZNp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0640CC433F1;
	Thu, 14 Mar 2024 16:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710432485;
	bh=uXUI0egLcjig5SXBLfETq5OeeGz4O2NdV02pKXutpyI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iD0akZNpupqYUknxbiHW/kBVMMAEhqRij1uHp30tOKmHhahogp3utqlee6W3MmKJG
	 H0+huuU8s+IAKy+/xM9efiMli3g6npDJ8c+w4SoljVglsmK6SlmTWbHunwRm2ziZhS
	 LMN6xYTCqtYOrqVdpbVYBm5fuoaIwoTfr4odx7MejS5FGme9W0QQvxk4JBWSkd08Fm
	 FMoVRbkI/4ZBThQD6xTg2RexFIgxpp6ehwf0GHtYvBZvrJh1fZ6hZUiAV1MKZTpn8R
	 rtZnsdWT0ioj63U5J803i87ZeE+9KXzn5WSSBaFeQHfbyhaSGdAP/TvalI+VtEgG7U
	 sM6rqUZH0Ebqg==
Date: Thu, 14 Mar 2024 17:08:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] landlock_restrict_self.2: Fix max number of nested
 sandboxes
Message-ID: <ZfMg4rZRbjSP4mFn@debian>
References: <20240312151513.9718-1-mic@digikod.net>
 <ZfFt7VRWl1PBrXYQ@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kCvwJ1x7L4QW1rPU"
Content-Disposition: inline
In-Reply-To: <ZfFt7VRWl1PBrXYQ@google.com>


--kCvwJ1x7L4QW1rPU
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 17:08:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] landlock_restrict_self.2: Fix max number of nested
 sandboxes

Hi Micka=C3=ABl and G=C3=BCnther!

On Wed, Mar 13, 2024 at 10:12:13AM +0100, G=C3=BCnther Noack wrote:
> On Tue, Mar 12, 2024 at 04:15:13PM +0100, Micka=C3=ABl Sala=C3=BCn wrote:
> > This limit was updated and backported with commit 75c542d6c6cc
> > ("landlock: Reduce the maximum number of layers to 16") to all supported
> > Linux versions.
> >=20
> > Cc: Alejandro Colomar <alx@kernel.org>
> > Cc: G=C3=BCnther Noack <gnoack@google.com>
> > Signed-off-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> > ---
> >  man2/landlock_restrict_self.2 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/man2/landlock_restrict_self.2 b/man2/landlock_restrict_sel=
f.2
> > index 43f15c932a83..fb7e48234098 100644
> > --- a/man2/landlock_restrict_self.2
> > +++ b/man2/landlock_restrict_self.2
> > @@ -102,7 +102,7 @@ in its user namespace.
> >  .TP
> >  .B E2BIG
> >  The maximum number of composed rulesets is reached for the calling thr=
ead.
> > -This limit is currently 64.
> > +This limit is currently 16.
> >  .SH STANDARDS
> >  Linux.
> >  .SH HISTORY
> > --=20
> > 2.44.0
> >=20
>=20
> Of course, I meant to write:
>=20
> Reviewed-by: G=C3=BCnther Noack <gnoack@google.com>

Patch and tag applied.  Thank you both!

>=20
> (I need a coffee)

Have a lovely day!  (and a coffe :)

Alex

--=20
<https://www.alejandro-colomar.es/>

--kCvwJ1x7L4QW1rPU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXzIOIACgkQnowa+77/
2zJ95Q//dMWbDuu56293KxzHIXOBL34SXcEcRggam12Q9GO6nLgAKacgb1L3pgqG
VjJvsu2292anlLJmeYoyUGM66QobrdqsW7hbmT1ZTvrkCuzh5T2LYEYIHRJ7vFIz
qmi0t2MaoJ+qqF8ONw7+scoNRBIQoEePBL3ZceW1gzvlGJD7poP9VbVeLBgW1shb
cqJ/E1agH+UhFM/rPT3fFKfNR02fpSnJuDL4rp5N2teZLFPOn3u34pb3gsKg5coj
nXdjU4bopTan4Gsdkv+z/iYGwrGC1Rlp+/jrlNZ1hyIjGKeA7QI0HW1gKwuydtli
9Rf4sFbJEWbwuqsogCJWU+7NV/jBM5w6mS3VFqe53NZZBGhwdZrKtAd/8EEU+bQf
g+XFUdhPL2pr/0j+zRPA1AMDbk8qmxeN9+yzsmEFFo6I6aB4O2w69bf350gx3xXj
vgtCqBm4+Jw9DVyV7PX0SIXsta30Gm/6ebb3BOB28OEMKIEiisn9FVNd03VferbE
Y6Kp6cYvMLcZfStQL1ZhUcPPREqAd9NGm4vU3l+CVPE9As4JO951GEsn8uBia6s1
IHf3s7afLZ+cVYRzuDWrdBHHYhsA3wsfVGoQBgKoQnGYXI8bngT1csdZdovApPla
yEh8xkx7HtEQruibeO9gpnrWKFzHbqFbB1StR1WZqf5iZvtP+Yo=
=RXo5
-----END PGP SIGNATURE-----

--kCvwJ1x7L4QW1rPU--

