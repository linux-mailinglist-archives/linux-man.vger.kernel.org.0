Return-Path: <linux-man+bounces-394-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D17B6833073
	for <lists+linux-man@lfdr.de>; Fri, 19 Jan 2024 22:50:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C9871C21DBE
	for <lists+linux-man@lfdr.de>; Fri, 19 Jan 2024 21:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7915D57888;
	Fri, 19 Jan 2024 21:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZCHf6HV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E9A5821A
	for <linux-man@vger.kernel.org>; Fri, 19 Jan 2024 21:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705701029; cv=none; b=AlCr12AhkSHzVt6+GX95Baf/8ekPLFa1OeQNKqHub/Omf9VxG9HBFB5Rcs8aYcxoucl1XPcONoDfGtV1f0GpQlkUsr0tPlRK0Jid46bsHFE69TynUC9Hl1RwNB32uvQswgpy3M1ZittIUBgbYHLBmlZDSikp94SlKE+ldGGdFlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705701029; c=relaxed/simple;
	bh=oiLeIfmjqB6N6eymrL0cceHL9QXkpND7pXMNrknF3XI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=ZQvQa0LWMtEytzd+5X/tmJHmdZD3xBUsaAtz9eA4F8f8rKq2Cs3DAu1C3u5ll10krmgjcpm+N9sr7VIycQHApZBrTxHTtvfa7gpc/Pq77aZEq+ujwWjkIYF2qt67/gcm0piQ5hymBbUj+XDitTtoIBTZhKRi9JEx6BUdyZOCUfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZCHf6HV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19520C433F1;
	Fri, 19 Jan 2024 21:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705701028;
	bh=oiLeIfmjqB6N6eymrL0cceHL9QXkpND7pXMNrknF3XI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=WZCHf6HVZoLHL1igrS59K8qIybE/yizVtsinV2Oy902gL069uDku5EmNDlb7yVB69
	 Avpwl6awxcAOcrGrgPiGVx1+EBnRoiBzugytdajqVZqLSi3MkSsLG67AzFR7N9NQee
	 ZRYimvpA9YVwzYR7Uo2X1yilaArWosCoxdditiHZQLtvAxPfAOs37dVa9M4Jg5k/OA
	 7f26qRxKraGwcCIF5BEnn5jM6D6Hg/FlBOB0LaXPFVqpkE5OdgtX/PNLKLyEMkfL3H
	 CrYn+RTwxk6uY1Eop+431QhfZusRUXNU2ksXx5s1UnSuK8j7JVAr5tAfiRTWvB1Gs8
	 l4KkqURziXVug==
Date: Fri, 19 Jan 2024 22:50:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: lijh8 <lijh8@qq.com>
Subject: FWD: lijh8@qq.com: about operator(7) precedence
Message-ID: <ZaruodlIbZHnErOK@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="crehIasbPZY+R1HM"
Content-Disposition: inline
In-Reply-To: <tencent_98F329827330C28C2727E9F2106379868609@qq.com>


--crehIasbPZY+R1HM
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jan 2024 22:50:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: lijh8 <lijh8@qq.com>
Subject: FWD: lijh8@qq.com: about operator(7) precedence

Hi,

Forwarding to the mailing list as plain text.

I'll reply to this mail in a moment.  For now, let me ask what
</usr/share/misc/operator> contains in macOS; I'm curious.

Have a lovely day,
Alex

----- Forwarded message from lijh8 <lijh8@qq.com> -----

Date: Sat, 20 Jan 2024 05:20:40 +0800
=46rom: lijh8 <lijh8@qq.com>
To: alx <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: about operator(7) precedence
Message-ID: <tencent_98F329827330C28C2727E9F2106379868609@qq.com>
X-Mailer: QQMail 2.x

Hi, on macOS (and maybe freeBSD), postfix and prefix ++ -- are the same=20
precedence and can be distinguished by associativities.


Why on linux, postfix and prefix are divided into two different=20
precedences? What's the reason, is the C language changed?


