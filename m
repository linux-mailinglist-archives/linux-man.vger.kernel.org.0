Return-Path: <linux-man+bounces-1883-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 936B69BF485
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 18:45:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A3AE285FE2
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 17:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 303A02036E2;
	Wed,  6 Nov 2024 17:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V1jmLuII"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BC820651F;
	Wed,  6 Nov 2024 17:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730915139; cv=none; b=Ksdjdhs7fZP7jHtEmMvczk1F05wD8kRfe7vtoLAPyoz8ZqEM6hYNU8XrsSB7BZYTc9YOCUkmEAmhEjUHv0mPtfY3YBEn5zMEaomj9wxOj+/rlJxRazPZa+/wXDHjviT4WYBR+kgmqpGXcgrUOdtcTmGSVHzoCe60D+1OU4GSvm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730915139; c=relaxed/simple;
	bh=tyyezbJJ8YeMsfW3pt8EjL6DqDeOtHIryOTxi7I0F7U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VBtC5777iERfPVJJXwEgi58cKcz57gitiTabjnjbE/p9DuhlYJVd5J9w+N16sYhVKnhuHr9tdBlWfCQQBIoVEbJmiBwqgXM89K4dWuE3UKYKrErPLTeAxh+vHz8kPqzqJqe4gvvgZxvrJspkeGcUpLU2UClryhVFZ2ijtpHBLzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V1jmLuII; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3e5ffbc6acbso77159b6e.3;
        Wed, 06 Nov 2024 09:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730915135; x=1731519935; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=czYyX+D7QcXGfphZenBSLNp7Hcs2H34lMjYNtBUMKQE=;
        b=V1jmLuIICk9Qb+fp64YW2FAevYvW9P7ienrfeAx3vdmJKtOS8BZK5fFM9mak29j88j
         s3UL5eNJABQs83fdVGqdrpMNIoExLobNqd5MIL2d8h/KiBGkF22eWHQfST9U5hMKRhgo
         mOFX3E3I2PkWt84ZaKEPfKrb3wc5IY9NHdWV7u4cFoT2tf3oGhUakWOP1xuoOne+gCwf
         BRPz+jaXOJ0rPofijoFnheUThIsgatY1U9oIykwadTWenW2sbhombW8p2dsgexPygOW/
         Wc17En2KQYNBX1pVlTJjonSAu/qzf82XFMIS8oJ2FBlf0W++qxrcgiwXUK1AXLr3DKyc
         wDzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730915135; x=1731519935;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=czYyX+D7QcXGfphZenBSLNp7Hcs2H34lMjYNtBUMKQE=;
        b=dlFEkby/ZbOkP73mdhOKpxmfGlEEYdBfF5UK8yaIrEjqdRuTkAWlZyLLN5+OKAw8NG
         ozAhNb3S4TPix7iyRiqrkzMtdxt2Wm8/Mqpi9SpOC/WUoy3+fZ+ZuIlqjb1smq+dcg+b
         CiyQGYnEBA1ci8QptviPU+Cs/XT/pdUKjhsaBQECGzlHcNppAJT86YrTQNS+dOt33TUC
         RjBl+NvLI9Kuo9ZZpolcRwIa0v/aeedAH0MMfuTT27g35euBJR6dp0eqw3sX4CvDouO2
         HnIfAveT85Ah7IfOTtp+mpE0ZkUvMqgodXNhsW01TJ97f6sAUaCqRNWJ5yd+LUihO+HL
         ArZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQWceXg9Zp6cvanO5oOcpzUKytssXFejIIhXZOmF7maFA174DNM1jYwrcl7aqNiDs+X4R2dQEO@vger.kernel.org, AJvYcCXoECufAePeBMQsLgRhRxPI7krKa6ejY7+yrrhQpIEp/J9cCAI46qUwFgtHjqAQceMndNNmQ2/P86I=@vger.kernel.org
X-Gm-Message-State: AOJu0YzNUZ6n1Indck9MoAzRCdLlVyGb5N7RMJnpEhhShDnDeQemNbMy
	0eaw5JOUs013IdxWUi/4Owb/CAKtLQ5b4psfImnpi1HH+6sQLFP2Hwvv7A==
X-Google-Smtp-Source: AGHT+IGiu9BFQ0o213+l7iI0bbhWOlpvoxQ5vrUhtsrEEz7OAaO2+Q7ATMSO+94QbFM7bjWgs9yGEw==
X-Received: by 2002:a05:6808:1b12:b0:3e6:2d10:2392 with SMTP id 5614622812f47-3e758bfd94amr20976678b6e.7.1730915135503;
        Wed, 06 Nov 2024 09:45:35 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e66123f363sm3091537b6e.37.2024.11.06.09.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 09:45:34 -0800 (PST)
