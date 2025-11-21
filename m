Return-Path: <linux-man+bounces-4308-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B494C7BF3C
	for <lists+linux-man@lfdr.de>; Sat, 22 Nov 2025 00:40:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 467324E2210
	for <lists+linux-man@lfdr.de>; Fri, 21 Nov 2025 23:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 730F330E846;
	Fri, 21 Nov 2025 23:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DgCOcB6g"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74DA2E03EC
	for <linux-man@vger.kernel.org>; Fri, 21 Nov 2025 23:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763768405; cv=none; b=VCQRNqXrDmfSv3PaUT7LSP6Mmiz1ozsG3Ktth/Pk6oMpYB8g42WQRzNpweaAYbs9h/WRFHnCRor+EyeQJzNnrT6BI+AXmmuHlMvQrGetWIc/EqmkHE50dhsX1COyvTIMciX/R0uMlAYbbbA8aVFhzpkfu9VU4H7ImooZJedWgbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763768405; c=relaxed/simple;
	bh=YYhWKjmo75Cq2YcG1NsoN4JTOuJcS2xOgs5SAyBfPQI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jNfImm6R3kE+ZQOCYauMyAJfrmLsxzVSjLGnJnK30fgCbe0TQu4Bdq2RX9Ro+3/2qXynU0PCNoas8giarKXbZsG0fI3U92XpfqgO9k4Y1+VG/5suhj+akzLoExKYlv65d0GZn5RI4pnSdJLilbXw5a1FzpZjKdpLNgfbx6sFDt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DgCOcB6g; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-78a6c7ac3caso27601157b3.0
        for <linux-man@vger.kernel.org>; Fri, 21 Nov 2025 15:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763768401; x=1764373201; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RiYOKNvndD6vv45nyEyRvep3hLSkS/Bs/wkkNzT6Pks=;
        b=DgCOcB6glrGcLny0mu7WgKlDO55qLoIuMgK+pG75+7VqrI22bm99huHprTuHYucqIo
         NeJGTT/wbrEX+XcDvrfn4Jzo60OJCIQ3RYc8u3I5PAh6AgR3SmkGxbw+uLVqEIAM6VxY
         Q7EHLTcm/3irh3NJCxUxAkTWHFl03gD4WUbb/XZ70oUPG9rYAtEsVQ5ebSCs6dxtyEDN
         7DgpmIYozYy7IXCHyuzdmrwvP10V7kZVoYciMPVUqPH8nk96ohlsWAXuHmdH/5NoKRVD
         w7KWkNCio7RgOC0qzXAt6tCEku47LeF0uSO266fkS64VM0hVLQZD77DcATqFBVO/a397
         7+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763768401; x=1764373201;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RiYOKNvndD6vv45nyEyRvep3hLSkS/Bs/wkkNzT6Pks=;
        b=PKzU75hd+7xNZoa3EEbqOrXSeHRksJXIqUqLd8v+Y/Lc6bkaCiKmEYFNA6RKn1Uvm5
         MGPVWlWG8QpLC+efn84P/7XwLfJsrk5PDr73YeYPHKjRegCK/vNqIAyqPe0Z+VCGQ/fk
         hbq9bMNeG0ZMrx9/vahA4Ugb/WHxtl+yTOU3fI9UPqT9DiGqUwnIig0ssRMQT6ImZpl2
         F1gOFOciPERP7VoNAa7xA6cOSzodWjvXnzrVS2yn3hpFRyibCvzVcOKSsiK1ANpY+rW/
         x85rY7W7vvxmVarDZwCE42VSIeSpnSnt4qwsf2Bo+niyY2BM0PraBxrB7gXKwyZKdEeN
         YEFA==
X-Gm-Message-State: AOJu0YzxB7spZdAA3NsDBhpf9TNQC5trsCbxdNvLD+KxA2cpg2eQH243
	B/dYlmmZMso+bw2RO6564wuxawAJKHv5Q+c/lCRCzJgoYN8REKd/85IX
