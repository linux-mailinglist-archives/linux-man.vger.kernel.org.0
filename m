Return-Path: <linux-man+bounces-5735-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NdeEG9lQUWoOCQMAu9opvQ
	(envelope-from <linux-man+bounces-5735-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 22:06:49 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2619B73E017
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 22:06:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=qV8qRgBI;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5735-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="linux-man+bounces-5735-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9480F300B1D9
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 20:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C75FD379C21;
	Fri, 10 Jul 2026 20:06:46 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C7A3290A5
	for <linux-man@vger.kernel.org>; Fri, 10 Jul 2026 20:06:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783714006; cv=none; b=mNOShZ9Nej3tPxfH9Szh4Ftovv4sv7/jGOolEeuzjIectCQOs1QKsn+bPCDb1RU3lIMNQgOcRFMk6w5MwFTvTWbkBUekcFy8JAl+gdN8PK56YUNAR5en/0nUo7Bl9sfLt69SGGUeZhK2PrhDIXQwy/Gp17B+7+Pd+jP59LA9UEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783714006; c=relaxed/simple;
	bh=Cti9ZvLhhtc35kG60phaTKkb5gCA2v26mnoxpFMECxQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gCVW7m5DBbt7/bw8owuvk9IL4c35uTmDYtyyua9QzGVojkRXuQhj6zFYgDSw80IdMwfTJPbEMsIFs0nLQzYys20hBJ6/Fbp5J2EYgH/cEkHJYgdR9h6hqMDUjJVtW3G3CDOyYIIV2OJQsrbi89iZzSEuRjuMhpGFWFm5M30APBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=qV8qRgBI; arc=none smtp.client-ip=209.85.214.175
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2cc8e87f29bso9699215ad.2
        for <linux-man@vger.kernel.org>; Fri, 10 Jul 2026 13:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783714004; x=1784318804; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=sD39UT35Nd0YsXzgZ1v2sg9xiBR1lvy+tl0NEf00oXw=;
        b=qV8qRgBIpRs6rSxmmLw6MIqOz1RQcfld5m56TiK6U63MyAwwNHg3bX/iBXQYHxI7S3
         mFc4LbjL7E7+xY04CBG03AHJPyv0x7v0/QPwiZNrQPetbc1sERL54Ap8Gf4zqbif5D14
         0oTI419Ejf177fEvFLsc3u0O1uiDr0BClakOnBPe1u5Cdx3eFwkTwM4+TlJRmBBzuMVe
         jT2Ess0qt57xZaaY3AGwOhYUifIuqin49LDwUBJUfVB/zQSE6Z1sEDOZ/wtP3WRxpZyz
         0mv3f2ZDbC9KaCPIUIjx751ZHUoeJ1HRedgplmIwm5lvelbkZuwmieRX7pPNiqnflFQF
         JHeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783714004; x=1784318804;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sD39UT35Nd0YsXzgZ1v2sg9xiBR1lvy+tl0NEf00oXw=;
        b=qDecYmm7ytjecAdrM35zID0WSrQd6L1p7ME6kDrnlu++zq7N9ANv3P56+DxsDypfIO
         buKwz/oa38nMgxd0JDPb04eCAFdeujxJafVUBoNRln62OQe6cp84YdaE66aE7W1bhbSl
         qJcX/I9fp54PdJkJTqWp4EEkjPqYPsY4IEOurSabMvfQ6Iy0v4TUrcpYkjLFf4fWm8ih
         T/NgcMvrXkLFa7/vVRrhReqRfD1fYBMsReVD1blBzmqw7DeJpTe7pXSjnjFNEz4qzFnD
         mBr9nkiXwPA5H4XXOgyx6AiEOd6mLe8HTVDLrWOycahrNfQBQA9BpDT0zZOtjzy84mgK
         FECg==
X-Forwarded-Encrypted: i=1; AHgh+RrZmIajVrChP53y2z26GA+uQbG6LIYCzb1FJgWWT7QCZly213aS36qoxDy10YFZDfX150LkmWO9OTI=@vger.kernel.org
X-Gm-Message-State: AOJu0YxalEc0B3f2yAjqF2MTQCitRuwb5Cfef5H+8ynUNslYXMJYz5eq
	hLCRu3pzq8WwJHnA+XNAMXWyPqIqHhA+1mvHY2kJaXbydDg0KMhnIidrfagdYQ==
X-Gm-Gg: AfdE7cnyCa6pDwMPr/zeI5DWrGSohnRm4T8eTJPCrN5shtXg69L2jbaMjC8qwi0dh/r
	6srKaHXv6fIiiLFl1+f5OakIsqEJvn9jibGKGHOQBaFLTwg7esLRIXdM3jpEnXybcsM5DPLjXU/
	GXIsD9GK0PJvJcO+T6t09/5S/K4Dmp/uEeju9FiUynf63Re0tJu3cwiwy2AsyW5JphisdxD6Up4
	kIRuYHkCGG2uRRS2N9XtffNI1d78rZiqNzFyUn6PyGbYx1balSyMRI/L6tP6RkVObtL6Kx1+c8/
	IgJjoHRcTuLMSESYKV96x5CfhHdHTT3gxenVc+NzKANgXDR1aYHd6+UX3lDA/bao/ySm8TORgwn
	lTt4GjU47shiVVJ3Jri1hcKgPL7rFkJBjwzUBITPVWEJLz5v2R8Ra+/MmEPJy5fNdQcKQNVzrZe
	Qsq7QHK6wBin2e
X-Received: by 2002:a05:690e:1914:b0:667:a79e:f34 with SMTP id 956f58d0204a3-667d7c9dea9mr598701d50.72.1783713536999;
        Fri, 10 Jul 2026 12:58:56 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-66787a49befsm7742631d50.16.2026.07.10.12.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 12:58:56 -0700 (PDT)
Date: Fri, 10 Jul 2026 14:58:54 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: DJ Delorie <dj@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Why we're stuck with man(7) (was: man/man8/ldconfig.8: document
 system-wide tunables)
