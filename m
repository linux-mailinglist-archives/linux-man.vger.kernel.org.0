Return-Path: <linux-man+bounces-766-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD0D8A60AB
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 04:08:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0CF7282468
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 02:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DBD2E546;
	Tue, 16 Apr 2024 02:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fTHKNGEx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DC3846C
	for <linux-man@vger.kernel.org>; Tue, 16 Apr 2024 02:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713233307; cv=none; b=Qk/TEZV+DKKaup3snWD4tlzebhHDYzldW2okkU9x7S0YwlXAk3D4mcmML11gDmB4ZLfW9DsOE+YzKj1ZeV9cOrX8vALdKZiAvXL9LlYJxqdJE9SHw9dl53Pr85B6rUuUI5GnSHRgPSKeLR2l/N9rBUiXd+QpA4Ttkw5ISiSarUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713233307; c=relaxed/simple;
	bh=tEdbiRCQOODrQFf1EHC7PNEkGjq7Hh1lZoUqloXuFYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cm5mwZvRA3imp30Y++IFdmO7Xy8BPQfFz3X+6GfD999JMiVHK25v/fSe88mUxn2LYxpZUJMleD7ZOhDbjXRMoz3FS82yvJFO7D1esP5Ly/QV/O47v5eKfXXUucNpJpUPLZJc5FGkvaFagcgXLg4hh5U8BImEjO86Jii7PkgTH3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fTHKNGEx; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5aa3af24775so2866282eaf.0
        for <linux-man@vger.kernel.org>; Mon, 15 Apr 2024 19:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713233305; x=1713838105; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I8pW740lOl55zZY3HqodjXV3sqefRgNSvOQwBQKz6U4=;
        b=fTHKNGExT+7/mVDgznO/VIveTlxMU4XMkTgCIrxPqX++X2/Z9zYgdFSQRe3P45mK9k
         4EUJ7tQ9ny2sLU+hurMyn6PSwXsXu7YvJ7p7wVFD2L3EZKe3SGRNLPQB70WYOJGRQ3SJ
         dZ1vajGuZvoxSv33QgZ/KL9p+t1yByuU7+9bqt4KEVA3EVFDkektQ3NUShBpL1crjDVZ
         TcPznF2e589YYIpno6g9v6g7F/18p8WVVodU+ND1HkqK/DaSYZGoMcKPuHbQxgYbtiku
         AJalQijZA37P2YORc9LtLCK87M1pC/sgVQNydTDYVoGdacE1VBuNGO45uTBvCd9JLZmJ
         XXVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713233305; x=1713838105;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I8pW740lOl55zZY3HqodjXV3sqefRgNSvOQwBQKz6U4=;
        b=QrrGHP+d7Cs90A4xgTW3nepfdcAnr2Hq4cQisZHj2yUfMPbVNDiY7qOnToqanstOt6
         k8j7I7JNyn1hETAPD+xua1gbVuwPKJuzKvbRKRe9k3W/MCa05TbU4bjW1P+kH6+fMFcV
         NdMq3RL6NW5cU/IzlDDlqnMy/IXDP8eAi5Yo/L0P+1BJaeQIvZaSGdLw+15axMl5XqoJ
         dOXlBVS+yelgpKRJFMni/izEeBwZJlPyjcK+u2tdlK8Onv0HG6NJ9HAfjFJlMksaOk4t
         fI3db8ST/x2rjT9PZppcG/ewSsrqtYTzT6B7tUq85KfNg4IybiN8rcZqiE0CrTrN7j/I
         mB9g==
X-Forwarded-Encrypted: i=1; AJvYcCVpQq4f6g17dwmrP0c1nY9zUBxPq45cay61lqtdSrlmbTf3GHzzyzxdBnhzi2SQ4J3iGYfLETtXdI6SLhj1oEH+i/4h01FaIL53
X-Gm-Message-State: AOJu0YyoezzlsCWgFMI7OkG0IjsbBFl7aE6VN7fcYu739HYHFkdrkSN5
	0oXoBQGXp33g2uFH/6E1KUcYNm1MO+d3VbYGBrOVtgyDCfXd3vOe
X-Google-Smtp-Source: AGHT+IF28KiktKxnYFFFSB45xNyrJ1tZBsihZedpAsoQjSo8Ibk0o0KJP+eqPtshNautpY+UDUiEWw==
X-Received: by 2002:a05:6820:1ac2:b0:5ac:5c3c:6aca with SMTP id bu2-20020a0568201ac200b005ac5c3c6acamr11693746oob.0.1713233304716;
        Mon, 15 Apr 2024 19:08:24 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s11-20020a4aa38b000000b005a46d5bd558sm2337095ool.45.2024.04.15.19.08.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 19:08:24 -0700 (PDT)