X-Gm-Gg: ASbGncvhlY0PyJ/QYQ4MpT1I9046XKIv5zY0F33/WmFlMpPpmVpAUkgrnuqluzS6Aa+
	KdXqaKDnkPeCJoUgRZDviPh/2Ui7Iy1rcn9JUjn3kcjH95ZGhzJZuXGyqp+QcFGoc4TSHD8ld+v
	ZzVgX5yCuQIm2pYuoUX3OTsceM0fuq7qddJOYXXc8kZxxhvXGzHx4sg1bPMDHZpNxz2Mg+IHMeJ
	rC3ay2eCUFpQxGqPlatKH8PRM1fuYcVuswfuisUFA/Bi0RLDESMUEaCX/jjE2QwXSYM8hu0wsA9
	1IplLg/DRXH+eICoanLApE+kqQzpIYogVveNyKdU0Opctu2rmPYk2xUoXKXrzEzEi4coha32YJS
	lz272/U0opSP7K8YK03HD0qKG3aWqwqK4z4DxnEOxQmU1VDFAwttegqzQZXztUC7/aSzEO+yUtF
	XW
X-Google-Smtp-Source: AGHT+IHAPob09A6B62Ij1lNbuiTX3GF1uvYRPRoX4SnNpFfszWDGfMr4h4erNrYIFC6yzIXnVLfcpw==
X-Received: by 2002:a05:690c:360f:b0:78a:7a68:e4f7 with SMTP id 00721157ae682-78a8b4719a6mr35984907b3.20.1763768400515;
        Fri, 21 Nov 2025 15:40:00 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-78a7987fb02sm20063097b3.5.2025.11.21.15.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 15:39:59 -0800 (PST)
Date: Fri, 21 Nov 2025 17:39:57 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: linux-man@vger.kernel.org, Jan Kara <jack@suse.cz>,
	Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH v2] man/man3/readdir.3, man/man3type/stat.3type: Improve
 documentation about .d_ino and .st_ino
Message-ID: <20251121233957.7ul4pq6tdqu7ihcg@illithid>
References: <h7mdd3ecjwbxjlrj2wdmoq4zw4ugwqclzonli5vslh6hob543w@hbay377rxnjd>
 <7cce7dac8fb57608d71b073f8a3c94532e5cb688.1761693028.git.alx@kernel.org>
 <20251028235306.sxnpm333u4xtxgt5@pali>
 <20251029070039.6axt6yugqobyv2nh@illithid>
 <20251029193413.mjm2kzszktkjsak5@pali>
 <20251121211028.tbqopxtbay5eun4n@pali>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5meq6wp5mcb64ykc"
Content-Disposition: inline
In-Reply-To: <20251121211028.tbqopxtbay5eun4n@pali>


--5meq6wp5mcb64ykc
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] man/man3/readdir.3, man/man3type/stat.3type: Improve
 documentation about .d_ino and .st_ino
MIME-Version: 1.0

Hi Pali,

