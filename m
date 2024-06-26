Return-Path: <linux-man+bounces-1268-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FCD91755B
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 02:54:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A5BC4B220C0
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 00:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1BE579CE;
	Wed, 26 Jun 2024 00:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pkb11rMV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428EA4C6F
	for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 00:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719363262; cv=none; b=at0rRqeFcF23IXYlq9NZbfo7LMHOwQ1rfBSP1EgDP6t25zf664F1ANM413zFVpcgXAfSBitbnoHoxh3g2l7R27ndKKUb+heXAG3EJJTWfsFcuAxQgjYjxrFaEwO3CkhPU2fJMSSAppdeoRqh+xKkKaYg9GO3SOmnVaPw21+oCI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719363262; c=relaxed/simple;
	bh=teyk0QIXwbSfFS4f45Zmo2utP+BUS5frtfh7Kw2xTCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DH01784lWLBIuTtGo2KrXJ1ycJLktusuCU0pM/NYFsiT0akkiMKXYfOQAlMLqllPeLGgwQjd+3W5t8b5Q4oNBGeN2EsWwnPqhx2dxBSZCsGXyIGvLnMp8I9IXrjtXzum70hn+sJ2GG3a9oP9HQ5eLICIX7VNU0MwYFpmLIbP8v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pkb11rMV; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-700cd43564eso505568a34.1
        for <linux-man@vger.kernel.org>; Tue, 25 Jun 2024 17:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719363260; x=1719968060; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ToiEiNNWa8Oxz5Lw1uNix5mMuL0DH0Il9ZrH4+gCrpg=;
        b=Pkb11rMVeAKSaVPFCFx16U5ZsXFQV11M8Zt9Ac6lcEGGNPRa3tSsDYrjLB0IqI3EBd
         Hx3WX6GESb4lGEAc8N0puquFv8GAewkrPtjo/v9dS4s2UW7/++v2YsTZnT3hJ+cusM4D
         uj+HzJmiAqRaTv4ikCNnGv+/q0JQPjbjFO0vqLfNLUZEkIm5HKcKFB8yKl9WRvtI4ivJ
         GYoXv1SyYhcIiAzQQ9bqeZG1ILEb9slGLIElHAMM/S2f0wKMlx/GExn/ogHxHy7Hs/YY
         ypf93V9VI6cGIofiPC/TuUxaodBSN+T0QVRxQPahoU7dgRgrOWPMOFyFUx4/2tRK/bMb
         0oFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719363260; x=1719968060;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ToiEiNNWa8Oxz5Lw1uNix5mMuL0DH0Il9ZrH4+gCrpg=;
        b=Qc03kesHJlTegwuS9K1vCI29Z7kLK+tEZY7IZc8/ig++mXfY4oHfGDMge4alF4u6FE
         iFdCAVyWoVKZRU8k/5cMK1Xx0fRlN8E+7Q+jpWsNYgUIYSlBK3klaZyJuIlihqUNu83F
         SGCmFMVw0lCoGTgKBgXE8AEa2QjTx6BmI5eBhMxxuXZXB/lkWh+oYFASeB+1xYZ36YbD
         C2yVdNIuRnBlV2hjfnciALVsebFgQMLTkkhL5U+EOsViC7x0AgllXGPLIA2C8cK3SlXp
         jP7JBdgOJf4Z/pipfU7IigV/PA0Wls+pScxxBcYRk36YQ2GUxveJ6PVSC7DXegkx3Tjv
         7mHQ==
X-Gm-Message-State: AOJu0YwICeTx1DfnXMutpOVDmzx+DC6VsWF1oYSB6H+tpdPDu0WRfMDz
	V7w/pXbZZJaGUKZgL+OKWcdEvF1FFXQurCNxvB5gNT2YC9GnSRw6QAuYGA==
X-Google-Smtp-Source: AGHT+IHgV9lSpn5cor4Q8rZIyu8tvoht+zXuJXIPngmEaUszErmo5MSbBJTEBOIkaFB/IKzMyVeUEw==
X-Received: by 2002:a05:6870:a70b:b0:24f:c31a:5c29 with SMTP id 586e51a60fabf-25cfcf2f0bbmr10648022fac.43.1719363260215;
        Tue, 25 Jun 2024 17:54:20 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25cd4941a11sm2741052fac.9.2024.06.25.17.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 17:54:19 -0700 (PDT)
Date: Tue, 25 Jun 2024 19:53:51 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Dash in name of a manual page
Message-ID: <20240626005351.li6s73ek7pchy2as@illithid>
References: <dl4olmr4xh7abmo3op44fmgdkwqu6tvm7f2txk45zjn46gpspl@rjf5dgpyyojh>
 <20240624162159.tqodklnxcqp3ixob@illithid>
 <q7nihycam5tqdyapcfp252r7v6ajnmp3qikfg3n547qj7iy2fw@ta3xynl3oulw>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ncvbwmwho4tx7asf"
