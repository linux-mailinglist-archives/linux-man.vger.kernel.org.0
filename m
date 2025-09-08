Return-Path: <linux-man+bounces-3847-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CF4B495EE
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 18:47:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA0281886B70
	for <lists+linux-man@lfdr.de>; Mon,  8 Sep 2025 16:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1083B1DF26E;
	Mon,  8 Sep 2025 16:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XL9/3+7G"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5371E130F
	for <linux-man@vger.kernel.org>; Mon,  8 Sep 2025 16:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757350047; cv=none; b=B03A6brn0KEqp1+IO4NdVnIcWSGYuRTdLT3V3/e/zf4UP3msgGcMUjoT7KGW3lEU8O1bOik36926XCy1rF5sHRR3biz/XCEXULTlVDZPYba5yP64RMPeyMEH96DsK5Z5E5xCeZIrfa1AJ80blhfb0Romi6XRI1EChqXDwzXrNzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757350047; c=relaxed/simple;
	bh=djMIoNrBzj8uxueVmoRz5fYhh3F7L8Qq22aYvfUeeig=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gv0NtvKXvFvEIjbMMlQd9tHkkCnBAov63CsAQpTjpz+RtXDYjeRoLihVuNnA+QILtu2ik+/HDNlnZ2dBxEGoOcLKQq8DIAL5pLR85glMHaJAUC/I+svrHbTbOCeNACnQJEeqa7AQoWS4dRhKf45fqXqBtX40HympfzYezy1OpFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XL9/3+7G; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-e96e45e47daso3206577276.3
        for <linux-man@vger.kernel.org>; Mon, 08 Sep 2025 09:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757350045; x=1757954845; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vz6ykmx9t/xjptoF81pRTkkoc1IXvgSBpjpfFmhYOak=;
        b=XL9/3+7GMkH6R6QHGZUcqOc4eeHJ9UNK0uGgj3YF/1YTkZqxUeseM74PUaIG69tTYg
         CMcDMMRJMrVkcwf06/94mXtZXfFm+xKE879L7rUD98i75UpEI1efsqCxvzfxiHlkEfbA
         SKR7rPEQSg/E0X0wqp3uqTjJhqQW6xH31ZZcbm1itMBj2rIQbSNL0GxvRd+jq4aYuavd
         Y9AhF8hIJXXXYllSHed5AcWWkS0SQ96DGEUHcOJ07D/flwF6yqIxIt6832OcGLo9YjuA
         ORviaq4WDS0D3vXDAyl9HN5tDZC7h3PtReLWpZyDP5RbY4FydsBgrQAlfw54LLxXaOCh
         Ihsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757350045; x=1757954845;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vz6ykmx9t/xjptoF81pRTkkoc1IXvgSBpjpfFmhYOak=;
        b=pLnHJDl3k9rTNpghNu3EQJzJrkDUmjRMvkwb3s37PTNrqHzPgUzRcrM+qAYjYFfeLZ
         o/6B52VJoGl45vbF0PhAC9UKCUWadWDSB0bw67mWthwZQxkwDhJaQrtqJECcIhVO3fui
         5IPPAGS/n+qDLezur4HzN6JYN9/XVuRpu4vCusidGS2Z/VJgtgwBESjcd1qbuj104MCg
         NwokNdEGnBoAHFa0se1oAO7T5du+VuaLmMnUHAHiX+7PvEnoS2U6uQDUSkxtNXEH3t0m
         hSexBKWSB78356sYrW2eOUN/HC0406+Bfszu6MzyQf8oydVW0fUYrniOvRzVCDagZg61
         tb9Q==
X-Gm-Message-State: AOJu0YxU5Dd5pO6uQfcMilD8qsbMCJD8TxOQF+z64oeKeAK5cmxJZJZs
	OcWF1qBM1Cjf7u3o961YQaZ+NmH/bBCXppQ2uZfdbWPizvcvPWWrNrM98F7YYg==
X-Gm-Gg: ASbGncs4cVgrKQW6yABEKZ/zAMSLFQqKG/Yw2svw9004pzlv7+s7JRDpefBCfeDmM4E
	JVgqCVoTs09zWhDCsEw4VEoa+6xEIw24+H3Nd5BTr9F8I0qnqrQ7a2KT51lD0byVj0kyyA/IwKn
	4mLqkNbbSkxwB5VKngWd20/1u3npkx75H+WEUWmZMkGU/lHausf0CVAXcFqbT+ehOr0gNkjs2+4
	ovxD8TImfDamNCZ26tUYrxd6Uc1zPUYL2BFB1ynRQFZwVNKg/f/h6duB/Yoii8cTOsqIgb+wRwY
	Wunz6Rz4GEkHjN2Xun7NpYWE8hxu/m4714m7KW9hZncHsVbzg1ng0jZ1CwteFXljui69jOhtTab
	LlXF04h79jUBBS+61TL9Rbec=