At 2025-11-21T22:10:28+0100, Pali Roh=E1r wrote:
> On Wednesday 29 October 2025 20:34:13 Pali Roh=E1r wrote:
> > On Wednesday 29 October 2025 02:00:39 G. Branden Robinson wrote:
> > > At 2025-10-29T00:53:06+0100, Pali Roh=E1r wrote:
> > > > If you are referring to the "bug" then it is written in
> > > > informative part in RATIONALE section of readdir / POSIX.1-2024.
> > > > I wrote in my first email in that email thread which Alejandro
> > > > linked above.
> > > >=20
> > > > Here is direct link to POSIX spec and below is quoted part:
> > > > https://pubs.opengroup.org/onlinepubs/9799919799/functions/readdir.=
html
> > > >=20
> > > > "When returning a directory entry for the root of a mounted file
> > > > system, some historical implementations of readdir() returned
> > > > the file serial number of the underlying mount point, rather
> > > > than of the root of the mounted file system. This behavior is
> > > > considered to be a bug, since the underlying file serial number
> > > > has no significance to applications."
[...]
> > > > That part is in the "informative" section. I have not found
> > > > anything in normative sections which would disallow usage of
> > > > that "historical" behavior, so my understanding was that
> > > > "historical" behavior is conforming too.
> > > >=20
> > > > Please correct me if I'm wrong here, or if it should be
> > > > understood in different way.
> > >=20
> > > I can't speak for the Austin Group, but I don't read the text
> > > quite the same way.  I interpret it as saying that some historical
> > > implementations of readdir() would _not_ "return a pointer to a
> > > structure representing the directory entry at the current position
> > > in the directory stream specified by the argument dirp, and
> > > position the directory stream at the next entry."  But I suspect
> > > that's not what it _intends_ to say.
> > >=20
> > > Instead, these implementations "returned [sic] the file serial
> > > number of the underlying mount point", which I interpret to mean
> > > that they would return a pointer to a _dirent_ struct whose
> > > _d_ino_ member was not the file serial number of the file (of
> > > directory type) named by the _d_name_ member but a pointer to a
> > > _dirent_ struct whose _d_ino_ member was the file serial number of
> > > the underlying mount point.
> > >=20
> > > I think there are two conclusions we can reach here.
> > >=20
> > > 1.  POSIX.1-2024 might be a little sloppy in the wording of its
> > >     "RATIONALE" for this interface.  Presumably no historical
> > >     implementation's readdir() returned a _d_ino_ number directly.
> > >     (Though with all the exuberant integer/pointer punning that
> > >     used to go in Unix, I'd wouldn't bet a lot of money that *no*
> > >     implementation ever did.)  I'll wager a nickel that readdir()
> > >     has always, on every implementation, returned a pointer to a
> > >     _dirent_ struct, and it is only the value of the _d_ino_
> > >     member of the pointed-to struct that some implementations have
> > >     populated inconsistently when the entry is a directory that is
> > >     a mount point.
> > >=20
> > >     If I'm right, this is an example of the common linguistic
> > >     error of synecdoche: confusing a container with (a subset of)
> > >     its contents.
> > >=20
> > > 2.  The behavior POSIX describes as buggy is, in fact,
> > >     nonconforming.
> >=20
> > Only two? I can image that somebody come up with another conclusion.
> > (just a joke)

I wouldn't bet against your joke proving out in reality.  ;-)

> > Anyway, I think that it is important to document the existing Linux
> > behavior and whether it is POSIX-conforming or not is then second
> > step.  We can drop the information about POSIX conformity from
> > manpage until we figure out how it is.
> >=20
> > > > Also I have not read all those 4000 pages,

Pity the person who has.  :)  And mastery of all 4000+ pages should not
be necessary for an implementor to make sense of a reference entry for a
single function, command, or data object.

