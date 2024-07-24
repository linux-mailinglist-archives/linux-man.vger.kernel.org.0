Return-Path: <linux-man+bounces-1523-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D991D93B331
	for <lists+linux-man@lfdr.de>; Wed, 24 Jul 2024 16:54:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64348B23826
	for <lists+linux-man@lfdr.de>; Wed, 24 Jul 2024 14:54:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3EA2155CB2;
	Wed, 24 Jul 2024 14:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjkXeqEv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9453154657
	for <linux-man@vger.kernel.org>; Wed, 24 Jul 2024 14:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721832886; cv=none; b=sEF5BwP1mvx6Lijd77WhiwNPEGXRoxQfp95vS9WmJaaSiKfmALizna+xScqoiOr0I7TgMvFBanJiLNxTe8OSQxBTS7o0OztJk7goEgNp1sSBF7uRblWsansiFkwkniXuM3MfxuHjaBFaAH13ibPD8AdXvD04yeF0XZhG2VcaNeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721832886; c=relaxed/simple;
	bh=QvX3mC/WMD0taF4z0K5+lSoP/zjgN/EHUpp9B/tNm4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qfeMY7u6cMY9YzDEydlzNl0aIMKxThvHxKtYFdxxiyeV3P1xHoS7tqb7/VtUGVhbwt3yG8sS+7CEooJivH8oz5HaQhMPLBA7HP4L4v+nYll5Vo4sFw0CMzuvJX6LhqOEEJnvLI8JKpc8dmc0+FieCQpBVRTlyP85kAjHXM32viw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjkXeqEv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45F7DC32781;
	Wed, 24 Jul 2024 14:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721832886;
	bh=QvX3mC/WMD0taF4z0K5+lSoP/zjgN/EHUpp9B/tNm4E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LjkXeqEv2Lhm3t1qJwCVj0MfMvGuQgY58rOp/Z/smBwEP509vUoMWMiuaI13glpWP
	 yf1b7eSg8atMPJyHho3myyeO2u+l35tMb28egsWMCtSMIJNiZUd67DFetGwQl7doRm
	 d7xIpRlgn5p66hYqjELV1gt4pvzf7VQHXyFPtbZXTVSNtTWYNhJJcBDKhBQ+eMy7gy
	 7PP7BPYURjoreuIJkAvuMQ96jDPLu7eS0j2/5HDwd4n0nEzyKHSIlsGcV36A+XUl/e
	 cfLmCCRdg/FbFE2hUL/loiywDm7kEyJs0XoVLxl1vILgeAUyTMLL9PFyP1p7rELOfX
	 Ow9kjvrirVmeg==
Date: Wed, 24 Jul 2024 16:54:43 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
Message-ID: <yncoitkjxgqypzr4hp2j26dnfxtw3p4cznhulkr2gmkvvii5ml@b4t7thznpzf7>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <f2lafh7vylh6rxxnmliap5fneawwlh4aepkffeqwejfn3tlrir@fzm3hucyrocc>
 <ZqENZk7VcbBeaXFG@google.com>
 <4pnwtxlxnaa4j7ldpj3nquophl7ac6gpio5esuqlxjep6hjznw@5oopxwhkyiyr>
 <ZqEU8jHku1ZZOWv-@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lj3q4tm6fil6x5tx"
Content-Disposition: inline
In-Reply-To: <ZqEU8jHku1ZZOWv-@google.com>


--lj3q4tm6fil6x5tx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <f2lafh7vylh6rxxnmliap5fneawwlh4aepkffeqwejfn3tlrir@fzm3hucyrocc>
 <ZqENZk7VcbBeaXFG@google.com>
 <4pnwtxlxnaa4j7ldpj3nquophl7ac6gpio5esuqlxjep6hjznw@5oopxwhkyiyr>
 <ZqEU8jHku1ZZOWv-@google.com>
