Return-Path: <linux-man+bounces-2752-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A509CA8084F
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 14:44:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E9118C0215
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 12:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B4726F465;
	Tue,  8 Apr 2025 12:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="draRJwaV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B41326F466
	for <linux-man@vger.kernel.org>; Tue,  8 Apr 2025 12:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744115502; cv=none; b=QXOx3hiWYMvZ6F8+0Tlce5Og1z9u5KLY9KDJMbsPsZnkoaDWAz0LIBDWvPjmgTOK4JSYsu3Cwb1J9BPBZx6a1/gJmWtCTIpnX0+n7esZwywZ1TeS+Z8pPWJRH8UhuW/iRK/kPXM5H//kLBbFAAYEoXAXIOUClUpkuJo3MBJ0nPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744115502; c=relaxed/simple;
	bh=T7NYCLluJ8kqyuhHXC0gHCq8CUzkXNsUW9V+NuLbEAo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=kTDwY5JlxEPJ/ukRayyUiD8Pjg5uRIoCbukMCzdd32lQpCipPMSrK/f46VMFqoNcQxujl6+hRF0CpTc3wxGHmB48s1R8KsKYlkCze0QYU2zYj+At8dQaCdHpZxjvvwj6PF9Vuw9EJUf8cuom4ppMe8Mx22Pf95yiZShoRLOWreA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=draRJwaV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB77DC4CEE5;
	Tue,  8 Apr 2025 12:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744115502;
	bh=T7NYCLluJ8kqyuhHXC0gHCq8CUzkXNsUW9V+NuLbEAo=;
	h=Date:From:To:Cc:Subject:From;
	b=draRJwaVP1wZIGquRH9NUaWOm9FNGYQbf4iE0bTI5zNnhBlXyrVTdQshYUVoLQMMu
	 Kd82iVAKrDGcsv5RMa6q5IRtIzVgPnx9cTcAOobKsmDIF6FsTl7AalRwA+YsMBsAjm
	 7CMssgxu6ZB7R05QU5fjXyM/bzr8NIqffM8ARC6gKWVgoq4vmvOQLi0aHWTZhKjFNg
	 hNFdLdCR5Bwyjhl3V3msHjQbImyi4Hfnkn/q4GCoPFDGVUSu0h3HSSKCXloB3kUP7J
	 JOOT2KGKR/j98RLHp5nlbr9GztncvN4bZ5UAle2iUv9lS+JGy7BfUcgFpDmeg6FQ/b
	 68ersfBnWI/3Q==
Date: Tue, 8 Apr 2025 14:31:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>, 
	neomutt-devel@neomutt.org
Cc: Iker Pedrosa <ipedrosa@redhat.com>, Serge Hallyn <serge@hallyn.com>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, Richard Russon <rich@flatcap.org>, 
	Todd Benzies <tbenzies@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>
Subject: spear phishing attack on me
Message-ID: <kmmxxicgr7mwai6rffhbqtfrs77gcbhdj5qfqmfuu33a6nafgd@xurecmxd3mup>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kk5oneitt7fyohsb"
Content-Disposition: inline


--kk5oneitt7fyohsb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>, 
	neomutt-devel@neomutt.org
Cc: Iker Pedrosa <ipedrosa@redhat.com>, Serge Hallyn <serge@hallyn.com>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, Richard Russon <rich@flatcap.org>, 
	Todd Benzies <tbenzies@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>
Subject: spear phishing attack on me
MIME-Version: 1.0

Hi everyone,

I'm writing to the mailing lists of every project in which I have write
permissions: shadow, linux-man, and neomutt.  I also CCed maintainers,
LWN, and my contact in the Linux foundation.  In BCC is my contact from
Google for my sponsorship, which might be of help, and also another
friend from Google.

Last week someone reported to me a vulnerability in shadow utils.  It
was a real vulnerability, although something relatively unimportant
(needs physical presence of the attacker, or a way to read memory of a
setuid-root program --which means they probably already own the
system--).  In fact, we kind of knew its existence already, and I've
been working on mitigating it, and we've discussed it in the project.

