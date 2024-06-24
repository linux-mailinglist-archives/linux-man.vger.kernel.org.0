Return-Path: <linux-man+bounces-1258-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB06915370
	for <lists+linux-man@lfdr.de>; Mon, 24 Jun 2024 18:22:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 685FE1F241D0
	for <lists+linux-man@lfdr.de>; Mon, 24 Jun 2024 16:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 298E619DF53;
	Mon, 24 Jun 2024 16:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EH+647aL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D75819B5AF
	for <linux-man@vger.kernel.org>; Mon, 24 Jun 2024 16:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719246124; cv=none; b=kqcMS1Kf7AnWsjwIiOw2AS1hvRT2WURk6jyWjVrtQplcBHz4CNAwnUC8dRrSX9sUftUbAGJ8d/tc8Xq4VA1s2IheGVC4bQIrqBb3f6iqxwpOXGsJIe0tzfLke/8tIwRgYAQTP3ppVwHG0EAo6ceW27NsNHbMIE/NEwZ5SfAcIDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719246124; c=relaxed/simple;
	bh=tPMit4IXCKyQ5ggZF3sX39bzClZuNsDWiMysvTShqmM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pz38vgSDX8yr5oy9DYtqlYWONFmzvxrmyDfiWGkk9NLTMR4i1e+5KtdxBvfgo/UZLSKIOftHNt3DybKbkflA66CYnryYkGvoCqkiK7W2lIDL6kc5/gpXRou/pOBkDgXF7kqrt6xyJ+j8/IOtOHuWcNXyLRhUxbaLYi831Cb99OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EH+647aL; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3d2255f84e9so2163699b6e.0
        for <linux-man@vger.kernel.org>; Mon, 24 Jun 2024 09:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719246122; x=1719850922; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m/Yb/Bejku3C9vrlB2TXu6pDWryAldfzLVmeGzHFcsg=;
        b=EH+647aLxaE5o4iOUj8gwLlDVg4AHSv8hmOwisjLaPD/k9We9gq3+8gRKnaE2m+TFx
         jFp41bFJayTqrmso5K/w6Rpyt24hLPF+jwm5Iey/1pXEWvh+U37A2FZ0JlpYDO8uxrOO
         Feh9olP8QX6O+UIhJ2DMuIEsl31LFTYjjuf7XUgF6+G4LqJlRCBpa46oFSAwlleveUjQ
         6aGCvUsGHqgFPu+9oHELg85Fsc6LTCqnAwL13wS70/6TrZZodGKk32pKe4vB7gdSPw6y
         kryMqsHdRdugiE0jTtLwunBLPm8+IYv/DE+KmGUZQ0H/yxPT3IaDaQ1oZSW/sOYVEuX0
         y9zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719246122; x=1719850922;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/Yb/Bejku3C9vrlB2TXu6pDWryAldfzLVmeGzHFcsg=;
        b=U0AF3SCKyuei1a+2YXx67DQVk5MUMCQi4gPIMNPf/XE+jdVoXNOpTVwzMFn5A9OS0S
         kpbEVzT+WxbopnaDVUz17vjZwtL3yHS+gEZJEfY3HtzlNW4HWOAZRyl+05N9QWeNCi0A
         EWLqn+CYFx4hA8tJv4lyW2DeT2Aahc4YfJ2vG8V5IHZS53CghVyaAlxObldDF9ZVMm2B
         KgFoxO9VaWvFrm1N3y2uXIpg6dQJ2+6LjvnYwKWpt9N996GeDrSamlu9st3iaGaH4Xfr
         vxIM0K1aoI16LNEZY8mnbb59LiarevwGlRCZ1KhN8E8nEe2DrcO2SsTMAa12PgC+79dI
         6XmQ==
X-Gm-Message-State: AOJu0Yxfb4QzqeGApzqfjfXMaif6qotfJvPHCjiiHwGmsqSrk539N0Pk
	HKYrbJ4LCI2Uqn4/L7ppQuKagqtBtH8GSr6c+S6tVukiu/ZQ/hje7S6LyQ==
X-Google-Smtp-Source: AGHT+IGxtOBi0Ul9IgejctBBSyTGmMW14NEEdxrZCLi08UzwFzMPoJMWRcA2y4HYOs16qy/ETTtOjA==
X-Received: by 2002:a05:6808:19a5:b0:3d1:f7d1:cb1 with SMTP id 5614622812f47-3d5401e7b0dmr2218004b6e.1.1719246122231;
        Mon, 24 Jun 2024 09:22:02 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d5344ddd92sm1509604b6e.12.2024.06.24.09.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 09:22:01 -0700 (PDT)
Date: Mon, 24 Jun 2024 11:21:59 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Dash in name of a manual page
Message-ID: <20240624162159.tqodklnxcqp3ixob@illithid>
References: <dl4olmr4xh7abmo3op44fmgdkwqu6tvm7f2txk45zjn46gpspl@rjf5dgpyyojh>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rfl7ckvp4x74cfeh"
Content-Disposition: inline
In-Reply-To: <dl4olmr4xh7abmo3op44fmgdkwqu6tvm7f2txk45zjn46gpspl@rjf5dgpyyojh>


--rfl7ckvp4x74cfeh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Sorry for my delay in responding.

At 2024-06-19T22:06:56+0200, Alejandro Colomar wrote:
> Let's say I write the manual page for git-diff(1).
> The file name is <man1/git-diff.1>.
>=20
> In TH, should I use \- or just -?
>=20
> 	.TH git\-diff 1 2024-06-19 git
> 	.TH git-diff 1 2024-06-19 git

This is a style choice.  The formatter itself doesn't care.  I don't
have a strong prescription in this area, just some observations.