Date: Mon, 15 Apr 2024 21:08:22 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <20240416020822.tsrgfu5dr2dlskbr@illithid>
References: <Zhu_-FE5sl3vSu1w@debian>
 <20240414120145.xa5sryqprufsvhqi@illithid>
 <ZhvLPvqHzpw2Jl3o@debian>
 <3935722.768hzMJKAL@pip>
 <Zh3OKsBl0SyyR1f9@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ybgiwqa5kkhbvcmz"
Content-Disposition: inline
In-Reply-To: <Zh3OKsBl0SyyR1f9@debian>


--ybgiwqa5kkhbvcmz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2024-04-16T03:02:28+0200, Alejandro Colomar wrote:
> > > troff:<standard input>:1649: error: cannot load font 'TINOR' to
> > > mark it as special
> >=20
> > Your _FONTSDIR must point to a directory which has a subdirectory
> > called 'devpdf' which holds TINOR and UnifontM and a suitable
> > 'download' file which gives the location of the actual .pf[ab] files
> > (i.e. within texlive - no need to copy it). The difference,
> > with/without, is in the number of glyphs not found messages.
>=20
> I also need to understand what's that TINOR file, what type of file it
> is, and how I can get it.

This, I can answer.  It is a device-independent troff font description
file.  It is a plain text file in a format documented by Brian Kernighan
originally in CSTR #97 in about 1982, then in the 1992 revision of CSTR
#54, and of course also in the groff_font(5) man page.

The reason for the font description file is that traditionally digital
fonts were (1) restrictively licensed and (2) programs that used fonts
often didn't need the fonts themselves, but just descriptions of what
glyphs they contained and the dimensions ("metrics") of each glyph.  It
is a rendering device that uses a digital font.  A typesetter (or
graphical display system[1]) needs only to know the metrics of the
glyphs to that it can position them appropriately relative to each
other.

This is why when PDF renderers substitute fonts, the result is often so
terribly ugly.  The glyphs of the substituted font are placed in
positions appropriate to a font that may have different metrics.  So
they are crowded or spaced out weirdly, the kerning is off, and so on.

Regards,
Branden

[1] Historically in the X Window System there was a transition from
    "server-side" font rendering to "client-side".  I suspect
    server-side rendering was implemented in the first place to work
    around the expense of digital font licensing.  Someone like Jim
    Gettys would know for sure.

--ybgiwqa5kkhbvcmz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYd3Y4ACgkQ0Z6cfXEm
bc5rDw//ewTNOb/5zsU3qrmzJs3t2mcxnKrn724LIYWADHng8aEmwXsWV7SpCLWT
BZxMUQoWVvJiaYROIhXFBXMbHqIjIFVopN9v/ytADRJKwY62wVKnDibgHzTDhDDz
mo7U3PNUZ1hn/NZeYyQY6yfJOrzjKR7oI5TpSGKsuyXEViax23a+U9luL0pxsPmW
0xr2UdG7gSNl9gPt5pU1HWn56JD70dx+RMFQMLiONkc68LNVrV9MDZpHg85LVnGP
tOgwUUu9uZlwp7/Ewy1zhCC53yLl7NFYNmtxafnDK7yFbP/QDBVT1zinrJkXmepx
7lD0t6UZAkVYCoS3vVLXYNbLtB+Qscide5UBJsBiwi0UHTCrGsaE7zfAdkv3Ll7F
N2/FJknKoTRT1eA+hm/GyTvr1GTWUl8XDfe++1lG4Fj24FjDLVijAhlT4ldRTya5
J0dtIw9TyOhGsq4jdnkMxuejJrhqz+35HVRQ7gl77lFdry4C6d4Z4QLOT1C9KouA
cSoArSPzh+j1cboZY2Ib6OTNFMyUeQkpLukDWLcL7SNvHc0FG1phUL6SsVPYOBaE
8hxsh5+gV6MF7YutqHTynwnUB/bNTy2mNqO/yzNX+y+9eM8OuhdP04kGIfhYbRdQ
Sw2GczJ8edNMLXzElPk3iVCXlS4kGR/mhsmuGmIlspnisg4lcT0=
=2ptT
-----END PGP SIGNATURE-----

--ybgiwqa5kkhbvcmz--

