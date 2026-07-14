Return-Path: <linux-man+bounces-5751-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zUeyHq3dVWpHugAAu9opvQ
	(envelope-from <linux-man+bounces-5751-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 14 Jul 2026 08:56:45 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E79B1751B0F
	for <lists+linux-man@lfdr.de>; Tue, 14 Jul 2026 08:56:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=a+7zA7D5;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5751-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="linux-man+bounces-5751-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EAEB23030279
	for <lists+linux-man@lfdr.de>; Tue, 14 Jul 2026 06:56:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC113DBD5E;
	Tue, 14 Jul 2026 06:56:42 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5777F3B777F
	for <linux-man@vger.kernel.org>; Tue, 14 Jul 2026 06:56:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784012202; cv=none; b=b3UvLGsICGOkz7u+J2DbRmTsnUih5KwHt7DdkqO2w+2XcHjB7HnTFk3fvCLuJE2TwxXN1FW7BzCNk1q65p3K+qnSK3Ufe73uuci4Hczqwd4XhMieodb+9OQJaaNTkKUsE3HEM1wWTqf112hpV08Z8CTWxwoJ7Tj09jwjGs8196U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784012202; c=relaxed/simple;
	bh=NgpAqyfF/dFLfs0245jOdCn2ATV7lNWdApmeUNslje0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OkHxPcU3uR9P0zCOlDalkpVs9mTqUQNiJpWRsm9AVzZ55O6UrHskMPdQzLa73OUGgd0fyt48l8aLXLNmk0/BZqbP82WWW7E31p9KO7L/khxCTebH168D+vsd2RtY2NKeyEEVoLaIf0Z+dZtkMZGLqwKCYEwMlj0r6F+2tpJmO6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a+7zA7D5; arc=none smtp.client-ip=209.85.128.180
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-81e9d8f3289so15301517b3.1
        for <linux-man@vger.kernel.org>; Mon, 13 Jul 2026 23:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784012200; x=1784617000; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=e/3BD0eD7pjZ8bxO6WXu8ijSK15q2uHpCv78+a0pHxs=;
        b=a+7zA7D5I7eVRXDJz6KC/0mCgWJ7/8JqAlrW8i13WDDRrhWM7lNrK5RQPRetk1s8Er
         voAGkBBlRt9CSt5SUVXR6cWf9DgCWL5UVbK8+ZCiKHlbmhAzNd5PotYTLxbN/fp1gjb3
         OS9PEVFgCnfYDBw0AZ4dNRMBOht37ZeXeCSS/t/VytaquPZbJojCbAjGPUS041+ZkRDd
         SLVaNLEr//DLro9xp7ytdxDkzJqmUH2q/iafcbOKDlRMyRbkEYXMviIKE+QnyKewNP1B
         iTyEE0BhWRVuP+8q2bfhE/XNPoFAx2NkfxlNJZOEAcMYCOIwABlnnI4RTAH0E8ozIGKz
         BJ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784012200; x=1784617000;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=e/3BD0eD7pjZ8bxO6WXu8ijSK15q2uHpCv78+a0pHxs=;
        b=NTDMokSRUzFL6pJ1r34Lky/H1q/JVz/duSmGKciywqHYgbm8RRDpxuDitfVxPdKupX
         vQKk3E1zW2pJ3MvQoyPA5QvPCQsUFiPs0hj02QNQli9APKLSIpPE3JO7Yvr5eldab4Q3
         zjAMaUnZFvTQ5bO1UfaTVVs6CkXIKb+Iu6ipjIC0nwvwQIa2KrcAVMkTBjkOTBQv8LRw
         42P5MZcjcNc3M7a9J54Y++B9uTQx2uKReebQba3apoo5Q5Nq6tV7LJc8JHh5xDaxkGW1
         a4zYaadz3NzCqsBa01ULSjhVsmsbKIuN49GAMKnDO6BFE7W/L7J2aOswhVmL+zRECF1z
         B7LA==
X-Forwarded-Encrypted: i=1; AHgh+RrVssGxhexIWsPuVDQYgyngtLZQmoIJylvsOGgDOEelxf8G1NFkJ81hRsLtZ/hZgvK2maZ1z3R+MNI=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx12Jv8d8uBJZDvYt11eg+oO7dWnyj+0PwHZHD9Tued12pSkz77
	0Vkp9HeWNosTZ+AWHIMlQEeoLAnlVaAwJZJHSA1jScZQDvXtRQmYhimg
X-Gm-Gg: AfdE7cl6aGMl+n9gf8MPXJjXqSRqjbhtPPnOCDS2VQzjS/qh6JyZcrhX+Srf0MXTXJJ
	aMLZnpiroM9pKkBt0g0UD2PPnaEsKjSR7eOw6PUWtbwHaw65Ia2SJyu090WJSQmNV83FD76+vGz
	TcTa/ruUBAq3Ml78E2HnFZxXd50om3Yscv8zfKdTzJa+rc3caUtGOH4oJNeCm5h/zbfhMb+DPc4
	0sylEHPHaEQgd+Xh/i5e2bv5dSFcj6isrfIaJKZ0CNZqZ6BlZHONKjsffEYpu5rBlWl1rpUGSYm
	mJRmZElnl6W70rvjdsrCODnkBkY9JU9ogGecQNYLovRyRZXvdk9N+KsCOOmo3fqPY139U+LIbcY
	9fThvzveCyPyXUnNb/kRaDgdj8NwvlsKgcsmv1xwty0/cjNqoZAu2CgyrB8g+0PzpdENPCOn0zv
	4wWVpEEbLn1Lez
X-Received: by 2002:a05:690c:620b:b0:80c:85c6:898e with SMTP id 00721157ae682-81e901ac70amr87821727b3.61.1784012200344;
        Mon, 13 Jul 2026 23:56:40 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81e6bf714e8sm134415097b3.19.2026.07.13.23.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 23:56:39 -0700 (PDT)
Date: Tue, 14 Jul 2026 01:56:37 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: DJ Delorie <dj@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <20260714065637.gzccx2gluxfa2cen@illithid>
References: <alVCfr38jr38jIfT@devuan>
 <xn5x2i8tim.fsf@greed.delorie.com>
 <20260713222234.h3efoiaq3jsakk6s@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="b6fblyke5tmyewgz"
Content-Disposition: inline
In-Reply-To: <20260713222234.h3efoiaq3jsakk6s@illithid>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5751-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,illithid:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E79B1751B0F


--b6fblyke5tmyewgz
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
MIME-Version: 1.0

[self-follow-up]

At 2026-07-13T17:22:37-0500, G. Branden Robinson wrote:
> At 2026-07-13T17:33:05-0400, DJ Delorie wrote:
> > Alejandro Colomar <alx@kernel.org> writes:
> > > You should indent this compared to the surrounding text:
> > >
> > > 	.IP
> > > 	.in +4n
> >=20
> > Isn't that what the .IP does ?
>=20
> There were difficulties, some imposed by the previous Linux man-pages
> maintainer, Michael Kerrisk.

I worded that sentence like crap, and threw shade on Michael when I
didn't mean to.  There was a very pretty _constraint problem_ that
Michael posed to me--one I was unable to solve.  Sorry, Michael!

I sympathize with the problem, and don't often endorse "punching through
the floor" to employ "raw" *roff requests in a man(7) document, but this
was an exception.  The Linux man-pages corpus is huge; Michael then and
Alex now have a large management challenge, so it's reasonable to
facilitate shuffling EX/EE examples from place to place in that corpus
with simple copy-and-paste operations.

> https://lore.kernel.org/linux-man/a79fc055-c7ab-1793-04eb-eb4f678e5035@gm=
ail.com/

That link remains a good pr=E9cis of the problem.  One could show up my
man(7) composition abilities and earn my gratitude by solving that
constraint problem using only macros from the package.  :)