X-Google-Smtp-Source: AGHT+IHv/UNmrON5HUpf3d6uDOf8w4VuJPyTFTo+WxrT+XvL8G9ewszHPpBoOPSBtHuXn1bTZKnVsA==
X-Received: by 2002:a05:6902:260d:b0:e98:9adf:d729 with SMTP id 3f1490d57ef6-e9f6809b4f8mr6169577276.40.1757350044770;
        Mon, 08 Sep 2025 09:47:24 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e9d71a7629dsm3919868276.9.2025.09.08.09.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 09:47:23 -0700 (PDT)
Date: Mon, 8 Sep 2025 11:47:22 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
Message-ID: <20250908164722.3ubqmeohyh2azu5w@illithid>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-3-bigeasy@linutronix.de>
 <20250830072857.mw224c532jj5xdlj@illithid>
 <20250908135134.lMIYucZP@linutronix.de>
 <20250908141102.ie4yoo5xasiimybe@illithid>
 <20250908142508.QWJtvSuJ@linutronix.de>
 <20250908142915.gse3a3wde3jyruxh@illithid>
 <20250908143411.hXW9GRME@linutronix.de>
 <20250908150248.a2inbo66jrukhncb@illithid>
 <20250908154413.cJIo12oU@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kq4jcqu2sjepyhjr"
Content-Disposition: inline
In-Reply-To: <20250908154413.cJIo12oU@linutronix.de>


--kq4jcqu2sjepyhjr
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
MIME-Version: 1.0

Hi Sebastian,

At 2025-09-08T17:44:13+0200, Sebastian Andrzej Siewior wrote:
> On 2025-09-08 10:02:48 [-0500], G. Branden Robinson wrote:
> > There are a number of workarounds while the community sorts out an
> > end-to-end solution that will involve cooperation between grotty(1)
> > [on my plate], ncurses/terminfo, and, ideally, terminal emulator
> > maintainers.  (Strictly speaking, the last group doesn't _need_ to
> > be involved; anybody could submit patches to ncurses's terminfo
> > database to advertise relevant terminal types' support for a
> > so-far-unnamed capability representing OSC 8 support.)  Beyond those
> > mentioned at the top of the foregoing mail, here's another approach
> > you could put in your (more or less POSIX-conforming) shell's
> > startup file.
> >=20
> > case "$TERM" in
> > xterm*) MANROFFOPT=3D-rU0 ;;
> > *) ;;
> > esac
> > export MANROFFOPT
>=20
> I see. TERM says xterm-256color so that will work. It also works for
> screen.xterm-256color and tmux-256color.=20

I would not necessarily have expected the latter given that the
glob-like pattern I proposed should not have matched them.  However,
being terminal multiplexors, they may be doing something clever.  If it
works, and you're happy, I'm happy!

> Do you suggest everyone should use that?

Not necessarily.  I know for a fact that gnome-terminal supports OSC 8,
but when you launch it, it does not update its process environment to
include "TERM=3Dvte" prior to forking a shell.  But neither does it
inherit a $TERM from whatever process launches it; instead, and
consistently with comments in "terminfo.src", it appears to
`putenv("TERM=3Dxterm-256color")`, which, according to Thomas Dickey, is
incorrect in several respects.  I know that Thomas is pretty reluctant
to add OSC 8 support to xterm, so unless we both (1) get a terminfo
capability to express the availability of a hyperlink feature[1] and (2)
can convince gnome-terminal's developers to advertise a more accurate
terminal type when launching the shell it attaches to its
pseudoterminal, there's not much hope for progress here.

> Is this something that regressed recently (you mentioned that Debian
> stable is using 2.13.1 and more people use it than expected)

It's the version of groff that matters here, not man-db.

> or was this always like this?

groff 1.23.0 introduced support for OSC 8.  In the stock GNU version,
support for it was not enabled by default on terminals.

In Debian's package, it _is_ enabled by default on terminals.

https://sources.debian.org/src/groff/1.23.0-9/debian/patches/man-hyperlinks=
=2Epatch

And in the forthcoming groff 1.24 release, unless I back out the change,
it also will be.

> I could try to route this towards Debian in case it helps.

Colin Watson is the package maintainer; technically, I'm the
co-maintainer but have not contributed greatly to package maintenance.
He's aware of the issue.  It may be that Debian should revert this
patch, and will need to patch it again the other way when groff 1.24
gets released.  A package maintainer's users are thousands of people; in
my role as groff's GNU maintainer, my users are mostly package
maintainers (a hundred people as a very generous estimate, most of whom
the groff mailing list never hears from) and people enthusiastic about
building and installing groff from source; this audience has
above-average familiarity with groff.

I don't know that there is a good solution benefitting everyone that
doesn't involve getting terminal emulator maintainers to cooperate
better with ncurses generally and the terminfo database specifically.

> > (I don't see a terminal type entry for "lxterminal" in ncurses's
> > "terminfo.src" file; this isn't a problem as long as lxterminal
> > _very faithfully_ emulates xterm.  If it doesn't, an lxterminal
> > developer or power user should probably submit a type description.
> > This is true irrespective of OSC 8 support.)
>=20
> Based on $TERM I would hope so ;)

Well, gnome-terminal claims the same thing, but the veracity of the
claim leaves much to be desired according to the comments in
"terminfo.src".

