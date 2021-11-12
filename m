Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0C6844EEE3
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 22:52:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231776AbhKLVzO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 16:55:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235838AbhKLVxN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 16:53:13 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94A5EC061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 13:50:18 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id n85so9562143pfd.10
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 13:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FQiG6qgCgUHC6oXKdrzV8evigRmfswq2b0knuR4EaWY=;
        b=WESWlBhTC1+BgarODqsu8jvUl3BrfhSfwdBtciyXnrtmWFcW5cTII7Dncqnnh07G2f
         4pkvGsExgJZhKZ74chJl5/gnqPNsUDcoEXsuj4QR87fbqDddvoAkooHawf+YiIRSLdwh
         aoaaEHEuy4aw20AhBsYJEiULQLaig+WG7U54PVlx7ITydfEsjRSoue3bcrgOf3FauENd
         lj+GB/aL0MoYOypDhAS/cWkrKDHYTYnDrBPkMU9iWZrdO4QQk3ZjejYeXwS3KIPVtoL8
         SRo/2JUTU3wyoSCmItKYD2avNi0s6Vqhv0owLpbkLsfBB9xRipujVgrTkoG8+ZRVBV9+
         HmYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FQiG6qgCgUHC6oXKdrzV8evigRmfswq2b0knuR4EaWY=;
        b=daEWeNv0DseoDHNulDBaNGLSHCsETHTux0/skkGsxbj0qYE33Dl33+zDLMIre0yTJQ
         5kAfK6LVZPguU1jh7RgtepqEf5Gs18E/BrkQ7Z3heMA8TKPUbQ2Odu5QT99NDpfKztYy
         jalhwnmYRNiDsHxSvHUbowq4+cLAr/lIsR4OdkMZuIrUAWpaXJk3rTilueZDvCnDBuEt
         M+ayomuG3Nb6Fz3m6JicqPXW0Tjj9/Z9gvcUsSFyr0ByeNRfe4zjxqzLSfpwOTB6M0Bu
         Qe65vSR2MPpp5sD4UpJ5Ze87PEk85SKFJEVy2YeDZ9EF8lkmEWze6pl/kEGQCOQLqLSn
         gG0g==
X-Gm-Message-State: AOAM530edPwO6Q7bowRxEPr9lKMhdyPKx8mG9/ycq90tcq+A1+XtKzUE
        omMcBeQxW4v2P39K7yy2D3RmmMce1XQ=
X-Google-Smtp-Source: ABdhPJx/NJcJdEeVOmCz40Al1PqAfuq8XpmaR+gjp6blLY/jIAee+mLjpZzPgLS/zzK0aK3n9PSVRA==
X-Received: by 2002:a63:91c8:: with SMTP id l191mr11959927pge.404.1636753818148;
        Fri, 12 Nov 2021 13:50:18 -0800 (PST)
Received: from localhost.localdomain ([1.145.57.118])
        by smtp.gmail.com with ESMTPSA id q13sm8065471pfk.22.2021.11.12.13.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 13:50:17 -0800 (PST)
Date:   Sat, 13 Nov 2021 08:50:14 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 redux] man-pages.7: Update nonbreaking space advice
Message-ID: <20211112215010.u5s5mvvs3m2wyqar@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gisi7izwlpartocq"
Content-Disposition: inline
X-Mutt-PGP: OS
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gisi7izwlpartocq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Advise usage of \~ escape instead of \SPACE; the former, a groff
  extension from circa 1990, has been supported by Heirloom Doctools
  troff since 2005 and by mandoc since 2019.  The advantage is that
  \~ is an _adjustable_ non-breaking space, so it will typeset
  non-jarringly both in .EX/.EE examples when filling is off, and in
  normal running text (which is filled).

See linux-man@ list discussion at
<https://lore.kernel.org/linux-man/\
20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain/> and follow-ups.
---
v2:
 - Stop correcting "nonbreaking" to "non-breaking".
---
 man7/man-pages.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 96c3deb20..23015b00a 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -689,7 +689,7 @@ If the command is short, then it can be included inline=
 in the text,
 in italic format, for example,
 .IR "man 7 man-pages" .
 In this case, it may be worth using nonbreaking spaces
-("\e\ ") at suitable places in the command.
+(\e\(ti) at suitable places in the command.
 Command options should be written in italics (e.g.,
 .IR \-l ).
 .PP
--=20
2.20.1


--gisi7izwlpartocq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmGO4ZIACgkQ0Z6cfXEm
bc69+w/+JtLuPvCTxnmSksPeHOKoVNvHjG9ledzBv49ufOm5aEBA8BxXd73Yq66N
pyKvv+TMkIhmOwpj6j8fcthPr8gUU2g7sE+3PG7QSB6Pvonl1+Lk5omPzb0dEfd7
5uxsQ2Z4ZAdFK8M1wQ1IM+gvGM10m84lXBxJKG9lwXmlRRldX2l58ZvVi04p1Qt6
9M8t5LolTzSd8Gsp02szdZ7xgJjLErif0WE/DI4NfYlaJ24JI0zpS6e4U5ZspL0/
G3QCde7Ot3GOqkOxzutZJoUL6EJyzs7mcnkRaJr7A/b94+KhKWPVbYj3WozEFGVv
hTO9Hd/1TB+KU5EJJoXnQ7xmjdCbsMErt5J1+s/u3mKiNMe8VIvroJLhdIEfuFH9
OCJhr6JUfjrD7nD2YN6uFblZvVCFYPWQOdTEjCdvMTv1YQqlc8C5zzvKx1mmzJiO
qJ2W0CvCwQ+qbfBnrb2hjmWo50BmIpdFyf0VMq+zZSwA5rC0eT1l6wKsvT+iJbLH
9SSItlQNYByVgIzOcNYwGTNgPWJ4A+Pe0CEoQ4/KyG0sLHXs2oxuUqnOD+1BRZuE
jxAuw/97fB9pG5hurq/NTwpRCXrWQC3zTBxbKK2QUHUykzpjld/uVpn6zNgci2A6
f4DBiRmlgY6l4vBI067gHBCgxop7XYydLUGGnYvsFf8F+oJ36dY=
=mLaM
-----END PGP SIGNATURE-----

--gisi7izwlpartocq--
