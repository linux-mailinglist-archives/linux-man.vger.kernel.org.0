Return-Path: <linux-man+bounces-1091-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A70903C19
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 14:40:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97C671C20F76
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 12:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0427417B50C;
	Tue, 11 Jun 2024 12:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LkCEWLl3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD0717BB25
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 12:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718109595; cv=none; b=E5J4o/9EQuU84ErHezLIhjVhfD650dEu0/h7CMcU4Bc40ssnTEzl8qWnqy8dE9IOmPhYtrjENc8i9plw3pHNGisILyW6I75r0o2pmvy7AXbbY/AiB8vLo/OPVe3bs0V5fiBK+jpYZqjcEjsLSne3W5RODQR05SacgdbkxNEFzFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718109595; c=relaxed/simple;
	bh=U9fwJ06OwRN7n/gb1SDAiDyjfGwImzamhreQgYq2I/k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ruu4M2yF7PbsElbF3HmyO1atc+YcbdN0hcJ0CxlHTr5gYHfl7o3Yp4wiY2FiGMqR/uGphZrGurgtHGePq3ivDW5KjZXtCojIAK3D3rX+VsNgipmb+rtzp8C/9i8en5Xfk4tEXTnIBmb3Ovi+nQkdSpdPqEJLGKKTMGc/AYbbwkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LkCEWLl3; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6f98ac6a037so1329211a34.1
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 05:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718109593; x=1718714393; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z0ZOsjesj7KmAx0qD3+TPCjhObBluY4cqky9bQbo5fM=;
        b=LkCEWLl3ukz8QAF7wWoeg5j59UCElaYjR1aWxkntMUDzOole0QHIdA1xoWrXWJ96hD
         TInqbhvs/oH1czFai/a3vE9BId2SmNeo91FiLe9HamPBq82Xs6RlaxEV4tbVdiW4m7D2
         UUA7sTcAdte8RensVHTqUeU4h63dykjfADjKvhubjeN2USVsbFW25rIt8ZY8hBd9OvkA
         FE2Fxu8E+VqWSqgv+kgpP65xPzMMRr1XuljKtpGJNNSBT0iizLWJFaN1ErnRivAoHmB8
         AJr71TGOQI/iYbI0V22W5nGjGlatmJreBfygma8WuccsPYXf2nMvE3F73mcFvgeecOPW
         hDhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718109593; x=1718714393;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z0ZOsjesj7KmAx0qD3+TPCjhObBluY4cqky9bQbo5fM=;
        b=WX+AjdGQeo4LyoY7oe1IpXB2D4PYIXBhqhVsxJPaK9S0m+z2i5MRUhxl8bkkPl3Dm8
         fqLXii2pr/Khm3b2kRrmkT61xGDxKhNKt48fkWgF/zFJnlOnXt2jEB+EUscr/nD6qCUY
         11CIkYNKM/asR3OXPEVIdq2Uuns47H/77h0HqvdBsFLlMl6cfpX0t6F8huzhTROIZ8rc
         VBcc50eX/AbV03Mzqty/wa/+7jqnJwTW61mAWTzI8cgNmv7tnFMVaN3SKsw5gY2Q1fDx
         IqABv2m9l1fWntyt2D6+rUj5R1LjbPxEwauFxJisErMrsW/DInhJxxizYnjMclAG0+Ru
         XHxg==
X-Forwarded-Encrypted: i=1; AJvYcCXkiVeKjfcZ74Lgiw7Xtm3XZmDNEviYcdGCR+7jUak2a5L5nmpun9mE1nVGYSgLUzy4slIStYIul51fpWaj5kQc+Cr+KxLzHhSB
X-Gm-Message-State: AOJu0YxohuVL5Td4z/TYmJgEnmDLtHGTdI7iNnolh6RZuDvQR5y+pj4g
	m86kdan/PJEGNoiZyzN/XfUMbaOQueYfrmnMp0LAIeHFPFzh7qUk
X-Google-Smtp-Source: AGHT+IHPiabkrzG6WamVDThtj8ON3pOTZbpQlrwfAgSDZceID8u3HoH91dUhh/JH9N4Ch3cq7hWvNg==
X-Received: by 2002:a9d:7591:0:b0:6f9:a996:80ac with SMTP id 46e09a7af769-6f9a99681ffmr6594555a34.9.1718109593089;
        Tue, 11 Jun 2024 05:39:53 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-6f9accec4c3sm842618a34.7.2024.06.11.05.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 05:39:51 -0700 (PDT)
Date: Tue, 11 Jun 2024 07:39:50 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Joe Damato <jdamato@fastly.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/1] ioctl_epoll.2: New page describing ioctl(2)
 operations for epoll fds
Message-ID: <20240611123950.qmc6m2rlrlst5cfg@illithid>
References: <20240604181740.1741860-1-jdamato@fastly.com>
 <20240604181740.1741860-2-jdamato@fastly.com>
 <xofdfsokfmqtvp47d4oqtsplm5jvx6iu4xfompgilvsno3pqlv@vwpqcnpk3g2v>
 <xfnz43tte26qmq74arom6jmx7ihfdhbqkwp7jfcgplvbqaye63@pb5ebrnza3ox>
 <ZmOBT2g55AD53QYS@LQ3V64L9R2>
 <jslixhueinkq3uuoeudezrri6qp4vxoa4sp25juklgryk47ktw@tbiz6lk7mmh4>
 <Zmc4CCQxwY3D6z1e@LQ3V64L9R2>
 <y72guiyuimztw4raiik2ye6m2wynrlh3zthnmpjvrn72wfz7fq@ux4d6wta5vue>
 <ZmdfD-UUhVkyws1w@LQ3V64L9R2>
 <uz4vtiy24yaisc3j5bvb66ezk2og32l3hawsx4rwp3ehgxp4cr@nvzwqlbbkhoz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xr2x6cky5nq5ja5l"
