Return-Path: <linux-man+bounces-5704-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PeYBD8kCTWrUtQEAu9opvQ
	(envelope-from <linux-man+bounces-5704-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 15:44:41 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B3871C11E
	for <lists+linux-man@lfdr.de>; Tue, 07 Jul 2026 15:44:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=nMKkusl1;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5704-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5704-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A555D3003514
	for <lists+linux-man@lfdr.de>; Tue,  7 Jul 2026 13:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DED1041B351;
	Tue,  7 Jul 2026 13:39:29 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6376D2E03E4
	for <linux-man@vger.kernel.org>; Tue,  7 Jul 2026 13:39:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783431569; cv=none; b=UFc0/+BWS2WMfh/GKqdlP8euom7U8Nfw5uZlJ0r0IMKiXId/feLA8r70EODkL3X1L3ikslhOZdznSEqMMzL4thQ4LN0KOsbmFS2/LZIqrLZHeTYRPLeilI2l8vRISEUo5jtAMWKee/gPGZ4u+hA3kiAQ9GMumgYhnTfPzm1JCP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783431569; c=relaxed/simple;
	bh=1Enx89kg7wNLX2AD9ichFdlIeDa0ej1sZwNDpCapBko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sKLxbeFJteFqx/Ejgdw6QDxGlSKaGNcBSQB8mHuhVDUZZMSj4iNWtZU6l+qmQJPrCsx8GFsyaFnnDtAj41FbMxNr2VmUMyJjqqhKSzggWzeid12X9UBmRotRfb4XIbBh9fXXNy2B8E5nJezfmNbG++ZbcV25A2ZNeVB7TjiC0LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nMKkusl1; arc=none smtp.client-ip=209.85.128.177
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-80814edb536so56072057b3.2
        for <linux-man@vger.kernel.org>; Tue, 07 Jul 2026 06:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783431567; x=1784036367; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ESMZ+KruaOAFDvDUTRMCTH33QnMr4NTscXFUKWJvabE=;
        b=nMKkusl1PVqWZtFJ3GgH7qF4f2/wnFPkGBVB313izgN9RoWMkEBfmRAnqChKM8Gfp3
         wIomVX5ZBDhuoGVptBfHfIcZNEZsarWpspJWzDimhRiCYALuQJOmCdd4VV1K4c4FNaIq
         WCgDvdh4KAhfRF1QW0xv662uilMXviX8EDPMBqDJQubHG3QB/0cOEARIzshii4JRcjw5
         6m+HQvZnlYm0y3i+buX8HTqJ5XR/kDfOkykZeYYMJcBMmUcrseCO/9A4aOJmCexb0Z4d
         zoNI33UsUmqFokBQODWsSqzGT89g/tfRrnZyC9/BrxOZjj8S+fnJhZ45hr5j6bIVlRRa
         5ofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783431567; x=1784036367;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ESMZ+KruaOAFDvDUTRMCTH33QnMr4NTscXFUKWJvabE=;
        b=prBribfQWlV7IFjAE5zlpEkM/GRS+IvtR3yer5R0VDJXIZA/v/9/PtW9EaMEV8H9FZ
         IX85Un1dfPNY7QHVJchGqG0fbUXLwpfYzCgGEh5JraQygqWoUX9h7OQjP4c73mPZ36VO
         hRN/eyoWQzHNpgDXc6D4fof9cnfvM+SkeiMCvWpkn9yO/jNOHVD1wL0HQA6T+vYS2Bjm
         x2uUaza8d2HlrixNeJ/IkBvyyJ6hWqq75D8E95B5OPAm80/dnqKPJ6hzZqzu7BVWppny
         PPPW1hSc4O8duRjOQQ++vyBjhVnLVaIMUJbewDc4ohQRk+s0/lvKNnfj8v/UXUJYpi8E
         qZYA==
X-Forwarded-Encrypted: i=1; AHgh+Rp3m6xhOKu7xXjSBoVfJt28yWFmD9Ynoc8JgxVTiDsFxhE6aVaFFl3GR7Ze3x9z/8h/zRBXS0hS4KI=@vger.kernel.org
X-Gm-Message-State: AOJu0YzwY3oyn4cc8GuDJtUD8Cvf4Hjnks6jUG3joPq6aXsQIO0ybE7B
	qPjoGDOvAQKY7M8WgHctDbyW2tjQMqAEiJwsspEYpy7UNOieg9KGURJp0RwhuA==
X-Gm-Gg: AfdE7ckoaVGRWktCoXGd7XjYCWEtd6rhoijOk1fVobbEx3puehAGZnpbaacn7g/wb9P
	EDDH33ex9+XKT/MvSnTxnHboJojgIH54F3ap4p8FCueL+YoRlZm/ZTEaxUdIJQXECywmy+/K1WE
	ECftfLmvnioeyEMixD4LKqC8hlSsSzBeLPEmREwsNw1eqNUGexKz2R1MvMnDivnB1V6f1xONKGp
	UrNmDWDG5xKqC0MbAKZ+GVfXFPAEJU+Z3fnp6pZVN5a83CPU87sgvE2J7VKTQrNLU0X1hJkSVFd
	LHlAUr6uu3SMTazp1AJJ3MRUGeUhUovz7nyWvuxCARD+jFHbyDfgndvKd52u3GHkYho1yHgcjxo
	/qLCP4WpLFCwYi+76u33VzQFv5fUSe+9Q1fX2PlN8pwPitl3OxNiGgKpzDhQfIQmqos/jETwC/J
	UYAw==
X-Received: by 2002:a05:690c:6111:b0:81d:26f9:bc85 with SMTP id 00721157ae682-81d26f9c09fmr3642577b3.45.1783431567322;
        Tue, 07 Jul 2026 06:39:27 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81448218f8dsm69589877b3.15.2026.07.07.06.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 06:39:26 -0700 (PDT)
Date: Tue, 7 Jul 2026 08:39:23 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man7/environ.7: Fix underspecification of
 "name=value" strings
Message-ID: <20260707133923.lu46dj4p5dhew65v@illithid>
References: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>
 <74bea4adebbd24979b9a072d518f1f202a788674.1783421176.git.jason@jasonyundt.email>
 <akziEjm7cgrNTmGT@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y47gi26ctpuuf3ep"
Content-Disposition: inline
In-Reply-To: <akziEjm7cgrNTmGT@devuan>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5704-lists,linux-man=lfdr.de];
	FORGED_SENDER(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:jason@jasonyundt.email,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,gnu.org:url,vger.kernel.org:from_smtp,illithid:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A1B3871C11E


--y47gi26ctpuuf3ep
Content-Type: text/plain; charset=us-ascii; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] man/man7/environ.7: Fix underspecification of
 "name=value" strings
