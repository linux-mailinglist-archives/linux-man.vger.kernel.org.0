Return-Path: <linux-man+bounces-2851-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 316DFAA74C4
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 16:19:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 898614A737C
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 14:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70E7123E359;
	Fri,  2 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mm8zryTS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45B719E97B
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 14:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746195593; cv=none; b=rTkQxBhlO82AZAJRDAhlGJ5mFoFm9HuPZqzHXLhfa0jN9PGVbNV7d7i5DkCJhZxLpTf0gvsmd1qsW7VJvyIveSXHWER+3+5dpdXVrMGlh6cFKzUNr4hj0TpojZ9+ciZe3kiwt2H6CJTwNPJnMEOq//Z89DprkiS2a01sgURJLfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746195593; c=relaxed/simple;
	bh=pvRgzK8SxfSpMMiyMdbi+v4dZw/aDQUXyX35a3gUjys=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bjh5wlw7M0LpSrieHNwfCTVXzFhqumJpLU0b46JoaXKmyYJhlT2Xfq+fHz5VBltjiLaoBXcuhxLDImE8mc4R/CYubOG+lRftvOOWHGSCSr51fXDjQBAhcgSuJoypnIP6T2eydSIRtAa18uYWIH5YPeowK4OBljKYAgLzumk67Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mm8zryTS; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-2c6ed7efb1dso1419339fac.2
        for <linux-man@vger.kernel.org>; Fri, 02 May 2025 07:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746195591; x=1746800391; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lWDnTbfbpRir6nb2ZQ/DKZixsP8d5MrT1BTV87Maz+I=;
        b=mm8zryTS9nIW4Dk0zSJaOLs4gnaRQw7Kn9AbI0miLRVa1ZmORGCi0o0shEjZSL/VWy
         MepxbOjRgts04rlpDcTSdXVDRTqe7mrIhKIlkL+bw1wAGUifS+Nj+xqenCX33ua1I86z
         6TNhgn6n+YTQ1SdX116LibhC/O2VtpBjKlfQmIbpVzYIQUjR/UDvwNwFALN2uyJcdt7r
         KmgY1PpbPuZhals5ojOAGELm6iY1jtjxLm8hhjhf4noDW2fDy5PgPadSCVe3fuSEnGcK
         ZJtBGCLhj+Ai/X9duBP2Axkt4/23F+vET7BWex4MuOSrA8mRlWRkC+Akec3BULE9rjrB
         XTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746195591; x=1746800391;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lWDnTbfbpRir6nb2ZQ/DKZixsP8d5MrT1BTV87Maz+I=;
        b=Yu6JrLw+hMgDY7kMVtyfZwEdd1K+01/7JbFdAuauz7gINBqa7BciliYME27Tx/Ma2o
         kg/yo7lNd27ppL0ooOjZbCiDSxfCAiJv5FWvrwSbK0EVyzN31sg1l0pfvfY+tlYvPXsP
         zR0bVwrJJjgp6l8LZUxolaqTBjNwlyzV26CzrLTesnT/FuKntlc86fys88EZ2XVlDDBQ
         Jj1J8qd1uigoL2/EW+97XvLiKBr8zIaD3z65cW+/ktRyinlz/Lfghp61Sr+XDp7oJBqx
         pz9r4v1eJcOiZMgdtHKbGA+QuZ872g2ktBXBQbOobRLE/3hCNxljvgxgmEjJOXL3ympD
         VvIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWdeK3v4OkqtNwhOCCmSfUEPQ63k+Fe7UtEqoNWahgoZHM/zi9RILxkThoad7t0u11G409gPt2U0g=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk59uX+Qbk4y1uAR0feTq5SBpqRU+KvZZ09Yc8Yw0KOvSqvyez
	KmM1wqRZees5yatEw9KgQzUCfVwf9WDP0Uap3pG3KbS/lkbowldfcQ8GtA==
X-Gm-Gg: ASbGncvP+5tAlY15tUJ7Q6M5JOXMXPlZSsxcG1TuddTeO1cZV10djQmanK5HkYXJ+qr
	OUdgrvzkqe8P5jK13q7h56E2R8sf1iaZ8t/h0AiN3DiUTLdlC7nPPmcqewqTlomS/OeRPo+ekvQ
	blQ5F2neRin9m5k5LWveJHD7WJvmiKBlOvfPECB3zPGme16Fn2N71A7r8jvSE6jE+b4eoFQ1XnK
	T1B3ipyIQcPpqTBFO2ev5AkQ3n+ZrjXCFg2rdStYfetpmPN7s61HjdTrJ9iaf3nABS+WO42HF9B
	gl40i8ykokXOS0YHB5nL7RnfRGjN/9o=
