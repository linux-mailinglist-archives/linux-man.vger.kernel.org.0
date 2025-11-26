Return-Path: <linux-man+bounces-4327-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D07C87C48
	for <lists+linux-man@lfdr.de>; Wed, 26 Nov 2025 03:05:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1005A354210
	for <lists+linux-man@lfdr.de>; Wed, 26 Nov 2025 02:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57581306B06;
	Wed, 26 Nov 2025 02:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B87wF6yf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DBB1F3FED
	for <linux-man@vger.kernel.org>; Wed, 26 Nov 2025 02:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764122730; cv=none; b=FPMGvR1eIqR20/AiCjYvJokG8OyQ1SJ4wg3aUlh8bvIXBbhxRdqh+zGoPNuRP+6mo4ZJH1cqK7ydaTeY13MJ28NdQwcExT9oCXtbJFnZ1bgNkm5VefuQj9LqmYwOUA5Aqjp7SAnkx6dv/tB6I/zKVpI0rp1hx0PoWgRuVvvd1NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764122730; c=relaxed/simple;
	bh=UTWYwm2BDjx0Eejnok1VNyyJEDBv/GeHAm7S06OLeZA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QC9bhBszCNixfE+wK2VvRUV3WyjqRFnWS0bbNlW5aHhnZsQaBwM1BCk5qYLN/NewBmSfQ3nFtRkX1DmRQJi9YCP3MYnjCXwmnPecFYmSZmfcSFjosUqRDPsk/Coq6DQvcRm5YQnozCOLxV2uObWzlfPhWI0lkCagio8gcVyU4zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B87wF6yf; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-787ff3f462bso5059507b3.0
        for <linux-man@vger.kernel.org>; Tue, 25 Nov 2025 18:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764122727; x=1764727527; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zE3v6F5kiHTM+Z7JWZ4khbBjp2W5ODoao4Bl7Q636Jw=;
        b=B87wF6yfsuUeRwZuWnqz5AbWP2x3hGZvkHC/kPIV0Etw+iOhoH4k708Tvdl/bVcILm
         qGqCWaaiYxydoANzJh+8n+3WS8h81M54Rjm4ODA+GrhBbKa4Ca4M5smnZJUdpEgYfK5d
         4miqnUD9HUaHiEMDnDldlyh74UiMQ1lblPSRoS3HLTi8HXSMtyNf03jtn5Z9v7aaUSAD
         jsMgA6I42EY3VukW+BcAoHD7D2YKHmMcYXUR/Fz3IWXA29SyG54fKyBnpTFTa40t8ObT
         aF0KdGJ6oUf4qgwZjuladCNRJSa+vm97h+3haYSspGT3sTVWbTLR+YVcmL6pWvxMejdq
         6HKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764122727; x=1764727527;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zE3v6F5kiHTM+Z7JWZ4khbBjp2W5ODoao4Bl7Q636Jw=;
        b=Zeb5vIYv60l3EuGTnWQLhM1sus7yHursMdz4ROtIphloylPRS1oh30EoFaLLqsWd+f
         QaXjfrLpq828fjW4JYJ5DTImxYNVr8jtyGKNpwk4v4+NiK5XXDYGeJSNTY4MKqEpZ/PX
         xkikiWPz7UELZV/d0g9vAMh0+zVLIJlSBpx3OmLnKuVTG/TPV3Li7Y+WL/dAuYvAwt5e
         x416EhJRSM356FA4iIx4SBTP7w8tpdieDCRMI3e7U1QzraV68l990QQ4BSY3bAuzvO+M
         f3UYT/RCpitE8ZpmhK04nMQkL4/4qPhH4EQcFUkz92VfH69b1H7cmIc3kYsNonUbeiKe
         pXiw==