Alternatively, if I think of a backward-compatible extension I can add
to groff man(7) that would eliminate the need for these `in` requests,
I'd likely implement it.  I welcome design suggestions!

I should not send mails after a 12-hour session preparing a release
candidate...

Regards,
Branden

--b6fblyke5tmyewgz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmpV3aUACgkQ0Z6cfXEm
bc4pXA//TcGnr/hNCBSGFFVl/WIoIRu45jCb8J/P3//74yBdyPM7ylu/5UKLbWw7
CTeeojmi2xQJK9YorAWKeCOrwGTLCS9EAzxxqVDoF52yVxrQ8YCVu2c65KZmoGN6
hCIlOqx3niZmuf0row3qZR/tyhdrTeqCBnW9EUktM5pq7XB9OX/k2FR7CCVT3EcW
ERPT0v/KLskLIkXKI1Lur45zRdN9SoRyfleBHU7GN2YaJWqiVz/SW37I6tyHTAOl
lcSTzk8r8GoizzDCxvz4SIbyRSgkQX3/Jz+JVicU5R2lfzvSTcyFYPcv5qzt5c9A
tFbJ1/d85s2XzxRWG7D71yypDiR2i00YdNeSeWM8/Whz2iRWbzn7gA4M3KkIJutb
sX+w2AgVU+atXVuVEYaWOufR9FXtAGtEX8mebVkH18hCDHxEc57QsB4lrdeExO+A
6ndzuzK+QB/WkTU3wNVYU/FaI86TLGVaiGVdDLsAG6BGZ1CKSHoSQjszcB1AkBCP
TZHB/jn1aMS5rMlB20aHjvYb/drpwljcedk7X954Omr55WFv40dVx8IUcAfCD0HU
cyNwDb0UaWUGxfRaEu1oK2ll4fjyeJQB4fsvRp4N24PAFeCdoCI7OjSpB0/VeTCd
jcntJqWYb9iucR4X2v63LMNCVu9qgWcdXq2Pwwvhn2LwoktZGZU=
=mpwS
-----END PGP SIGNATURE-----

--b6fblyke5tmyewgz--