> > > > so maybe there is something hidden. It is quite hard to find
> > > > information about this topic and that is why I think this should
> > > > be documented in Linux manpages.
> > >=20
> > > I reckon someone should open a Mantis ticket with the Austin
> > > Group's issue tracker to get clarity on what I characterized as
> > > "sloppy" wording.  Either it is and we can get the standard
> > > clarified, or I'm wrong and an authority can point out how.
> > > (Maybe both!)
> > >=20
> > > I'm subscribed to the austin-group-l reflector and will take an
> > > action item to file this ticket.  I'll try to do within a week.
> > > (I have a lot of old Unix books and would like to rummage around
> > > in them for any documented land mines in this area.)
[...]
> > Thanks for taking that part. It would be really nice if austin group
> > can clarify how the whole situation is in a non-confusing way.
> >=20
> > Anyway, inode number is always connected to the specific mounted
> > filesystem. So when the application is doing something with inodes,
> > it always needs a pair (dev_t, ino_t) unless inodes belongs to same
> > fs dev.
> >=20
> > readdir() and getdents() returns just ino_t, and without knowledge
> > of dev_t, applications cannot use returned ino_t for anything
> > useful.  On "historical" implementations, the dev_t can be fetched
> > for example by one fstat(dir_fd, &st) call as dev_t would be same
> > for all readdir and getdents entries. But on non-"historical"
> > implementation, it would be needed to call stat() on every one
> > entry. For example /mnt/ directory which usually contains just
> > mountpoints, will contain entries where each one has inode number 2
> > (common inode number for root of fs).
> >=20
> > I looked into archives and I have found that this problem was
> > already discussed in the past. Here are some email threads from
> > coreutils:
> > https://lore.kernel.org/lkml/87y6oyhkz8.fsf@meyering.net/t/#u
> > https://public-inbox.org/bug-coreutils/8763c5wcgn.fsf@meyering.net/t/#u
> > https://public-inbox.org/bug-coreutils/87iqvi2j0q.fsf@rho.meyering.net/=
t/#u
> > https://public-inbox.org/bug-coreutils/87verkborm.fsf@rho.meyering.net/
> > https://public-inbox.org/bug-coreutils/022320061637.4398.43FDE4D7000110=
830000112E22007507440A050E040D0C079D0A@comcast.net/
> >=20
> > Maybe they could be a good reference for future discussion by austin
> > group.
> >=20
> > Just my personal idea: If there would be some xgetdents syscall
> > (like there statx over stat), it could return both inode numbers
> > with dev_t and application can take which it wants.
> >=20
> > For example, NFS4's readdir can return both inode numbers (depending
> > what is client asking). NFSv4.1 spec has nicely documented this
> > problem with UNIX background of mount point crossing:
> > https://www.rfc-editor.org/rfc/rfc8881.html#section-5.8.2.23
> >=20
> > Pali
>=20
> Hello Branden, did you have a time fill a ticket to austin group?

Not yet--I procrastinated and got preoccupied by exciting new
undefined or ambiguously interpretable behavior of GNU troff.

https://www.mail-archive.com/groff@gnu.org/msg20834.html

> If the ticket system is public, could you send a link for reference?

It is public...

https://austingroupbugs.net/view_all_bug_page.php

=2E..but to file a ticket or comment on one, I believe you need to create
an account.  If you file a ticket yourself because you tire of waiting
on me (which I'll understand), please let me know when you do so I can
take this item off my to do list.

Regards,
Branden

--5meq6wp5mcb64ykc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmkg+EQACgkQ0Z6cfXEm
bc7h1Q//aHQ8FlAwPZQ+iMvwMUTOSNoncEhXSI94sPeGAPIg5FrrORNSbDcBQyur
7Ptm9s+lDe/wga3d0KUDkY0SsRcaVoBPCexPphuFdORm8m2WesPEPGl1eS4klAMQ
koBlwaRz9zwntRNMLmhmXwCcgPBIcGc9DLL2ZS+7a0H5updUmyfQocD7e+Rt9ahw
+hFaxKS+zWHUK3TmrsTRRsplLhcWDGv0/2v63fLFojVH5hKwqy1fnZgnIb30gWhz
yRXe6CWFXqLIYHy8nNsGFAZ+uJ0ZlFpC9H83W2lY8mLx1wIM/Cmncspt/C7/3TAv
xP2JZqz7fGqcSydboGUtLZRafmXJqjnlnRtabubLb71TpSLyAUtBiTX2Razbd+pJ
YvTdLENa4pznaZIObWklVw39txD3+cRZkqGAD7Oaj6Odehg+U9Z5Ui5qNNk+dUDg
mHF9+oNtskRPIwtCe3ew/RC9B5YOyyBeYrCuivvP2j60TqkWXEE28kqH3gG2R3ig
M9DluvN7n0XmGziIMVR/cO+M6ByWy3LxcmRHkhKE/LzRmI/IHLHi8vO7Gf8m2w8Y
tJovaVYD7fPu67CVWxE/hCz/pDFomT4GiFewVzaFw++bl8NGs83J2ePr9S4+XNJG
MyL1c45c/JdGZWvX0HXDDRzaRYOfr8Af0hA3wlAvHP2NuDEFUbA=
=Z+dk
-----END PGP SIGNATURE-----

--5meq6wp5mcb64ykc--