X-Forwarded-Encrypted: i=1; AJvYcCWh5L3V9ktUAktZpRdFyAo5Hz7NmOaP2DwhT+UNofN8TH74JMRmGLnOiDl04fOALbKU9YvTZ0dver4=@vger.kernel.org
X-Gm-Message-State: AOJu0YyF/BoibzolGRL+QjbV5VYrOmsRgkkw9mZCDtKeqe6sYdFe2MAD
	/9guWmyeF/OYc/aEu/jKHeLJcZ0J4/7BxdBYPbgL/K3QK3Ps7fduQSUU6VW2DA==
X-Gm-Gg: ASbGnctwZOxgTYPvmZot/eySzywut+ZJYEtzgZzhqdMMgRvuUbPbm1SM+c+h/clArQZ
	2jGbBXMQmWWGDQbXVRzIsGn49KnjnuP/oLK8/gsRDaPbDgqUt/i7iwj+8c55QcoS9WHDQoeUi7l
	M1zqjmpvWG9JV578jSNMdtIjUZP18BywoCQ/dbQdV+Vj1KSw9d9bhU29wsU1/DG6SjcWZ3p/NSb
	4KX1CKXXVXw5+6PnAKEY2pH34ozxlyfD8t2PD0/T3jztAJEADT4oOeXpU2U0/oY0y6gbt8ppF3d
	t2gFdwdSj9HaBsxULkRIfiheK8Nu2DEI+x0Kb6ZZf+oqJ0i5FTP//L4vFwIE2SfeoLC50FHTmos
	tzfqPrIksjHGgVbhXPCqKn4jW6gyiiI2BT+zapMVmMq8v48EPfbsPvUZ+emi6WcZrHmdHz6jlkB
	8F
X-Google-Smtp-Source: AGHT+IENHb4rCAOzT5shQHmmMtLeCQ5XB1X8IqNmv2ZRKLG3vKVEYegbKgyy45CaTCmXcm376yHbSg==
X-Received: by 2002:a05:690e:134f:b0:63f:b988:4a91 with SMTP id 956f58d0204a3-642f8e2e37emr15048574d50.24.1764122726598;
        Tue, 25 Nov 2025 18:05:26 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-642f7048d7esm6730767d50.4.2025.11.25.18.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 18:05:25 -0800 (PST)
Date: Tue, 25 Nov 2025 20:05:24 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Restore angle brackets.
Message-ID: <20251126020524.cq7alectskkzbjh5@illithid>
References: <a719bf4893291d95db164329b2c6add4e4a0e3e7.1764119717.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ndkzs67lp6coby2g"
Content-Disposition: inline
In-Reply-To: <a719bf4893291d95db164329b2c6add4e4a0e3e7.1764119717.git.collin.funk1@gmail.com>


--ndkzs67lp6coby2g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] man/man3/getopt.3: Restore angle brackets.
MIME-Version: 1.0

Hi Collin,

At 2025-11-25T17:15:39-0800, Collin Funk wrote:
> While looking at 'man -S 3 getopt' the underlining under PID looked
> strange to me.  These angle brackets were replaced with spaces in
> commit bc34639b160d8bd3d3daf748e8a54bc1df429901 for some reason.
>=20
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>
> ---
>  man/man3/getopt.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> index 8495719af..1e4f697c0 100644
> --- a/man/man3/getopt.3
> +++ b/man/man3/getopt.3
> @@ -415,7 +415,7 @@ .SH HISTORY
>  .P
>  Very old versions of glibc were affected by a
>  .UR https://\:sourceware.org/\:git/\:?p=3Dglibc.git;a=3Dcommitdiff;h=3Db=
f079e19f50d64aa5e05
> -.BI _ PID _GNU_nonoption_argv_flags_
> +.BI _<PID>_GNU_nonoption_argv_flags_
>  environment variable
>  .UE .

Syntactically, if that's what you want, there's no point calling `BI`
anymore because only one macro argument now remains.  groff man's
"CHECKSTYLE" feature will complain about this.[1]  Just use `B`.