Message-ID: <20260710195854.ud4riftmhrfzu54d@illithid>
References: <alEAgbFxQi9oHME3@devuan>
 <xnse5q90jp.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jmhd3rwrqul57jmd"
Content-Disposition: inline
In-Reply-To: <xnse5q90jp.fsf@greed.delorie.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5735-lists,linux-man=lfdr.de];
	FORGED_SENDER(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dj@redhat.com,m:alx@kernel.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,illithid:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2619B73E017


--jmhd3rwrqul57jmd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Why we're stuck with man(7) (was: man/man8/ldconfig.8: document
 system-wide tunables)
MIME-Version: 1.0

Hi DJ,

At 2026-07-10T14:12:10-0400, DJ Delorie wrote:
> Alejandro Colomar <alx@kernel.org> writes:
> > 	mandoc: .tmp/man/man8/ldconfig.8:250:2: WARNING: skipping paragraph ma=
cro: PP empty
> > 	mandoc: .tmp/man/man8/ldconfig.8:270:2: WARNING: skipping paragraph ma=
cro: PP empty
>=20
> Fixed.  I think.  We need a better language for this ;-)

21 years ago I figured we'd get one that would conquer the world.  We
haven't.  Too bad.  I could have started working on groff back then.

Here's a summary of how we got here.

* man(7) (Bell Labs CSRC, 1979) was "good enough" ("worse is better").
  At least one generation of Unix people came up venerating the
  documents written using it.
* Many, many programmers don't want to _write_ documentation at all.
* Many programmers' managers regard documentation as an unwelcome
  friction slowing down the launch of a Minimum Viable Product.
* Many of the programmers who _do_ want to write documentation don't
  want to compose it in anything more complex than Markdown.
* Markdown can't do semantics.
=E2=88=B4 Goodbye, "semantic Web".

* People who did want a semantic Web ran into problems.
* XML overpromised and underdelivered.
* DocBook-XML was lexically overcomplicated--meaning hard to learn--with
  something like 400 elements.  A part-time practitioner, such as a
  person writing in a "real" programming language, could not retain the
  markup language in their head between periods of exile to
  Documentation Land.  Further, its toolchain, involving stuff like jade
  and opensp, was heavyweight and difficult to work with.  And also
  written in Java because Java was going to be the One Language to Rule
  them All, with C and C++ forgotten, by 2005 or so.
=E2=88=B4 "Semantics" got a bad rap because everyone with a fat wallet who
  backed it bet on a losing horse for the delivery of said semantics.
  They spent 10+ years telling the world that XML was the _only way to
  do semantics_.  And because venture capitalists and tech bros are
  infallible geniuses in black turtlenecks, everybody believed them.

