Return-Path: <linux-man+bounces-3845-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D45B4925F
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 17:04:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5777144460E
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 15:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2673530C63B;
	Mon,  8 Sep 2025 15:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bqqEqRmH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AB24690
	for <linux-man@vger.kernel.org>; Mon,  8 Sep 2025 15:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757343799; cv=none; b=JswGTidAfOdYPVX3RB+Njfx6ZbHiSBui8ZttJhkn85pvkck440R913yXVzxMZqnBpg548HDO6q3KHv4XYc7Nw+VR8PNCX5eruq4592z7KHWTxIdHWeI6iFC9N9TVCEnstPFisNvEwrRCYnZmB6MJsX2bKSz7Y20P++oJJxqag+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757343799; c=relaxed/simple;
	bh=0eWbjSAFsEX9g2JbHuAurYqTGeyZVYfARflQ3o6QNAQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cDXL4aR0FhQoJk/C8eOrHw1LLNxZNwWob2T3R44rRJk4QtPF3TCuFd/WT8udT6WFV61BQWYZBQPJIws3WsCOSE8H6fwIIIqrtBdaxx67lITA6Tw4MXUCHF1Udd5ZRc46ZqOyteMP6jkQITLq1F0H7RGOhhTmgSBCOxfuRxlj2WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bqqEqRmH; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-7238b5d5780so44580767b3.0
        for <linux-man@vger.kernel.org>; Mon, 08 Sep 2025 08:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757343797; x=1757948597; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r5zRO4u2KBFjwkuuUIdqTpbue8we2cX2CAhTgUj3cac=;
        b=bqqEqRmH+enj9L4aeRFor4KbNanFC/c5LezAYUvLuRzC0g2odqoQ/N1gpiT4V5tPWG
         j5bzvCzhJ/m/Bci0KS4acwpe7bMmu3tiMPjPVvpHj8adi+APIK9iFHtYpBs3CXSfb1we
         G7UVsAJvm1JWTBcDmpcOSizwLFey5aibpiGWFxcQBnqaohK80/FULGqMIMiKGvPJDz4k
         Y27CaevITMBturjIiTQfoj/KAjqYi6P7ygiDt1ZqBtq4z5ki5JKUWH6RzSEQSFOxeiBq
         hF7acXSuBOMwxn3NE3Er6f8afqPJgBOU0dcm6Vrp4ahw1o5whM3+oR0H0XdR+e2u2Xav
         eGgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757343797; x=1757948597;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r5zRO4u2KBFjwkuuUIdqTpbue8we2cX2CAhTgUj3cac=;
        b=FdJFlWYr7mKkEc0PgGQ2iZwIUsbUY1ObML4YgJaPFNAaxxM2hNmhnjJ73Ef2yOZWls
         ZdMnyE7QRodHhFKYWeUdJnAxKdbAKMkShpKm6X/jfvYl8+GiOwOISSC/pjJF6WFi4Y5G
         YDiYlIN0wCZFENt5Pdhvpaw9WhuBVc8nHCRhiNJSdz6ng4ruejLZcbRWLlxSiQmd/LIq
         Iaaa719189WofJd6Nhkth4L8O1kSdpkETKWHBzBFR7m0Wa5OWjdrFfqJUpT52v3tULBs
         2BXMCJnuVJ2Ydmz5a4FVurxa6UhZqufst4oeNSgc2ZBcxyCn6ko7Rx9byin31H5vn3N7
         AqwA==
X-Gm-Message-State: AOJu0YzlLFrQQYbZtcEwiNMT2yX8vpwZGmVrnhufXkcRYyLJwxmsnah/
	FgbT2hnbZvrGznCjBqpJozM7YFtcsFmbjuqSOLqfq9mkB5riSpHxEvGS
X-Gm-Gg: ASbGncscQyXH0VlwIrok1LQvj6mx5iPz86EezhM+Iwk5flhcTeMS3FZYG9bWMCwx/SU
	tyaTPd0ChuAMzmVVDMGBJ0lZqDwhcwDUWwAPkdf5qPCBYXQ2gxQSRgkrY8l1nMYU0F/OE5D9Xb9
	80rv5sVAHmwxYieYKNiYJGkHqIe4T6ThKjzrgL7iJmUZEgyZkjx9XOu+nxL0NmzfSxtCJAXpwLk
	nFKH55wRd+rIXBUR+aB3+TmiwSf+oVUfKizJgV/u0iElR3CGbQ1Tsw+YQgSKSVHwH77G/kZScTf
	DahrUIw1nAhir6yDPLjGtjrrUsAmzkiqYVMIMaEuXADHaQhMqceSq1gdyO776dfznAKFiiY5u5j
	nlc7pK0nVS48S
X-Google-Smtp-Source: AGHT+IF3h5Sg1zq4lB6gtId3mI3BYXMYPaTSMvHDlLtgYHOFZidydbaXZ6K6bCOzgQ4npE4tjYpqMg==
X-Received: by 2002:a05:690c:6c10:b0:723:98d5:7a62 with SMTP id 00721157ae682-728084522bbmr63017687b3.3.1757343797042;
        Mon, 08 Sep 2025 08:03:17 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-723a8329a4dsm53531437b3.22.2025.09.08.08.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 08:02:59 -0700 (PDT)