X-Google-Smtp-Source: AGHT+IH2JzCbDYy34E1hYHQ0yso9Wp9UTajG+PCJW9T9bsVTXx2H9QNX1r5+ReU/GLmvCrnrQfWb9A==
X-Received: by 2002:a05:6870:e40a:b0:2c1:b4ce:e43c with SMTP id 586e51a60fabf-2dab30bfab6mr1186801fac.21.1746195590711;
        Fri, 02 May 2025 07:19:50 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-731d31a2839sm506566a34.6.2025.05.02.07.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 07:19:50 -0700 (PDT)
Date: Fri, 2 May 2025 09:19:48 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: grof --run
Message-ID: <20250502141948.bszoef7vvhnuworm@illithid>
Reply-To: groff@gnu.org, linux-man@vger.kernel.org
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <fg6yru6cwn4itrn55mmnpt2eerjeph3z3ow3asowf2dhkq5iwv@qewmi2xgqgf6>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pwdihnbjydmvporn"
Content-Disposition: inline
In-Reply-To: <fg6yru6cwn4itrn55mmnpt2eerjeph3z3ow3asowf2dhkq5iwv@qewmi2xgqgf6>


--pwdihnbjydmvporn
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: grof --run
MIME-Version: 1.0

Hi Alex,

At 2025-05-02T14:26:23+0200, Alejandro Colomar wrote:
> On Fri, May 02, 2025 at 07:01:39AM -0500, G. Branden Robinson wrote:
> > [2] $ type mailman
> > mailman is a function
> > mailman ()
> > {
> >     local cmd=3D;
> >     case "$1" in
> >         -*)
> >             opts=3D"$opts $1";
> >             shift
> >         ;;
> >     esac;
> >     set -- $(man -w "$@");
> >     cmd=3D$(zcat --force "$@" | grog -Tutf8 -b -ww -P -cbou -rU0 -rLL=
=3D72n -rHY=3D0 -dAD=3Dl $opts);
> >     zcat --force "$@" | $cmd | less
> > }
>=20
> I was trying to simplify your mailman() function to the following pipe
> (after parsing the options):
>=20
> 	man -w "$@" \
> 	| xargs zcat --force \
> 	| grog --run \
> 		-Tutf8 -b -ww -P -cbou -rU0 -rLL=3D72n -rHY=3D0 -dAD=3Dl \
> 		$opts \
> 		2>/dev/null \
> 	| less;
>=20
> And I found out that grog(1) seems to be not accepting a documented
> option: --run. [1]  Am I doing something incorrectly?  I never used
> grog(1) before, so it might very well be.

Your grog executable may be out of sync with the man page you're
reading.

Compare `type grog` with `man -w grog`.

> alx@devuan:~$ grog --run
> grog: error: unrecognized grog option '--run'; ignored

grog's `--run` option has been removed in the forthcoming groff 1.24.0
release, so if you're running groff Git's master branch, that could
explain it.

NEWS:

*  grog(1) no longer supports the `--ligatures` and `--run` options.
   Simulate the former (which was specific to the "pdf" output device)
   with the option sequence "-P -U -P y", and the latter by using the
   command substitution feature of your shell; see section "Examples" of
   groff(1).

Regards,
Branden

--pwdihnbjydmvporn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmgU1HwACgkQ0Z6cfXEm
bc7RIQ//aVYCWAA5nhPAmq6LEaIUO0ZtAXBLgRqGmL17qeyON/WeFK7rNaLKjC0X
z7s0cp5/MZtrwHikM811TvzUfwRl9k0nPQ6JILXCF9FRIvRy7E89SVrLdRIH1so2
CTq0O1I++onZeUR/2dkYI/Ebxz/VESQFgJeV9Y+xB7nXJ9HCiC7uU5uO1cdWPU5j
uwTNJ4cmlHk1WswqARFTbSdQdTEKv+D6wauB6E/0mnen0OVPlrVj2j5XrfWVQ8Dt
0BttX21FOArpYoJ19isuv+FcQ3R0ti67z+6u10tA3ffL29uEORCDkPwLy9HUTzxc
HISm2r7h6qxCh0SlKbnW0TcvjA5jmgNplAWPp+ZN0bZh7xa5klVkJrVJBTLcfCfv
hE9wbhQqYw5TNBwmlYekD3cpPL4jWPQlavnhQxAxX/IJn2RAEM4K0jTUNLL3lXmL
5Q12HwRpOcbg07IDXHK9Fx3gvoAMrf5G0Gi7AknH/Mfg5o4MF8qZcerWMT9t7ddW
jzUxNRTkqqx+WaD0ghwYUTEP44MmVW2Y/oKB8+7maHvoM9vgCog77dqlEK9TxGe5
hnv5/JuDr2EnNGimjDSIhQ9airNgWT2/4w+YkC+zy7cnvHeNRqnndny1tQfCiypK
sag+Z9VHOuql8faN12vPPlFWgmm0STJrd0e32kWMKagUSbuHJGg=
=McHD
-----END PGP SIGNATURE-----

--pwdihnbjydmvporn--