Semantically, I expect "PID" was placed in italics (underlined on
traditional terminals, but consider MANROFFOPT=3D-P-i in your
environment) because it was a mutable parameter, not a literal part of
the environment variable's name.

Personally, I find both the old and the new renderings inconsistent with
Unix man page tradition.

groff_man_style(7):
   Font style macros
=2E..
     Because font styles are presentational rather than semantic,
     conflicting traditions have arisen regarding which font styles
     should be used to mark file or path names, environment variables,
     and inlined literals.
=2E..
            Use italics for file and path names, for environment
            variables, for C data types, for enumeration or preprocessor
            constants in C, for variant (user=E2=80=90replaceable) portions=
 of
            syntax synopses, for the first occurrence (only) of a
            technical concept being introduced, for names of journals
            and of literary works longer than an article, and anywhere a
            parameter requiring replacement by the user is encountered.
            An exception involves variant text in a context already
            typeset in italics, such as file or path names with
            replaceable components; in such cases, follow the convention
            of mathematical typography: set the file or path name in
            italics as usual but use roman for the variant part (see IR
            and RI below), and italics again in running roman text when
            referring to the variant material.

So I'd say:

> -.BI _ PID _GNU_nonoption_argv_flags_
> +.IR _ PID _GNU_nonoption_argv_flags_

Regards,
Branden

[1] groff_man(7) in the forthcoming 1.24.0 release:

Options
     The following groff options set registers (with -r) and strings
     (with -d) recognized and used by the man macro package.  To ensure
     rendering consistent with output device capabilities and reader
     preferences, man pages should never manipulate them.
=2E..
     -rCHECKSTYLE=3Dn
              Report problems with usage of this macro package exhibited
              by the input at verbosity level n, where n is an integer
              in the range 0=E2=80=933, inclusive; 0 disables the messages =
and
              is the default.  This feature is a development and
              debugging aid for man page maintainers; the problems
              diagnosed, and range and meanings of the supported levels,
              are subject to change.

--ndkzs67lp6coby2g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmkmYF0ACgkQ0Z6cfXEm
bc5vIA/+P6BCAfKJ2KO6qUH0I4hkcaajwbe3/CLQHsAlWgFC7SK55GFVWPEfvPhp
H2D4indOrTVY0QF2Qa1EAIapG0hscxpM9blofioK9EJ1lb5TOwRpXZok1B0vgavu
/YdA1vuVfjP1R+BK8iz9qxrXrweFwPZLyA/FrSi24lKpsem64pGAqsDlYc8cHj5O
m6vrfMuYWoKIUN2p8F9SsqGdo2LRCNt1Sf14MiQScQpY8IAad3df8rKJEta1alSn
N0lyZNVpOdArW2YBEZXZUAcletH0V77me6squWbu367P0FklKQQ9uxXKJ4K3YngZ
sqdu4l4SuOJ8sWWzvGR9+B9HlvTPpK9Sky0MoWCVAX08fEj1Ds4P899lB5k7WPGI
QZB9MJwokTC/9L11iI4SDyEGAOout/rv1xm1TYZ5UPLdHpQfz7nuSEF2t/1x37bZ
iy1d9wmPmsnJcF6CkmsOxwQtuYUf+ZDv/J0IO0HRyOYOnuXqSYPGV0WkRwXB1eif
/lYv1/EdFhZ/tmlK2mVAvaTRWYXU1QUTIVVkn4vxCjFBasXGwSIEbgxLyQyGgMVq
vfQFmK5eyiGxBrff2vNjwaIPlZ8NsBs4koKXGiizm6+lQIhw9tWa1Gm49Y/xqWSj
KSOOKK60KHlugWMppyvigUn+kX81hA3clOzhI/Elq59z5X+9mUI=
=QDL6
-----END PGP SIGNATURE-----

--ndkzs67lp6coby2g--