MIME-Version: 1.0
In-Reply-To: <ZqEU8jHku1ZZOWv-@google.com>

On Wed, Jul 24, 2024 at 02:51:30PM GMT, G=C3=BCnther Noack wrote:
> Hello Alejandro!

Hi!

> On Wed, Jul 24, 2024 at 04:31:21PM +0200, Alejandro Colomar wrote:
> > On Wed, Jul 24, 2024 at 04:19:18PM GMT, G=C3=BCnther Noack wrote:
> > > On Tue, Jul 23, 2024 at 03:03:13PM +0200, Alejandro Colomar wrote:
> > > > On Tue, Jul 23, 2024 at 10:19:16AM GMT, G=C3=BCnther Noack wrote:
> > > > > @@ -143,8 +151,8 @@ was not a valid address.
> > > > >  .TP
> > > > >  .B ENOMSG
> > > > >  Empty accesses (i.e.,
> > > > > -.I attr\->handled_access_fs
> > > > > -is 0).
> > > > > +.I attr
> > > > > +did not specify any access rights to restrict).
> > > >=20
> > > > This looks like a wording fix, isn't it?  If so, it might be worth a
> > > > separate patch.
> >=20
> > Ping.
>=20
> Thanks, I missed that.
>=20
> It is not a pure wording fix, but it corrects an overly specific error
> description that does not hold any more in the case of Landlock ABI versi=
on 4.
>=20
> With the introduction of Landlock ABI v4, attr->handled_access_fs is not
> technically accurate any more, but it can also be attr->handled_access_ne=
t(!)
> now, in the case where someone uses these new networking features.  So I =
made
> the phrasing a bit more general to cover both.

Makes sense; thanks!

>=20
> > It depends on your answer to the pinged question above.

I'll apply this patch set, and amend the s/i/I/ myself.

Have a lovely day!
Alex

>=20
> Sounds good.
>=20
> Thanks for the review!
> =E2=80=94G=C3=BCnther
>=20

--=20
<https://www.alejandro-colomar.es/>

--lj3q4tm6fil6x5tx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmahFbIACgkQnowa+77/
2zJsSxAAih1HlHUocx81i2YaTRtMcghW87oU75PSy0FP5PJFoJk4Vjq/zVSXTUFw
IQBdYye7NvYQGCMfWz8HEIVlyxRAzX9Cth7I2NslhGdQLLKZ/kvM++Deo641A5Sf
IoIgxMMk1TWJfUw0G/qRCVZow0/4r2B3WfWos4pYVq3J2ZQOnXOZVmasLEeCFaLY
wli4XJEGLXbUHoKiCg79RL3kZZfQh1uZfad7DDDEG5mnxp+rFnk8y2OVW9LGw4GS
N6pPcdCP7mhYuWLOdBYFg83rowsHbs9HTYgbaotmnor+vLj3D5ANPunHhrMaOL5Y
2Aov9w8jvbZpTzrChpLRppCr72p8qJbdBUnAkznV6NEBRLh9++AgzCa7EIhH7a2h
DxvLfkGWF5aS4XZMzRS07+GGp88Hsp1vGyEVBsAE+5gt4DJG071Y13ZJu+9uvcGw
Pzf9ZaNydllfDrsj4zFWIoHBhwKVVfPA4BI5f2t4m7KPW1l30wgJr2rq2xhUpOak
xgfLm/BjmHuAP5MctGzDy6YQRPhVecTMJshRVtKsJSjUK+S6uXrgCrWi1DsuF9CZ
6wwr4erbAODB8dyZ5bzLTGcWgcdj3Xf6fhCExrs45AanLEiJSwYyZAAs4ryTuvbv
Dw9Qtx7rT5bRPB1rkJvIJBfSmWtt0VZflGVVbifFxO1mGIdiolA=
=Rl3g
-----END PGP SIGNATURE-----

--lj3q4tm6fil6x5tx--