---


```


OPERATOR(7)             Miscellaneous Information Manual            OPERATO=
R(7)


NAME
     operator =E2=80=93 C operator precedence and order of evaluation


DESCRIPTION
           Operator                        Associativity
           --------                        -------------
           () [] -> .                      left to right
           ! ~ ++ -- - (type) * & sizeof   right to left
           * / %                           left to right
           + -                             left to right
           << >>                           left to right
           < <=3D > >=3D                       left to right
           =3D=3D !=3D                           left to right
           &                               left to right
           ^                               left to right
           |                               left to right
           &&                              left to right
           ||                              left to right
           ?:                              right to left
           =3D +=3D -=3D etc.                    right to left
           ,                               left to right


FILES
     /usr/share/misc/operator


macOS 12.7                        June 9, 1993                       macOS =
12.7


```


---


```


operator(7)            Miscellaneous Information Manual           operator(=
7)


NAME
       operator - C operator precedence and order of evaluation


DESCRIPTION
       This manual page lists C operators and their precedence in evaluatio=
n.


       Operator                            Associativity   Notes
       [] () . -> ++ --                    left to right   [1]
       ++ -- & * + - ~ ! sizeof            right to left   [2]
       (type)                              right to left
       * / %                               left to right
       + -                                 left to right
       << >>                               left to right
       < > <=3D >=3D                           left to right
       =3D=3D !=3D                               left to right
       &                                   left to right
       ^                                   left to right
       |                                   left to right
       &&                                  left to right
       ||                                  left to right
       ?:                                  right to left
       =3D *=3D /=3D %=3D +=3D -=3D <<=3D >>=3D &=3D ^=3D |=3D   right to l=
eft
       ,                                   left to right


       The following notes provide further information to the above table:


       [1] The  ++  and -- operators at this precedence level are the postf=
ix
           flavors of the operators.
       [2] The ++ and -- operators at this precedence level  are  the  pref=
ix
           flavors of the operators.


Linux man-pages 6.03              2023-02-05                      operator(=
7)


```

----- End forwarded message -----

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--crehIasbPZY+R1HM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWq7psACgkQnowa+77/
2zLK4Q/8CFYEm48dSNUsrlPfgtJJ0NrDRW17VOgXxMW8Oap1oF44p5MNwo3DHjdx
reYbbselIjZ/6nRnXENHyT5fmcrTEA9sfSp/FX76oeRrVO3OQGdabErCKYTfIW6d
5mwwR+l62e0/O/5iwhUZEz5EMOt4g2qHkYxrWrSks78DiS6gQdpXY37w4msirw3z
DPdHvZouvO7MLHguzAr+f9UzHVWnWZPX0+w10jDCx4ID6wiqJZFAkR4Xgb+29eJN
S0a/fyGO2uKrkGw/XJs6O9xYfGQqcGlCq5YHiERuVbxsMVlZG+d133OLm7bCSCC1
LCPZ0Kya7c7KmMGRt/E/lmPdCIOPktx1/dMQDTwx+ZOvSmAYYaRC4q/jxxiR8DRu
paFs0d8MTMiLlN70pDfEkrERrpl0S0VicwAlgU3xd93Nn1h4ajIfIXb/2Uad0wjq
nLdRipJFwBmDqMbNY92xWHLOr92rp1QgF/my4A2mD6zpfPqylI65hZYLpxOCNMNa
KMfMgCZnMkOmTdC23u/00EfZE3nF8utTMLwwk/IwBWZ61PzPugDeGL742MtrSpdE
p3ED5UP6kfTkHJwoLAaVXwR7TA835RHEDHO7ZCv9/vFEp4oTOYiF0/n1LZxmYwGp
aUMHeoDR4G79HR6TB/l5Gnb0QUv1OBDVSJLcnc5N9re5q+Bz/X8=
=b5m8
-----END PGP SIGNATURE-----

--crehIasbPZY+R1HM--