https://github.com/ThomasDickey/ncurses-snapshots/blob/5f58399b2de47ed14bdf=
e3a0cb149293b27893d5/misc/terminfo.src#L6394

I can't say much about lxterminal except that it seems to work enough
like xterm in brief experiments with rendering moderately complex groff
man pages (like grotty(1)).  As noted earlier, the version I have
appears not to support OSC 8, but xterm-256color doesn't either so I
don't see a problem with it.

> > I'm sorry for the difficulty; advancing the terminal emulation state
> > of the art takes the work of multiple pairs of hands.
>=20
> No worries. Would you _now_ say that you would prefer the "title"
> before UE macro (as suggested) or before the UR macro (without a URL
> description).

If by "title" you mean what I call the "link text", that should go
between the `UR` and `UE`.  For now I recommend composing man pages
"correctly", meaning with recourse to hyperlinks using link text
wherever it seems appropriate to do so.  If this problem with terminal
emulator capabilities resists solution for a long time, the style
guidelines for the Linux man-pages project might need to counsel use of
the `UR`/`UE` and `MT`/`ME` macros only like this.

=2EUR http://what.ever/
=2EUE

That is, with no link text at all, which the man(7) macro package will
degrade gracefully to an angle-brackted visible URL formatted as text on
all devices.

I'd hate for that to become part of any project's man page style guide,
however, because if we do get the OSC 8 terminal capability problem
fixed, I expect it would take many years to unwind the workaround in
dozens or hundreds of man pages.  Plus, the original contributors will
often have moved on in the meantime.  We have decades of experience with
crafting intellgible hyperlink text--unhelpful phrasing like "find an
example <a href=3D"http://example.com">here</a>" is rarer now than it was
in 1999.  My view is that people should write high quality man pages,
groff(1) should do its best to render them, and if something goes wrong
after that point, attention should turn to the rendering device.

In practice most deployed systems have few users (often only one), and
those few users have strong terminal emulator preferences that are slow
to change.  Configuring a shell startup file as advised earlier, or
modifying (on Debian systems, at least) "/etc/groff/man.local" to force
the `U` register on or off as mentioned in my reply to Helge, should
produce desirable output.

Big distributors like Fedora and Debian, by contrast, tend to support
many different terminal emulators and there's no telling which their
users will pick.  They may be better advised to not patch groff 1.23.0
as Colin did, and to patch "/etc/groff/man.local" (or wherever they
install this file, whose location is determined by groff's "configure"
script) to say `.nr U 0`.

But I try not to make strident suggestions to package maintainers.  (If
a configuration is unquestionably correct for nearly all users, it
should be groff's default.)  I had that job myself for several years.
Package maintainers know their users better than I do as an upstream
developer.  I try to provide options and offer helpful advice.

https://cgit.git.savannah.gnu.org/cgit/groff.git/tree/tmac/man.local?h=3D1.=
23.0#n5

(That conditional in groff 1.23.0 could have been written better--I
unwittingly laid a trap that Colin walked into: PDF hyperlinking support
was not yet fully armed and operational in 1.23.0, a problem the stock
configuration did not expose.  We got him pulled out,[1] and PDF
hyperlinking support has landed in the forthcoming groff 1.24.0.)

Regards,
Branden

[1] https://salsa.debian.org/debian/groff/-/merge_requests/6/diffs

--kq4jcqu2sjepyhjr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmi/CJEACgkQ0Z6cfXEm
bc4uJw//bxRUQtMtfr4xS8Tl6ZyeysojW+XkRQhMBTchP6TPnnRvxbQ8+JLbT2NS
MET07iaVEnE2tkt6RVljxULkHKEuATv9URhh2RwU0ItUqdlMN9bBMYmBF3UlOT5V
S6EYOehyvTnoWYmQFE266UlPoLD5XQ5VZr5YWrk9hDAw6KNx/gWqcrqNb0RZZbW2
a3ZwJ70bADFzGJdQ0S7gf+sgZwtbj0rny6QB7FYmyvtqpZ3aN0fkZbbrhcfEhOrz
r132+s1OTebH3RLCoeQH+RmMo3k1XKwPUAktvVSUUZcsj3yUl/MQ97JO6Kj00EAK
M13aFaURzHBSNvQ96XGrnBYJw/cj5C3FpmlTPzuGfvYf0K1ziM0ozcg3AVQa9NGX
KhXIFusi5HZMo5FVTugbjDo2TSqtZ0F49cRSpgXdObfPtJKtufr5L+b0Qu3C6SYv
hFGaVC640SCUD5pXAihtF4LYQIMjWGPRofX/Ep5pTBchSLEntbaTZEmpuRrkLWK9
pe4vh39F6ZfGK69k/xUeWofpDVEJBmrdEh9N2sMzye2dsF3vkrTiE1/Co+4esZLw
rWkU4Z1QerEzZ8Z155ar7Z1eODBYGZO1HDxr6EHOnt5L2eI1/+5sSHd3v5KtHZV6
/iIdUUOxuWjJuUJeUO9CcFbRxXfHDGN9qLWYKP5aIsWqLfzQqcs=
=VFwn
-----END PGP SIGNATURE-----

--kq4jcqu2sjepyhjr--

