Return-Path: <linux-man+bounces-5547-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULJvKYb5CmpZ+QQAu9opvQ
	(envelope-from <linux-man+bounces-5547-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 13:35:34 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C885456BA81
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 13:35:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 639FC30125AF
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 11:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 559E53EF672;
	Mon, 18 May 2026 11:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h8Zkp6vY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96BAE1DFDA1
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779103465; cv=none; b=mva1jT16F479FA21YJGpggND8fWekN5++K66VEPLl8d6BuL0acJkmcBXhj81K3TE/y1FVtOq1wxhmaiYQ+SQdhEx12vBE1guKzFgwbT3G8ZaMnskGGKR+Q4pmczG6MVUhTcSviBXAbs204WcZVZrP91czGfwfO8PUF+tT0lciqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779103465; c=relaxed/simple;
	bh=qGADjFbHjZqXUVN/DKAsQm25cj8VYbUb5TjHday4YqE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gak2HLaK3NGSjjPwOLmg0bJHeqFvejj2nH8pUOGtgZGRFw2WxHVkRBLXSCJgLN4UVD+0/J90xWpfw4HzwAZNHvr9+rain9ro/gME3FaP+YSdNhIzaLTb8dsFxCfsIvKt1r4RpAKAO8iLrdYXAoRN50N0rlMA4BaaNQ+BUi+/Q8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h8Zkp6vY; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-7c04749d739so11536657b3.3
        for <linux-man@vger.kernel.org>; Mon, 18 May 2026 04:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779103462; x=1779708262; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/XRIr3J9cZ06PILdNOT8C6SWE/Mn2vcSzwL+mVJ5Mqk=;
        b=h8Zkp6vY0GBS1RFm5VMGh4nYssMfWwfVGoCNMR3U6E8NaRC2CmzV3A+ohXC5QRkdRo
         /thuMzQnQyq4vM/xva4Q45L/ihQoC6fCDYJ3Wj7WEYguecxG72rhtRvFiTBAIdI1a0Ga
         TeXH0TtaHZETwqCTZK4z3gcxKWCGZ2d3c8vSz0QReaV7VnZeBQ7uBsm2FW7GmMab5ZGa
         cULRcfhoU08OSPTIJg2h2hbxDV1F5vWX1ZjIE3lFSYEdCb1ivlOviVx7ML/zCjdZJ4G9
         2425jNHEcSDhdO+hgMiaEaJa8PzP2W1OQuzhfdCKOd2YTxKB+8O2KH4h9nUSKH0o9Vuk
         fArQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779103462; x=1779708262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/XRIr3J9cZ06PILdNOT8C6SWE/Mn2vcSzwL+mVJ5Mqk=;
        b=QFiO7VbFp/AnlXt5Gsl3RWGg0YjWfvu82zcoWFMR2CWnV3n9rQi1Xg60PesshDyhxd
         UMaGTI3P8J/lxhsotVJYzFd8PzRQcwJu+kNQd/2SFUVW7mOpP8HtUsJNZaRsI4KckbSV
         pFAx8jEehr4rKC7aHF3HbjTh+Rl/vSAzb3FMeyt4as7LQ0UHsMzmpSf8dwVskLEOX2gG
         TSzkReM25M6XARDYlZsN5G+jOYqZWRcAsXzdjvjM+ZtyHqmOjFgTYbS13p7giEjtG1tD
         MQWZRFKXfKqbp9HWbxYSdYVit6MosNbRmb9rmEFQ7jjA/hPrv/aBVOluxM7O0RlX4FzG
         MhTg==
X-Forwarded-Encrypted: i=1; AFNElJ8OAH5WoUMVfc0lOUyxdfo8SUChU1EwSWPwWPXsrww+mOQMEbXbwt2aNmVxK9CRLY98tHK9fNrW2OM=@vger.kernel.org
X-Gm-Message-State: AOJu0YwiGt7/vDWV3n/wea4hujH50RgUPUqUzDbBQMIjNDEU8ZZaEOhN
	VtW/6gc806Rji9e9aRMSSz/GbdupMG/l0CMyXDqrXE6d0fPUZ5+5ztXG
X-Gm-Gg: Acq92OHU6bDUKs4cc79koVkfr62Yc/Iv1LrU0MC5eIWJMNMO5IAfnZGs9uBE3Bg5la1
	7xYnb5B9MlOL9EWJNAvvzyy5drHMwMJvB8h1QTfxDRTGVHyTKj22YvAs4XQ7AbLbDUQaB9D44xD
	Tk8W3kc+RgIwkQMvbSmm++azpTLcAD49+iqkOdcbyBbIpXhUCiL/1uJbJyhvTDArNTqSeB425yH
	b904w9xVUfesCWkLkG56tVO+xX48XiQ2jtSVpmEv8RtHxzz9SQVdL5gvZj+tvnfTJV2JZBtc+3C
	6J+AFRUTtOX4adxcwL3U58pGWx0BNs+WcNA2Mu06a5vD7fy8QPWxRpJGrQ+aq/IZSnJJsBqIEV7
	dadHZLi/Do7qpQEU1y2xQwmdMZ2Mi1Brn0eRKmks/wbWX9pmvA7ZDXoWAF4iFCH3skRnYWhlxpm
	ejDZwPkk/urfu7grJDD0+dNjg=
X-Received: by 2002:a05:690c:8d0b:b0:7bd:4cb2:4492 with SMTP id 00721157ae682-7c95c5ef513mr140035187b3.48.1779103462052;
        Mon, 18 May 2026 04:24:22 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7cc9cbb00f5sm19668577b3.41.2026.05.18.04.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 04:24:20 -0700 (PDT)
Date: Mon, 18 May 2026 06:24:19 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: funsafemath <funsafemath@proton.me>, linux-man@vger.kernel.org,
	groff@gnu.org
Subject: weird but successful *roff comment syntax (was: [PATCH]
 man/man2/seccomp_unotify.2: Document SECCOMP_IOCTL_NOTIF_SET_FLAGS and
 SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP)
Message-ID: <20260518112419.32vn34flgttpcba4@illithid>
References: <agqooRyZy65sjFtl@nix-mail>
 <agrlIOYqEMDSdIFK@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="plqnfcunqsql6a2t"
Content-Disposition: inline
In-Reply-To: <agrlIOYqEMDSdIFK@devuan>
X-Rspamd-Queue-Id: C885456BA81
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5547-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,gnu.org:url,devuan:email]
X-Rspamd-Action: no action


