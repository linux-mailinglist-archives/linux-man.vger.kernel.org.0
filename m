Return-Path: <linux-man+bounces-457-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C57588597C7
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 17:37:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EB561C20996
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 16:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F8BC1E534;
	Sun, 18 Feb 2024 16:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gOwJIAEj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA55F335D8
	for <linux-man@vger.kernel.org>; Sun, 18 Feb 2024 16:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708274216; cv=none; b=a1+1nTobXoxRDSOIZH1KJ/InBjcL+2Q61gTOWp43L8cJeMwBLRRR9vZhGXxpcubT31Gi+cPutUTmZQ5s8AdpXYnyGG9Ni1bJEdrqirOHK8LBM+k2V5mAa4b80V+93+JIipmZcRu8vKdmY0O/1bY3tksDhmXak70AH8fpvhK8xys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708274216; c=relaxed/simple;
	bh=G9KzluHuaq7zVCmIYW6L4z5/rr/FDDfowDKhJx+Wmog=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NA53UViPWkIDyvMBH2kZGuC98baG1TKwevjG4d4cLpRAVuqk/zlTHxvOOLXG4Hhy9Nwx54Xq+t5jsweblv4fTeacdvMQVXfgTNMMIBQexip/2bDQrUDWgFXeJ3qu0ildxhgUShvPwfpDPsRcJ9XHNRdQ9WX6ly49NSO++k0999k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gOwJIAEj; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3bba50cd318so2844594b6e.0
        for <linux-man@vger.kernel.org>; Sun, 18 Feb 2024 08:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708274213; x=1708879013; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pEmGAFE5UShr3w2phM5aa2qsqV0rlBubiBwHgyx83Ow=;
        b=gOwJIAEjgGxdH4ICQw+kcmIGoQVjb7bTZdog3G4WTrAwNLGi6aeSWhcH0+c6GCqjr2
         eq/kkS0LYgOBDHGVwkC4sINuEpX8sabzHON/Zi2aXYLl5BO6b0gzlubBoA1L8p+b3C4G
         rdbqXx7rRAO5kryF83B6tME9U05DLUAKfmSIwqyKXWFJI9JAecNsGaII1BXXXcVNN7sb
         CrqxwVu5+MeZXSezuMLyxC5yIyMcqyqi6pcxuVQGNn5DpjlhzIUX2tvb7HgGAyNPX5Rc
         1IVvM86G3uMO9bW23Bp5ma1B3OC3yjEtm3T+MJmOHuK01aluwCTw/bEybq8+q4S+MwMQ
         WHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708274213; x=1708879013;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pEmGAFE5UShr3w2phM5aa2qsqV0rlBubiBwHgyx83Ow=;
        b=lGdHH+HTFL0UfMeJiMf+j2FVI+qF7OQUHT+IITcj2KfYwW+vyzTJIULzSwFbthKT6J
         raFQXblh9fSiCM79C7IQZoUeJD1wsVM/ouUSI28jB8BxeTdhFAFZcH1UqPJXQkOqPs01
         l9xpjS73yMNtM6/imXpRoypQltw1xdFbvmqGHltxaKNvxF3HpLGL0yj6iW5yI4EYu1h7
         IBHSrdSTxyYj0xTE1pYnaTbHXIZyi0JCwnd0Guggb2GbM29CIYFxbaE88KbrFRHVn6lq
         OxNSGb9QrUcbBsXDWLBb6FZsIv9CG+jReosMDh5DAvmNMjbrIypLIx5ULVLnEiWKfye9
         eJAw==
X-Gm-Message-State: AOJu0Yw1CveGUBi/Dr/oLofGkiiIY2H9PhBS97YLwYWgYTSrTvdk75BE
	c2Q6GpBA0789PEj13dLNlltx9PI35N1cYJWUT/SdkEwSeCypEH36
X-Google-Smtp-Source: AGHT+IExcPXV2LaB2Hj12CKVYDRBuGvDQMQEFeMmHNRQ+px9LuWZvKCfJ3nGZw2QgsDVX9Jr+RlCAg==
X-Received: by 2002:a05:6808:2e8b:b0:3c1:5c06:7e8b with SMTP id gt11-20020a0568082e8b00b003c15c067e8bmr168388oib.2.1708274212980;
        Sun, 18 Feb 2024 08:36:52 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id c15-20020a544e8f000000b003c15b756f3fsm32035oiy.13.2024.02.18.08.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Feb 2024 08:36:52 -0800 (PST)
Date: Sun, 18 Feb 2024 10:36:50 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: groff 1.24 scheduling thoughts (was: man page base paragraph
 inset/indentation)
Message-ID: <20240218163650.ljnsf4uw7rycrv35@illithid>
References: <20240212120704.1638500-1-mark@klomp.org>
 <ZdFY3PwhYhhIlUIg@debian>
 <20240218120035.GE16832@gnu.wildebeest.org>
 <ZdIBa2VRKK_06f9X@debian>
 <20240218141447.q34tghthp7d4llpg@illithid>
 <ZdIfz7lv2Dd9YaVG@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t3pql3d4graxo4ms"
Content-Disposition: inline
In-Reply-To: <ZdIfz7lv2Dd9YaVG@debian>


--t3pql3d4graxo4ms
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[dropped Mark and Alexandra from CC, looping in groff@gnu]

Hi Alex,

At 2024-02-18T16:18:38+0100, Alejandro Colomar wrote:
> Nah, I like 5n.  I could use [-rBP=7n] in the build system for
> preventing errors like this one for the time 1.24.0 is not a thing, to
> catch those formatting issues with `make check`... but I think I
> prefer not.