Content-Disposition: inline
In-Reply-To: <uz4vtiy24yaisc3j5bvb66ezk2og32l3hawsx4rwp3ehgxp4cr@nvzwqlbbkhoz>


--xr2x6cky5nq5ja5l
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-06-11T00:21:59+0200, Alejandro Colomar wrote:
> > troff: .tmp/man/man2/s390_sthyi.2:124: warning [p 2, 2.8i]: cannot adju=
st line
> > make: *** [/home/jdamato/code/man-pages/share/mk/build/catman/troff.mk:=
63: .tmp/man/man2/s390_sthyi.2.cat.set] Error 1
>=20
> Hmmm; can't reproduce it.  My only difference (AFAICS) is I have
> groff-1.23.0, while you'll have groff-1.22.4.  1.22.4 has many many
> bugs, so I guess this is one of them.  You can skip this specific
> error with
>=20
> 	touch .tmp/man/man2/s390_sthyi.2.cat.set;

groff 1.22.4 did have, by my count, over 400 bugs in it that groff
1.23.0 fixed.[1]  However this is not one of them.  groff 1.23.0 still
complains.

Let us recall what "adjustment" is in typography.

5.1.5 Adjustment
----------------

After GNU 'troff' performs an automatic break, it may then "adjust" the
line, widening inter-word spaces until the text reaches the right
margin.  Extra spaces between words are preserved.  Leading and trailing
spaces are handled as noted above.  Text can be aligned to the left or
right margin only, or centered; see *note Manipulating Filling and
Adjustment::.

> > troff: .tmp/man/man2/s390_sthyi.2:124: warning [p 2, 2.8i]: cannot adju=
st line

What is at line 124 of this document?

$ cat -n ./man2/s390_sthyi.2 | sed -n '120,125p'
   120  .SH NOTES
   121  For details of the STHYI instruction, see
   122  .UR https://www.ibm.com\:/support\:/knowledgecenter\:/SSB27U_6.3.0\=
:/com.ibm.zvm.v630.hcpb4\:/hcpb4sth.htm
   123  the documentation page
   124  .UE .
   125  .P

>> cannot adjust line

This is a legitimate diagnostic arising from a ridiculously long URL
colliding with the formatter's frustrated attempt to adjust the output
line.  Here's how that renders.

NOTES
       For  details  of  the  STHYI  instruction,  see  the documentation p=
age
       =E2=9F=A8https://www.ibm.com/support/knowledgecenter/SSB27U_6.3.0
       /com.ibm.zvm.v630.hcpb4/hcpb4sth.htm=E2=9F=A9.

Not much the formatter can do about this monstrosity.  People with
crazily wide terminal windows, or with adjustment of man pages disabled
(a groff 1.23.0 feature)[2] won't experience the warning.

You _could_ make it less obnoxious in the source document with input
line continuation.

=2EUR https://www.ibm.com\:/support\:/knowledgecenter\:/SSB27U_6.3.0\:/\
com.ibm.zvm.v630.hcpb4\:/hcpb4sth.htm

Regards,
Branden

[1] https://lists.gnu.org/archive/html/groff/2023-07/msg00051.html

[2] NEWS:

o The an (man) and doc (mdoc) macro packages support a new `AD` string
  to put the default adjustment mode under user control at rendering
  time.  The default is "b" (adjust lines to both margins) as has been
  the Unix man(7) default for typesetters since 1979.

--xr2x6cky5nq5ja5l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmZoRYwACgkQ0Z6cfXEm
bc6HSw//bVwpMgP/p4VjrQNonbooRW/mrzwj/bhmmpuqrUzVDNC7NvZ6gshxYRo8
3VfheI0rp9nGfBD8cLnjGuAs7aU6vdQXwTzQfUum7lhAwmSODPP+Ne5T/XIZ11VU
+kwjpqXu6ONA2QZkSKjvXMVkEdUkmO8qf3bh8v7suJOYwTebbpYppO78s2dHF2xn
unm2UUO7XMsEx4XudJYMA1IRSo2tjKakYKBv61RzszavIQVZ1MFEk+ZdeGMRtUG9
sxtyDomKzz34AaQ/viVzm7fRRQ3fdnUmpC3/oUN3ndw3PRVRTyzXwPvslXvl+NeE
m+vvTCbPTOYGZ7LJsi1EN2E6lNpCCM3pHhwPu3er3wWMVBUGM0shzv2mTdWr1yAw
2PyiThJhgVfEQno7SDugz2EXUZCPOauHw+jOZaDsiQlkQwXasCRg6uZ5zuz4dP+w
YYZhKwduadehReGFEqVzTB5o4o/KO0MZ+X7OI11ran/esbbzc3djh3X98jjZGjMI
uY85nh6JX2XCQwKKQft0Qig4CXqFyRsfAV/8gn6Emz6QGLszu7ZlvotusuSSZ6h/
f1zzeAtOEny2IvsGBMghFcQsHxQOr0YIkXjNdYdN3rSxwHQevTr9NcrW5dBawtqm
fczFb4Q6vGLPvm+z+wukMAVWhHMYdgCSCi8NVwa4p+7bGdv1qww=
=0I4I
-----END PGP SIGNATURE-----

--xr2x6cky5nq5ja5l--