--plqnfcunqsql6a2t
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: weird but successful *roff comment syntax (was: [PATCH]
 man/man2/seccomp_unotify.2: Document SECCOMP_IOCTL_NOTIF_SET_FLAGS and
 SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP)
MIME-Version: 1.0

[looping in groff list]

Hi Alex,

At 2026-05-18T12:24:25+0200, Alejandro Colomar wrote:
> > +.\"
> > +.SS SECCOMP_IOCTL_NOTIF_SET_FLAGS
> > +The
> > +.B SECCOMP_IOCTL_NOTIF_SET_FLAGS
> > +operation (available since Linux 6.6)
> > +\." commit 48a1084a8b7423642b5f17ca6202f6f277c5392b
>=20
> Typo; you meant .\"
> It's also repeated below.
>=20
> Interestingly, this seems to also hide it as a comment, although
> troff(1) prints a warning saying that something is wrong:
>=20
> 	alx@devuan:~/tmp$ cat comment.man=20
> 	.TH comment 7 2026-05-18 experiments
> 	.SH Name
> 	comment \- trying different comments
> 	.SH Description
> 	Here goes one comment:
> 	.\" foo
> 	Comment ended.
> 	.P
> 	Here goes another comment?
> 	\." bar
> 	Comment ended.
> 	alx@devuan:~/tmp$ groff -Tutf8 -man -rCHECKSTYLE=3D3 -rLL=3D64n -ww comm=
ent.man=20
> 	troff:comment.man:10: warning: name '"' not defined
> 	comment(7)      Miscellaneous Information Manual      comment(7)
>=20
> 	Name
> 	     comment - trying different comments
>=20
> 	Description
> 	     Here goes one comment: Comment ended.
>=20
> 	     Here goes another comment?  Comment ended.
>=20
> 	experiments                2026=E2=80=9005=E2=80=9018                 co=
mment(7)
>=20
> I'm curious about what happens in the roff(7) language for this to
> work as a comment.

Strictly, that input line is not treated as a comment.  The formatter
treats the line

  \." commit 48a1084a8b7423642b5f17ca6202f6f277c5392b

as a call of an undefined macro named '"'.  Yes, just the double quote.
In *roff, any printable character is valid in an identifier.

https://www.gnu.org/software/groff/manual/groff.html.node/Identifiers.html

(Using the *roff escape character in an identifier name requires a trick
or two, though.)

Arguments to undefined macros are discarded.  To be Hermes Conrad-grade
correct, not by the formatter itself, but by the automatically created
empty macro definition that does nothing with them.