Fair.  That's why it's a knob.  People can twist it or not.  :)

> Do you have in mind a date around which you intend to freeze for
> 1.24.0?

No.  There are still several things I'd like to at least try to get
done.  There is a possibly ambitious "release goals" ticket for 1.24.

https://savannah.gnu.org/bugs/?65099

(Scroll down to see the dependencies.)

Integrating large/complex patches from contributors has proven
difficult, and exposed my weaknesses as a project manager.  Aggravating
factors are (1) I'm the only person who writes regression or unit tests,
(2) I'm nearly the only one who writes documentation for anything except
mom(7), and (3) some of the most desirable features are also those that
require changes to undocumented or un(der)specified aspects of the
system.  For example, what _can_ you put in a device control escape
sequence (or device control request, or "transparent output")?  Can you
spray out bytes with the eighth bit set that way?  Should you be able
to?  If not, how do you encode them if you need them?  Should each
output driver take its own approach or should they share one?  This
stuff sounds obscure, but you need it for things like PDF bookmarks with
non-ASCII characters in them, and better CJK font support.

Still, I think the pain will be worth it--when we crack those nuts, the
reward will be pleasant.

The revelation of https://savannah.gnu.org/bugs/?65322 troubles me.  On
the one hand, since the bug has evidently been around a very long time,
and isn't a security issue (the formatter merely gets angry and quits
on--apparently--ill-formed input), there's no particular emergency.
Still, the idea of stomping another decades-old bug that defeated
everyone before me[1] appeals to my vanity.  On the other hand, I am
nearly clueless about the cause of it,[2] and to track it down I think
I'll need to implement the "macro/string/diversion dumper" I've been
contemplating, to force the formatter to reveal hidden knowledge.

That, or I could get a lot more skillful with GDB, but so far it seems
like a disproportionate amount of the time, the problems I chase with it
involve variables that are

$1 = <optimized out>

...even when you specify -O0 -ggdb.  Hmm, thanks a lot.  That sort of
thing is not compatible with the integrity of the drywall in my home.

> Mind the time it will take from a freeze to a release, so we
> get it in Trixie this time.  :)

No doubt.  It appeals to my sense of tidiness to have groff's minor
release number match the calendar year modulo 100, so, given some
experience, I think going for a release candidate this summer would be
a good idea.  We probably want to code-freeze no later than September
30th.

Regards,
Branden

[1] The bug is so obscure, that is likely not saying much.

[2] My hypothesis for the moment is that a "node"[3] is surviving inside
    a diversion when it shouldn't be, and while that appears not to be
    an opening brace node, I think it is something working like that.
    So the balance is being thrown off, and that is why GNU troff's
    "finish_get" function is encountering a value of the input level
    that it didn't expect.  Data structures should be introspectable,
    but diversions are not, and we are finally paying the piper.

[3] A recent commit underscored just how unhelpfully opaque this data
    structure is, and yet for 30+ years this term has been hurled into
    the user's face if they screw up.

    https://git.savannah.gnu.org/cgit/groff.git/commit/?id=90568dc1afe41c9f909f26e7e3fa6f9d499127bc

    "Oh, great, it's a 'node'.  Whatever that is."

    And then when you gain a bit of experience...

    "Oh, great, it's a node.  That means it's one of about 20 different
    things--seriously, 20.  No problem.  This will be a cinch to debug."

    I'd still like to meet James Clark for coffee some day.  I will have
    much positive to say, and much appreciation to express.

    But I will also have a look I want to give him.

    Just a look.

--t3pql3d4graxo4ms
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmXSMhoACgkQ0Z6cfXEm
bc4O3A//bGL6RrmViGaItGgifrD9d1ckPwOYdMkYCqrVR/cSes0e88zgGrC0G6Q1
Byvy2VgAgjE88ApSBZ2mE8Xb+tIqryYGvRZAhhWB7w2EFNGFD1qgA6o2Lsy6ord+
dyA7ihF4o/S7uF9UYKQx6ggwt3UbS2ioHOPpF304swz6YePqlEXhkNYQ5ME3x1aI
1NbIUDsBVBG0UEb+DY3DxZkPPOrkVwDQuHt27vly+k6iCy8a2QI4bWjQJFtqPegv
lAQpwAEVjXF30xCz25UVMWq8fD/v060VDlpU87WFD0zIgHVetamihtrkvavhFshP
N3LEiAq0OAC7oVkPupHiNxx+XW2AcjDMcIGWLt4Qy3kjzmn4wsQu9+q5YyCrSL/f
Y03UBotfq0imBjl9FyqLpNVivRxTjBd9kZMQ0i5n8DTwFZxSJZ0PSUFRvZ5UoZPX
qXKfJ7Xg8XA0oKYGsVHALFO1H+Dtt1BK0j84XcdU7Y0TJS0Lw8Sd1J+HPDKl58+t
cz8AKGnA+FG45V+3G38cj8Rqa55RnbxPcnJjyARptoIBspn3JZpS05QDnLMqFNHF
Z8cX17GVmx2a5WJv+yCeb2gW4iCvmrJrBRk3MDpCp2w24bywi+QJYT3Rcp+E55KK
UrZLvFLbgDT27SnYG2pLBLAsLV/H92gfEaygpjaFxU/AbV+6tvQ=
=xB8s
-----END PGP SIGNATURE-----

--t3pql3d4graxo4ms--