Date: Wed, 6 Nov 2024 11:45:31 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Stephen Hemminger <stephen@networkplumber.org>
Cc: Alejandro Colomar <alx@kernel.org>,
	Kuniyuki Iwashima <kuniyu@amazon.com>, alexhenrie24@gmail.com,
	branden@debian.org, linux-man@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <20241106174531.crictruy4scop5q2@illithid>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241105055338.61082-1-kuniyu@amazon.com>
 <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
 <20241106091801.3e021842@hermes.local>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k2fva7g3bwsdhk7a"
Content-Disposition: inline
In-Reply-To: <20241106091801.3e021842@hermes.local>


--k2fva7g3bwsdhk7a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
MIME-Version: 1.0

Hi Stephen,

At 2024-11-06T09:18:01-0800, Stephen Hemminger wrote:
> Alejandro Colomar <alx@kernel.org> wrote:
> > We use two spaces after period (the correct amount).  :)
>=20
> Double spacing after period is a leftover from using typewriters.

No, it isn't.  See URL below.

> Modern usage is single space after period.
[...]
> 	These days most contemporary style guides also recommend using a
> 	single space between sentences, including:
>=20
> 	The Chicago Manual of Style
> 	The American Psychological Association (often referred to as =E2=80=9CAP=
A=E2=80=9D)
> 	Microsoft Manual of Style
> 	The Gregg Reference Manual
> 	The Associated Press Stylebook

You're not bringing any new information to the table, and you don't
appear to understand why the two-space rule is in place for _typesetting
software_.  I don't just mean *roff, but TeX as well.

Neither of these is a WYSIWYG system.  Neither of them is Markdown.

The rule is not there so that people can argue over how many space
widths should separate sentences.  The rule is there so that the
formatter knows where the boundaries between sentences _are_.

If you despise the use of two spaces between sentences in a *roff source
document, there's an easy solution: use what Alex calls "semantic
newlines".

https://www.gnu.org/software/groff/manual/groff.html.node/Sentences.html#Se=
ntences

I furthermore remind the reader that, in GNU troff/man(7), the
intersentence space width is configurable at _rendering_ time--if the
author of the man(7) document honors one of the conventions that permits
the formatter to detect sentence boundaries.

For example...

groff_man_style(7):

Files

=2E..

     /usr/groff/site-tmac/man.local
            Put site=E2=80=90local changes and customizations into this fil=
e.

                   .\" Put only one space after the end of a sentence.
                   .ss 12 0 \" See groff(7).
                   .\" Keep pages narrow even on wide terminals.
                   .if n .if \n[LL]>80n .nr LL 80n

Arguing about the number of spaces between sentences in a discussion of
"semantic newlines" (or whatever you want to call them) is
counterproductive and wasteful of time.

Regards,
Branden

--k2fva7g3bwsdhk7a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmcrqzMACgkQ0Z6cfXEm
bc4ohg//fjhkX7uJNSAuPmkHN+uo8lBeBVhrLEgMjHGJIiFoAg6ROtPppDQx4LyO
bPIPMlv9JGYKEm/ZD3xI6g02dSrhc91XPWdn6vaRmSf3MjRh3ZeZMmZIzbMlQHxO
nV1iDhZsLibEPGY7Sk/uwtAOPIKxKH9+j3tGOYpkwiiGxjb9rG3+2webWAfmi1qm
AUFPenBahy4FOtHDrj52FOWxjhtL/ATJ52cLiHCI1aobIBqAROyappIFzDjLT9KL
8JMGn+cvcMaB3fZqmrsu5c3tm3lL0y5NReYfypgtFGeW5YXzmtI8DI01J1bokm6F
M4myJlxV9KnogxzRZyJnxVj/CiJBRVxAapLrdSRnjTwcp+3WY2jbVD2ViCJvmG9P
80fZBfRkiomXfkgw8KIFgEaEXwD4vpd3p6mM+Hkk+TYo/5062WitmsukkmYAZNtg
ks7DFbbfoAfOgk12nL637tslZ6tw5Ngjq4knnH6a3iVwnqvMz783tNQUac8LrWJ6
iRuN2KiqWkvd0a5CGT4BeIltg+FYGoLN9ipBCiz55bftc6jvgVK7KCKfhQA3xo4I
JbEav3WLy+N2jqpNm/GL/XxcipILKNMb1VUAjSj9url4DTki/yPsy2Od2Y+hN4IB
H0yBIJtUPIIYY9saT2dbInzyWrYxGZ/ARd4l0WLF5Sk8bgrVimI=
=g08U
-----END PGP SIGNATURE-----

--k2fva7g3bwsdhk7a--