1.  The difference matters only on output devices that distinguish
    hyphens from minus signs.

2.  A problem arises from the difference usually only when someone
    attempts to copy-and-paste text from a man page to a shell prompt or
    text editor, and gets the "wrong" kind of "dash".

3.  In general, Unix systems are case-sensitive.

4.  I doubt that there is a tradition of copy-and-pasting the man page
    name from the rendered document header because there is _another_
    tradition, still widely seen, of rendering the document title in
    full caps.  This tradition came from the Bell Labs CSRC in the
    1970s, and obviously those folks knew point #3.  (Also they
    interacted with the system using teletypewriters, so they had no
    "copy-and-paste" experiences.)

5.  groff 1.23 makes the foregoing capitalization behavior user-
    configurable via a register.[1]  So you, the page author, don't know
    whether the reader will see your document title in full caps or not.
    If they do, copy-and-paste will be defeated anyway ("man GIT-DIFF").

Consequently, my personal judgment would be to not bother with `\-` in
the first argument to the `TH` macro.  But I can't say that things are
likely to go wrong if you _do_ bother.  Odds are it simply won't suffice
to make the document title copy-and-paste-able for some of your
audience, and a big part of that audience will never notice either way.

> How about SH Name?

I reason differently about this case.

> 	.SH Name
> 	git\-diff \- Show changes between commits, commit and working tree, etc
>=20
> 	.SH Name
> 	git-diff \- Show changes between commits, commit and working tree, etc

In the "Name" section of a man page, we start with a comma-separated
list of topics, each of which is supposed to identify a component of the
system.  In sections 1, 6, and 8 (commands), we seldom see the "list"
aspect of this specification exercised (or rather, the list is a
singleton).  But in sections 2 and 3, lists of function names (and
sometimes C objects [variables]) are common.  Since these all name
things you might type that exist somewhere on the system, as programs
resolved by $PATH search or as symbols in object files, or as macros the
compiler will recognize, the argument for marking them up as "literals",
with boldface and `\-` to get hyphen-minus characters, is stronger.[2]

> I'm worried especially about the Name section, in case that \-
> interferes with man-db.

There is no need to worry when you can easily put the question to an
empirical test.  Run lexgrog(1) on your document to see what it says.

$ lexgrog ./man/roff.7.man
=2E/man/roff.7.man: "roff - concepts and history of roff typesetting"
$ lexgrog - <<EOF
=2ETH git-diff 1 2024-06-24 "groff test suite"
=2ESH Name
git\-diff \- show changes between commits, commit and working tree, etc.
EOF
-: "git-diff - show changes between commits, commit and working tree, etc."

man-db seems happy to me.

Regards,
Branden

[0] Secret footnote: The practices I suggested above also translate well
    to mdoc(7) practice, where the `Dt` macro defines the "document
    title", and `Nm` calls designate "names" of topics the page
    discusses.  I don't advocate mdoc(7) over man(7), but I also do not
    wish to create unnecessary impedance mismatches between them.

[1] ...which is defeated if the document shouts its title in full caps
    in its *roff source.  But here is the configuration control.

groff_man(7):
     -rCT=3D1   Set the man page identifier (the first argument to .TH) in
              full capitals in headers and footers.  This transformation
              is off by default because it discards case distinction
              information.

    People who aren't accustomed to viewing man page documents with
    "groff" or "nroff", but do use man-db, would likely put the
    foregoing command-line option into $MANROFFOPT.  An approach that
    works for any (groff 1.23) system regardless of man librarian is to
    edit the "man.local" file to set the register (`.nr CT 1`).  See
    section "Files" of groff_man(7).  (mandoc(1) doesn't respect this
    and likely never will; its maintainer scorns configurability.)

[2] Since `-` isn't a valid character in C identifiers, that aspect of
    the discussion doesn't hold for that language.  But I am trying to
    reason ecumenically, and command names in kebab-case are well known.

--rfl7ckvp4x74cfeh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmZ5nSAACgkQ0Z6cfXEm
bc7W1A/+Mlf7f1wqmIRFpqMPrqMjnwHe3f8n1tznSV8Q7k4na6TZRHykVKURDdH3
ilTvSqtCIGgKH9ihCRWuh+gNYhGhHeJYpb2j3mde3Fk5Lwpe2ON7Z/FRTeffw5Tn
Yj7Fwkt25iZn+ucc7rTxse7MTq7j8uTlB8kh5s1LVOLyFLZTR7rrQIvS2uY7iVgg
uY6QEockBNlbt/JW3RTWZDWDOfCWfee1I1er0QYzGPWkkdaaYca6Xvi4RmwwDQZe
nnam+mrhsGTETG6ozgRwEKRLCsX9xbqKWw+Qt0mBTz77uX4FF3gLPKM3A04/8Ewm
4eTJ2bMBpTjKfkmoT1XIrEzCGY7LPw514elwrSLPWKpgRVL9CEJQfkYVMMEQ5bEY
xIniP87zdZaGHmBIoxhleisCu7n7iH2ER0ItgkXGq2pXRhZBEuFp8OKSVnDTyn90
ZiYWFNIUaQWsKfyFTdpa+h472cV5m7NTXGu60GwLa2IRVSdXXPOwRz4FtJUiJUtj
U9bXW54buXCeOrzWIzygdb3eOczvC4w8QPSG0SBB4SVafUfhw7xqr899HlG2fu4E
fZryXcFU2LVb8Uxbq0PdC+Tsj5hX8MAb2+KrqkPeUUdZ1kTwWJLBjNVr+43B73Dz
GA830UCMm5LbwC/owb4UySwYouBYbCQnkOIA17uufQrBh/BKgyE=
=kimx
-----END PGP SIGNATURE-----

--rfl7ckvp4x74cfeh--