Content-Disposition: inline
In-Reply-To: <q7nihycam5tqdyapcfp252r7v6ajnmp3qikfg3n547qj7iy2fw@ta3xynl3oulw>


--ncvbwmwho4tx7asf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-06-26T01:43:22+0200, Alejandro Colomar wrote:
> On Mon, Jun 24, 2024 at 11:21:59AM GMT, G. Branden Robinson wrote:

> Huh, I had missed your reply somehow.  :(

No worries, you're still pretty fast.  ;-)

> > 1.  The difference matters only on output devices that distinguish
> >     hyphens from minus signs.
>=20
> This includes utf8, which is my main output device.

Yes, and not everyone uses a font that shows them the difference so
they're bound to be frustrated anyway.

> And in my head, which feels that there's something wrong, even if few
> people will be affected by it.

Our irritations are to some extent our own prerogatives.  ;-)

> > 3.  In general, Unix systems are case-sensitive.
>=20
> And dash/hyphen sensitive.

Only where the character encoding distinguishes them!  The term
"hyphen-minus" was unattested in English until the ISO 8859 committee
found itself dealing with the mess that ANSI X3.4 made.

(That said, I prefer their mess to IBM's.)

> Of course, I don't expect this to be used (or useful) often, or maybe
> ever, but let's be correct.  :)
[...]
> I guess I'll use the escape there [in TH].

I won't stop you.  ;-)

> > > How about SH Name?
> >=20
> > I reason differently about this case.
> >=20
> > > 	.SH Name
> > man-db seems happy to me.
>=20
> So, what's the rule?  The first white-space-delimited \- (that is, the
> \- forms a separate token) is the separator, right?

Strictly, the rule is up to lexgrog(1) or whatever parses man page
documents to build indexes from them.  This is not something over which
a *roff formatter has authority.

lexgrog(1):
     When using the traditional man macro set, a correct NAME section
     looks something like this:

            .SH NAME
            foo \- program to do something

     Some manual pagers require the =E2=80=98\-=E2=80=99 to be exactly as s=
hown; mandb
     is more tolerant, but for compatibility with other systems it is
     nevertheless a good idea to retain the backslash.

In practice, man-db's lexgrog accepts a pretty motley stew of
separators.  It maps several patterns to a (whitespace-bounded) "-"
token.

https://gitlab.com/man-db/man-db/-/blob/main/src/lexgrog.l?ref_type=3Dheads=
#L96
https://gitlab.com/man-db/man-db/-/blob/main/src/lexgrog.l?ref_type=3Dheads=
#L217

> The pages I was considering writing are keyctl-...(1).  I want to
> separate that huge page into one per subcommand, as git(1) does.

Understood.  People are daunted by gigantic man pages.  groff(7) is
pretty big, but is edged out by ffmpeg(1).  bash(1) leaves both far in
the dust.

zshall(1) is truly staggering.  But that may be cheating.

Regards,
Branden

--ncvbwmwho4tx7asf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmZ7ZpgACgkQ0Z6cfXEm
bc5JeBAAoOfkEdF2ZYqEuS7peZhlbN9hmNN4GHx2H54iEKnPQaH/DWfFd++WICLK
OxcHgPQkFlg6b0O8HANVnAqR12W6qi1hLxddlgL09mUpKFkUh7qZUxJPf/BedlUC
NNejiPsOKY4ykgqKct91Z6PHrs7AT8tgKanZuH5L+wtEE3YDx6tZ7dz4aIM4zCjv
pqnoE7jQzCxjrK7ZY4zRpIq0gk1F7s4/JI18UBwtgC9nkOLXW4aimdZ9M8ijcZtO
gMd6r8jVjKBXLk7pARuKU3Ic1viKcOOwRY5QNJdiWvWc9Bceae5NhuVvJMx3Pq2n
/BubY8+KjpC4dvTBPB3gBNrFPaSIUsHtlfEUHX+zRfkhFU5Z8xhmU62/y3XeZs+G
lqlQMxsNwydDO8pMptKwuPVaVTDqKqWXoT9JKEr8pmtp4huLktgGmWi6FdYoffFJ
+AuVFlevcdmhWsot28E+A8LT0nqP+uZZWY/Q0TO1VN6gim716QMxfxmiqpCDXvhu
/RwO4/6Phv972szab0SsHv/UO/uzrSGuEpj1XRHdmuZCKvZGD5qwmHyL+8nakfma
76u2yW55Jn0u2Yc1BOYphPx7MwoktkT0CvBpwA/am0OjI/dNGAWiaKa+a43gyEbe
cC3VRWFPXcrD4c/0wTNJUAC9gXztGDGwumK3L33e5E82ItF2Sjk=
=ywO2
-----END PGP SIGNATURE-----

--ncvbwmwho4tx7asf--