The report seemed legitimate in the begining, although I was suspicious
that it was only sent to me (I'm involved in the project, and am the
main contributor by number of commits, but Serge and Iker are the
maintainers (I maintain the stable branches only), and the guidelines
say they should have been CCd), but that's something that could happen,
so I continued discussing the vulnerability with this person.  In my
responses, I added to CC the co-maintainers.  When this person replied
to me, it removed the co-maintainers from CC, which again is suspicious,
but is something that could happen.

This person tried me to open a couple of PNG files, supposedly showing
an exploit for the vulnerability.  Of course I didn't open any of them.
I replied asking for a text-based alternative, because it would be
ironic that talking about vulnerabilities I would have to open
"unnamed.png" and "unnamed-1.png".  The person didn't reply again, which
to me was the confirmation that it was an attack, and they realized they
got caught.

I don't know why exactly they targeted me, but I assume it's because of
my involvement in one of these projects, so maintainers of these
projects should be especially careful these days, in case they try
another vector.

As for me, if anyone tries to impersonate me, please make sure it's me.
I almost always sign my email and *always* sign my git commits with my
PGP key.  If in doubt, please verify it's me.  I have never changed my
PGP master key, and keep it almost always offline, so that should
ultimately be the way to know it's me.  The key was certified by Michael
Kerrisk, and he knows me physically, in case we ever need to verify (say
if my master key ever is stolen and I need to revoke it).  This attack
was unsuccessful, but if I'm a target of interest, they might succeed in
another attack.  Don't trust me too much.

As for the attacker, I've reported to Google via
<https://support.google.com/mail/contact/abuse>, although I'm not sure
if they'll do much.  It would be interesting to learn the IP of the
owner of the account, and if it used a VPN to connect to gmail, if it
tried to attack any other people, and any other patterns that might be
useful to learn who is interested in this attack.  Maybe my contact at
Google can talk to people within Google to investigate this further.  Or
maybe some of you know someone at Google that can help investigate this.
The attacker is "Mahdi Hamedani Nezhad <hamedaninezhadmahdi@gmail.com>".
I presume this is a false name, trying to impersonate someone; I assume
noone would try to attack someone else using their real name.  There's a
real person with that name --or so it seems in LinkedIn--, and is a
security researcher in Iran.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--kk5oneitt7fyohsb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmf1FyMACgkQ64mZXMKQ
wqm1lQ/+J+oWvCyJwNoua9NXeB4N3+5iwq3TkfCl2xQMEm8KxJDzHwz8DlaZVM41
ByAjIBRsUmjvQbe1ZFRAP5ztDt4LSu8esVlgGmucENJ8GcxYBsUSUguK4jWrSJOi
0nS+C80W1XY6t0SH5sbVgmx7V9gfwH92iu7PRX0uXxA60hqnBabnXop6cS4HnRFR
wntAO31EiZCuUY+jJJRUZ40wfeMfK7aitnTTaXmJGn4D9YdYqKuR3W4QwCRLH0A/
0XckFw33v8i3DO9fVZ62GZtlVg4N00mbfiHto/rizRWKwwxFNnvc17mwCvZ/2Vwi
ocgr5bdXGOEBx+SVyL8DlwSywmgypw4X3f71m6zHo6Nm8Akk9P6ikWmRzEouDYNT
ogYyx7z006BZy+KiSMldMjr6fMqyyZu760owsCJF7eoDui9idJ5xDxX+RKze1MPi
Qftv+lJ8yKSNMiTGaSKiP1cUHQf1VvphQYjPKk4SO6CCCZFeCwSu9tDDbUwYsY1U
YjiuLB8ud4xw19SjPqc7xtj7bPiWOgy2EpO/HWh4PtzyZGVlKXGXWsUeD/u9LPhr
IhZRklvYLPWXa0OJxMsAaI01zJIbYSPUj1Srk2wsypWG86OORS6KNAVXJ7SJOTjY
ejVln6MGb32xsEGmgvcc86PnpQoDMoWGtxay9izCv1TiWiFAqqs=
=Wrtb
-----END PGP SIGNATURE-----

--kk5oneitt7fyohsb--

