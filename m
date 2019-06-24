Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 18F2B51951
	for <lists+linux-man@lfdr.de>; Mon, 24 Jun 2019 19:10:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732323AbfFXRKA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 Jun 2019 13:10:00 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:36184 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731061AbfFXRKA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 Jun 2019 13:10:00 -0400
Received: by mail-pf1-f193.google.com with SMTP id r7so7893404pfl.3
        for <linux-man@vger.kernel.org>; Mon, 24 Jun 2019 10:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZGpBYnoSoEDMIH8PkoYONbhFQtGI2Tp1h9fJuLzEC3o=;
        b=Go/6OQ061H65Hb3Mil8G6ypva73IcamxsMUn78J8ja4vJTe49VinZi4cHee7gsTsLY
         LQHx645hLlTYtqQoKl0lP3q7bj7qW+nw7/sfnNLzzILShgsoNYlNhCt2FZDWbc9fdUAE
         saZxouWkpJu88vnLmgGguiNSFVHLJnst/ewvd+kWOGb99w1JEjmdkb3+JlsDkC+79Pt5
         B9F31Moc57W9BnQ5xWzaZcYBsC1kYhiiYkz18BBLvRa7eQum8HN93DzuklWDoxgwiYg6
         vuXFDVMqDGRqiTUhZxVhf0Nbbap58OL7w0TsV8duM9HnLfzggmj86qEa4BiboADeoAnH
         8+Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZGpBYnoSoEDMIH8PkoYONbhFQtGI2Tp1h9fJuLzEC3o=;
        b=G+LDmu3OfuTdS8+ZnELL6PllojqCWbqkaE83uQL88uDUvnv8GD42M8ZWdusucGuL1w
         pG8Z+aGcSHjcSBHA47bJPtpYd4K/lhSZbIuz11swq3WcoeRhmwSL9+v10DFyvJqjDJju
         AAMnZ0NtaKoY6zzIn4141E9rmqW/wzQB9zmPmUwDeO9u2v/DsL2Kk6068EmZBLg0r++Z
         btD+lOOWXSfAAikPVIlWht6oDr1Shs9BweTh0B+Frf7LfAp2dZ6nZw2V/BQulG37ceR7
         lXMzIpTftVAXGjX05AZ7RXusjmOnYV5fF+ZMBAaeY42ot/M+5M3IfUqe8bDztl2kHZqc
         LY1w==
X-Gm-Message-State: APjAAAVibgPvQ+q9ibJ++KwOGp2bs7lwfXslfIxrlXBitqY+DbSb59ao
        ZC89lPQSCx21uNPHhtdBSqY=
X-Google-Smtp-Source: APXvYqz6KMMgoJ50dDwo6r1SPgg+W/ooSET5rIB1ugEHBPtcxqB4bwmS+PqLLwewBh6to+1A3iRctQ==
X-Received: by 2002:a65:64d5:: with SMTP id t21mr34693622pgv.310.1561396199315;
        Mon, 24 Jun 2019 10:09:59 -0700 (PDT)
Received: from localhost.localdomain ([1.144.250.7])
        by smtp.gmail.com with ESMTPSA id a16sm15407886pfd.68.2019.06.24.10.09.57
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 24 Jun 2019 10:09:58 -0700 (PDT)
Date:   Tue, 25 Jun 2019 03:09:54 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
Message-ID: <20190624170951.j35riyawyas22w7k@localhost.localdomain>
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
 <8736liit24.fsf@oldenburg2.str.redhat.com>
 <20190513141746.mail6ny43wh4t5oj@localhost.localdomain>
 <87y335m6fq.fsf@oldenburg2.str.redhat.com>
 <20190517155057.vr5uk6hfkyp44y3t@localhost.localdomain>
 <CAEMqeSrCMFZ8GQU=kR_+KXaqnd9m-3qUSQk1PNZ2xHjZ_YVHFg@mail.gmail.com>
 <alpine.DEB.2.21.1905201651260.2935@digraph.polyomino.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hnw73twxsjcuzfo7"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1905201651260.2935@digraph.polyomino.org.uk>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hnw73twxsjcuzfo7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Michael,

At 2019-05-20T16:58:50+0000, Joseph Myers wrote:
> On Fri, 17 May 2019, Carlos O'Donell wrote:
>=20
> > On Fri, May 17, 2019 at 11:51 AM G. Branden Robinson
> > <g.branden.robinson@gmail.com> wrote:
> > > What would you prefer?  That the man page not document the bug at
> > > all?  Was it a mistake in your view to have added the information
> > > about the bug to the man page in the first place?
> >=20
> > I think having the glibc upstream version information is useful.
>=20
> Likewise - if a bug is worth documenting there I think it's
> unavoidable that the version numbers describe when things changed in
> glibc upstream.

Any word on this?

Regards,
Branden

--hnw73twxsjcuzfo7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl0RA9cACgkQ0Z6cfXEm
bc6hhw//XOkE6A4YHLy4MQDKoyJoKI9qvha06dW9ZjEo72dpwSxi4j3Irg8mPgdE
mN+Mn04sF8k37Q1f5x1bY5OTmSNRrD3T12hE4WrI2r9X6c7DRXpJBEfG/xEm618G
TMZCRkgAT2lNa4Oewr5OGODVeUplbjbA1kaOUHu7x5SGVdZ03e6DTR5WVXoOzkje
AOfwrwLyqDiZI/kiouzURpM1qixDavJo3eOZXd50gxi5ZcJ9D4+2PkTgyf48jsck
2xovnDrm6pehm/NG5ln7qvrh+2TJWoDFfIw7nkdcUoAYUWEHhjzIir9BBhE3yj3v
jA0OEZglm16rwSunxsCo4B2kZyfxdl011wPzSfUl89nssmlo+4UCXV6KnN/k+usA
gGuYqrVPiNZvZ85joOcrye/elPoU8mwziw3h5YaxnZjkyRwVdU0S+gI4W8BdAbCY
rs27+fqeujWrKmrcVJYgViWjH65jHh7b0mrNGsxXJ/sBy5/TDHalU2SWNUb72J+D
r/ncBYwWuLVMEzY0nT8TZRb2cN4t+QItzT8fzp/OzjDMxOkoU4Xb7OpcIWjetNJc
hQY+VCfK0NEP4ZYPGLMKFHTPKdas7VQWfsshYIN9pWJfgwxG30J0R1zGoA/2yGY3
OkGjLic9R7f2RWv1aC7cw+xA72zQSJExXI2Iylq7XG5/9kYtLg0=
=XDvw
-----END PGP SIGNATURE-----

--hnw73twxsjcuzfo7--