MIME-Version: 1.0

Hi Alex,

At 2026-07-07T13:31:31+0200, Alejandro Colomar wrote:
> I think these programs don't prove what happens on a system with an
> encoding incompatible with ASCII.  I think if you compile glibc on an
> EBDIC-based system (if that is possible at all, which I ignore),
> you'll get the behavior based on '=3D' and not 0x3D.  I think this is
> required by POSIX.  0x3D is not special.
>=20
> Of course, if your system is a mix of ASCII and EBDIC, you have a
> problem: glibc might have been compiled as ASCII (and thus use 0x3D)
> and your program might be using something else.

A few years ago, Mike Fulton of IBM explained to the groff list how
modern z/OS copes with mixed EBCDIC/UTF-8 environments.  Essentially
they use an extended file system attribute that tags each file such that
system libraries know which encoding to use.

https://lists.gnu.org/archive/html/groff/2023-04/msg00003.html

His explanation gave me the courage to delete GNU troff's internal
support for CCSID ("code page") 1047 in time for the groff 1.24.0
release.

To date, no one has yet complained about that.

At the risk of offending someone, I venture that no OS vendor but IBM
cares about EBCDIC encodings, and no application developer who targets
any OS other than z/OS cares about it either.

Regards,
Branden

--y47gi26ctpuuf3ep
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmpNAYMACgkQ0Z6cfXEm
bc7ALRAAoJI0AWcvQYqrx676CGGhdh6n+Nqaojkp5XiSg+WcQXJ0y+LwP3dBH6be
kRUpnkxGWQN3eBRMsiCEqt2dLkJPP3x0j2TcFJuEAnkQmKu2QJKPUMGlmm5rGYUn
NM4ccVb8tyJoi0Dccn626OKXho+SyuZ1Js/fEYH5K7SW4DFYUFUisGiM0ocRA03/
lOYAcGNEINNKoWIzZhgw0LdqeYG7zg0mW1oNMkdwefqjtGSbp7jrqMiU4u0muh2z
CRC0HlblMfJV3CNdHsUQHW47hxqkaGCIgtlDeg1Hz69k+jHxayWiFxBOOMy02ng1
/GPK+Dqwa0w0bv1bdHtOdIUMlD17KyuJGhrHuLtutcwA8p/thjoK5zjhO7C4IUhI
NEL9VL+hwMa4Pu2tQBn9s1uAdzuwYXWwRW5WnFaAiriH9J9tAcQV8+NhAowYHWTL
nlz1E0Crkn6g0Q0q6gz055qaIt5h4oUkdlAuv0v2uhUNPZkUAJwb+CFDtj27V+bX
UORG1D6o7nd5PlPmHCZ3sZcx/EvNCvqz7c5HZ4uN1/iPAQ6V6KA/kGdNMsWT8UxH
yL08514AqNHNar+cgp3CcRmqXcMjK7k/4e/4Ou+cTfMX1AOUhV19YrmL1KgM9jJI
5L0zgLO54JrF7AWIWHmgIH3B9BJSk5OPus4/4kD9la9UaxR757s=
=Rt4i
-----END PGP SIGNATURE-----

--y47gi26ctpuuf3ep--