* There's mdoc(7), which one might uncharitably say brought you the
  worst of all worlds.  Semantics?  Yes!  But many element types.  (Only
  about 1/4th as bloated as DocBook, though.  And Ingo Schwarze insists
  you can get by with much less than that.  Until you guess wrong and he
  reviews your document.  ;-) )  And if you don't like *roff as a macro
  system, wait until you discover mdoc!  It implements a macro processor
  on top of your macro processor!  And mdoc(7) was only created in the
  first place because AT&T were such jerks about the licensing of troff
  (and Unix generally).  So the Berkeley CSRG's mandate, I infer, was to
  spec out a macro system that could eventually be ripped free of troff
  and set down on top of something else.
* That decision, taken in maybe 1987 or 1988, predated by only one year
  the advent of James Clark's "groff", which BSD promptly shipped in
  Net/2 and later 4.4BSD.  (Later, its descendants ripped it out
  again, because GPL and C++ bad.  BAD!)
* That "other" macro system didn't arrive until about 2010, in the shape
  of mdocml(1)--now known as mandoc(1)--which, because man(7) documents
  had not had the decency to shrink below 90-95% of man pages on all
  systems, ended up reimplementing huge chunks of...troff.
=E2=88=B4 Almost the only people writing mdoc(7) are strident BSD partisans.
  You can write your man page in mdoc(7), but sooner or later you'll be
  asked why you aren't running *BSD, and you'll get treated like an
  idiot if you don't.  You will then understand how *BSD is a refuge
  from the evangelicalism of GNU people.[1]  ;-)

* In my estimation, TeX could have conquered this space too.  It was
  pristinely engineered (if idiosyncratically implemented), had tons of
  momentum, oodles of capable practitioners, and a benign, deific,
  universally esteemed figure behind it.
* TeX's holy mission is beautiful typography, and it's good at it.
* People read man pages on terminals 90%+ of the time.
* You can't do beautiful typography on terminals.
* Terminals can **** off.
=E2=88=B4 TeX ceded this ground without ever contesting it.

I've ventured my own proposal for the addition of a flexible semantic
system to man(7) with backwards compatibility, at the cost of only two
additional macro names.[2]  Literally no one has expressed interest.

So it goes.

Regards,
Branden

[1] mdoc(7) is fine.  It has some nice features, and insofar as I have
    a command of it, I'm happy to help people draft or improve their man
    pages that use it.  What it is not, is easier than man(7).

[2] https://lists.gnu.org/archive/html/groff/2022-12/msg00075.html

--jmhd3rwrqul57jmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmpRTvcACgkQ0Z6cfXEm
bc42Ig/+PR/dBTwAsS8/SAO598ET7E1kyEaO39ejVGvxYDEd5XS7HY2AYD3CGAf+
cXtHC5n7SjpKTU3n1nHF1utTs0Im79RUxh1Z8V7/MuysPDS6mDWSL+I9ASQZRy9R
zVgxJPqv5UjoZyNjr7bn9F6r9J2ebrHKI2IanPsTOaExHzu5mYa7W/r7586jw2y1
0k2HCNQsFhTzEFfHVxgR7+rZb2WDsSDmA9tQN5EoD+OzVo93Jw/hqwd9WhkVO9W0
ESnw7T08KvWzdeGQHXbo04n+Y/UiC/gzqY9B9psB7JkbB3hduzUsnzzhQC/RyJtw
/ABTnoWFivl4NrwyrCbEa5a+BDwyK4ZHup1o6fQ7f29gRH4awUU8YYDATiCtWNCf
9dMTNZPlbHXG9PkHGMCCuAI+KxCK1YNRVYEJ6WritYxpRBUfJ9IeHZCPmhaxbHcP
ByFODl9DfQHYSqpGjSThMUsFp+PgzYdkO9eleKC4VIM83axN5FP05Z6hz6gZEzQS
nLJZMb84GvXcmOO57BcK2a0ZjQg4O0/HuOQnos5GFQuF/Rf0Q3j0mxEqEyFn/VNv
mZDDKnxfEh04e0qinqywP5wLcYggyhoDvQR0DC2p8f0aKx30qJG6/8w+ta1UNtnX
9fCAX074ytTjT97ooenZXHvitMutirewKtXW15AMGbs2yIXPqh4=
=DVCh
-----END PGP SIGNATURE-----

--jmhd3rwrqul57jmd--