https://www.gnu.org/software/groff/manual/groff.html.node/Writing-Macros.ht=
ml

The input therefore operates much like the following.

  ."

Why didn't the leading backslash break this?

5.24.2 Copy Mode
----------------

=2E..
 -- Escape sequence: \.
     '\.' quotes the control character.  It is used to permit nested
     macro definitions to end without a named macro call to conclude
     them.  Without a syntax for quoting the control character, this
     would not be possible.

          .de m1
          foo
          .  de m2
          bar
          \\..
          ..
          .m1
          .m2
              =3D> foo bar
=2E..

https://www.gnu.org/software/groff/manual/groff.html.node/Copy-Mode.html

(If you attempt a nested macro definition in a man(7) document, I cannot
offer any guarantee of your safety when Ingo Schwarze finds out.)

Because I endeavor always to reach greater heights of explanatory
precision, I must acknowledge that `\.` is not a true escape sequence.
It is _quotation_ syntax.  In a grammar that possesses context,
"escaping" and "quoting" move in opposite directions through nested
contextual scopes.  The founders of Unix pulled a sly trick on us all by
routinely using the same item of punctuation for both operations, like a
gear selector for an automatic transmission that uses the same position
for "drive" and "reverse".

But that's okay.  If you get something wrong while driving the PDP-11
Unixmobile, your car will either explode, stop, or an electrical relay
will loudly clunk and a giant amber "?" will appear on your otherwise
instrument-free dashboard.

In any case your journey is over.

In the patch you quoted, the line

  \." commit 48a1084a8b7423642b5f17ca6202f6f277c5392b

did _not_ occur in a copy mode context, so the formatter quietly
discarded the backslash and interpreted '.' as the control character
just as it does in "interpretation mode".

Should this discard be so quiet?  I think not.

I spitballed a relevant idea in Savannah #62776.[1]  In comment #27,
Dave Kemper helpfully summarized several that I had, some of which are
now at risk of being lost since the ticket is closed.  (Some have since
been implemented and are expected in 1.25.)

We see the following.

  `\.` encountered in interpretation mode (comment #17)

In fact, in *roff there are so many ways to "do nothing" that in 1970s
Bell Labs CSRC documents, and on into the next decade before groff
showed up, you'll find a variety of approaches to commenting.

You can see another once-popular approach to commenting in rn(1).

https://www.tuhs.org/cgi-bin/utree.pl?file=3D4.3BSD-Tahoe/usr/src/new/rn/rn=
=2E1

GNU troff, especially with warnings dialed up, is much more critical of
its input.

Regards,
Branden

[1] https://savannah.gnu.org/bugs/?62776

--plqnfcunqsql6a2t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmoK9tsACgkQ0Z6cfXEm
bc7MqhAAlaDAnzXaTG8JFBIqHs8TbJpJPe7189kpZj++hVYH5vt5AjyvU0zjIMo8
ZX2F83DVR1Emg7RzmIcUcHuBRfJNY2tAizpC8njDJ+M2glQJ35Yi+0/a0gT0cOcN
cjdEDLw+T0XeCJYawikvz5TPlBr8oCjGxoUmoJKl3bKGVud0TIKp4b8jo6NxFDTA
prDjMh9DCeFUj3t1ZudJMQ8NsIhnWdxkYpTLePPjis8vo/hSi42RoNmLkqzswBGX
4kX96WQoaVpNzkNWSwI9w5aeERpnM9ui6g/mOd0mkxvXxtePSRCPkGOqvREty/80
0FwyJA9ekYr7nG14wMRooBINL9IhpQdejA5Mh95RX5Lr3pr2WSF5TqFQKuxv0UA3
26kN9Zy71ofQ/va64qyXB4YFxffT/8gyZUTOTc8cUlHiWC5mwgmsl8M9qTOOLnRw
NNHuaHmeS6u4tbRVUEhaVCjxL2HKgSEmgf2ak2RBG+8sMl55rUx1T+ks6Z8Z3u9n
MAPL+YZC/b1bxIGkN2eEtSJHrXBj4dOvxEVjbDqE7VE578IC/foZl+JGF4b6ip//
IwIhIcA02Z957Z5iXbD956fuLiOZmZKBtPGiDRs+ohvOYVQaXoIizm9VyaZVfjfN
F2adjCAaXeSsSWCFtJMd8VKAIOjJHmQPqEHoHkDPROEAYXNmqYg=
=dX9S
-----END PGP SIGNATURE-----

--plqnfcunqsql6a2t--