Date: Mon, 8 Sep 2025 10:02:48 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
Message-ID: <20250908150248.a2inbo66jrukhncb@illithid>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-3-bigeasy@linutronix.de>
 <20250830072857.mw224c532jj5xdlj@illithid>
 <20250908135134.lMIYucZP@linutronix.de>
 <20250908141102.ie4yoo5xasiimybe@illithid>
 <20250908142508.QWJtvSuJ@linutronix.de>
 <20250908142915.gse3a3wde3jyruxh@illithid>
 <20250908143411.hXW9GRME@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="57lailieoihrjr2z"
Content-Disposition: inline
In-Reply-To: <20250908143411.hXW9GRME@linutronix.de>


--57lailieoihrjr2z
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
MIME-Version: 1.0

Hi Sebastian,

At 2025-09-08T16:34:11+0200, Sebastian Andrzej Siewior wrote:
> On 2025-09-08 09:29:15 [-0500], G. Branden Robinson wrote:
> > Okay.  What terminal type are you using?  xterm, gnome-terminal,
> > Linux VT, etc.?
>=20
> lxterminal 0.4.1-1
>=20
> > Also, try this:
> >=20
> > $ MANROFFOPT=3D-rU0 man $your_sched_page
>=20
> So this renders is as
>=20
> | The Linux kernel documentation for the scheduler =E2=9F=A8https://docs.=
kernel.org/scheduler=E2=9F=A9
>=20
> which would be okay. So the problem is more on my end then?

Yes and no.  You've done nothing wrong, but your system configuration is
manifesting a problem.  It sounds like lxterminal doesn't support OSC 8
escape sequences[1], but handles unsupported ECMA-48 escape sequences
correctly, ignoring them instead of making the terminal screen a mess.

This same problem was raised by Helge Kreutzmann last month.  I expect
we're starting to see it more frequently because groff 1.23.0 (released
July 2023) finally made it into a Debian stable release, and there are
even more Debian users than I suspected.

https://lore.kernel.org/linux-man/20250825230420.2dl2kkchtmkwjge7@illithid/

There are a number of workarounds while the community sorts out an
end-to-end solution that will involve cooperation between grotty(1) [on
my plate], ncurses/terminfo, and, ideally, terminal emulator
maintainers.  (Strictly speaking, the last group doesn't _need_ to be
involved; anybody could submit patches to ncurses's terminfo database to
advertise relevant terminal types' support for a so-far-unnamed
capability representing OSC 8 support.)  Beyond those mentioned at the
top of the foregoing mail, here's another approach you could put in your
(more or less POSIX-conforming) shell's startup file.

case "$TERM" in
xterm*) MANROFFOPT=3D-rU0 ;;
*) ;;
esac
export MANROFFOPT

(I don't see a terminal type entry for "lxterminal" in ncurses's
"terminfo.src" file; this isn't a problem as long as lxterminal _very
faithfully_ emulates xterm.  If it doesn't, an lxterminal developer or
power user should probably submit a type description.  This is true
irrespective of OSC 8 support.)

I'm sorry for the difficulty; advancing the terminal emulation state of
the art takes the work of multiple pairs of hands.

Regards,
Branden

[1] https://gist.github.com/egmontkob/eb114294efbcd5adb1944c9f3cb5feda

--57lailieoihrjr2z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmi+8BAACgkQ0Z6cfXEm
bc4DexAArMosndoIkYzgjLg77Z/iwsJz0SeDRLzwes3tJZSw5fsN3fnu/oSLT6H5
EDYqTENpgmdOSA47TKcN+NyvgtiPsAK56S+EK/Z8bGOojN6/hYufynMd2XPvsNq0
xeK97YtVUGJAmElvfH847yH7oZ4mO4GfPNVCovxDoVOmm+jEIyxNeeAwvwn+QjQr
XyQn6hzxPdLevPNM7u4OSnOMNTmNZMCLiCT26F1BWlvL3uGnjSwbZtOv9xW7UhBv
Vs8xQ2mbvVAOLJDy8ZO/sFOTCS+xxM10csq+wLNM8sLGjI1PLIUGZjz8CrKTpk1Z
8a7/Sx734RA8kR89kolC5rw7B0fyKo3e40F9jkv8HUnS7zb7o+fRGaH7uuB7RA3h
W4fmSWieFWkb7q2tn2Otw9flpzbfGIGWghbH9c4jCyUwtUyl0Ylago9zxcUr9bFw
ZZA2dIiMonadWvzd2BweS61ULcUrJZNhoZpUbaF5+19PXkA8JYYwFxW3Dsb4X1RS
0ZE8Hx2nHT5pz3RudcP0K+2zvm5ShDQ2BVuToIqVIkOkAgQwm2w4twt2D6BLzLgt
sL/le10fjL/Ykx1fi2uSp+zngOL59fVAetK1xEtKt49wkUOac7OPlpPdzAg62D8v
8M2VZYUtaGXMY024F9jl2oDmOyfBuNuBy7WM5vhwMHy5hHB8sJs=
=ARlW
-----END PGP SIGNATURE-----

--57lailieoihrjr2z--

