Return-Path: <linux-man+bounces-5629-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCH2A0l3GWqwwwgAu9opvQ
	(envelope-from <linux-man+bounces-5629-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 13:23:53 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 743D1601916
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 13:23:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CAA7300CE46
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2026 11:19:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49973C768A;
	Fri, 29 May 2026 11:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dCi9NqiY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BC93D171C
	for <linux-man@vger.kernel.org>; Fri, 29 May 2026 11:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780053575; cv=none; b=Scdg5JRFH7ck/9kturd864mEetIrZ5iNfvuVLspWHjpbJp2flbYNPWkp4VscMJNm2KZcdtWE0yrIbwMB8EzGa+AF0i4pslS8qXGpU7l1w2+gfRXuZ1DajCSixlTSQi44oH/E2X60IpIjzNGNA5ILxH9flIzJqtGb0KS34KY+8RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780053575; c=relaxed/simple;
	bh=1SmrbOgQM8e0x/4Kah8HMg5lOJrFg3aJqAi3jsNA7eM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=noyHqJHRK6qrGFfoNRvdtvq2NN3we9ubUzETUZ+qGcD6CuxjxAUglf0tHWGveatyeaD9Edq6wx2FDFaauBmbxg350c71evKCgUCK3kkYgg8gzNX54BeVt76KGCNTU8lTVJA9FB9ngesSt/RCph7LMxEbpIH7MjXppEFF83x/o5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dCi9NqiY; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7de4be15125so12881282a34.0
        for <linux-man@vger.kernel.org>; Fri, 29 May 2026 04:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780053572; x=1780658372; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UKdAA5m32OsjJh8vI73qGaxQ3D8louRJdTHN79Z05l4=;
        b=dCi9NqiY5IZbaD4FiBr5HvNWPu538Zgbr9bvBOrTcUttvBQs2Xm3L0pbjnhlXqkBhL
         BvguSjOlctcVuRTg66raZVXBEr0zLHlQN5LMMTCj7+90zpzIUriKSNEJI0euT4pKigff
         9pbZ6ihxBFVZFYdTztpOjyEJXqzU2OUXBPr7V8Wz2Bt/WQoslcalQEJwAVWrIt6sZf/W
         YzFoX1RyCbxDJ+sgVvwKrI+tysU5Zeg0YO4sg5oQhPSETaNUr9dS1lVQXWmVrDdC14SQ
         QgFnj97O6fXpNto+CT4W+pNdYxFXhqfPir5KU/Izd6kyRIJ8MgCt1Pi0ghXQf2P5y6jk
         qvRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780053572; x=1780658372;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UKdAA5m32OsjJh8vI73qGaxQ3D8louRJdTHN79Z05l4=;
        b=XEd2vgXBgfWSX0U4Pi71YxUM0DHIJyTuYxBP7S/4MsXXjS7dkSi5TRWvThycClOCYG
         OUU6DVrrUVYoE99cW3CuwhB+UxjQklY6nYdJIx9pU09xk20Nnk+QlNxqVqK7eJ9WzwYf
         oym1iGRN7ferqD8GVCIMLhc6Vxx/f1HEJ3A5gGuD1NGLRNm/os91C4Sb7Cs7vSQL8AMq
         kCBF7fCL+LSeG9e6l46WtaJeLqfCxY2iEI3sk3cROwdxBr/uZVEJwlpFHa7l6LGraMWG
         VC+tdH+zcjHPqY/LDbUv6yNgI26z5Ec3A7RNuF+4/uov4uNf32D9xp7M2NtOHAD56q58
         X5fw==
X-Forwarded-Encrypted: i=1; AFNElJ/CDrvlpe6Vy58EvDD0+Ag6Uuhm3DvLIv9ZVSekKeKCrhSnY6R68IBMhRpbqAj5aIeWZEHrV6vYW/0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw69B9Dz6sGlmc5aMg5dX+iGGJM7rwEuxlmOV+qodk2hiqV6S4R
	02f7ZmUcg7SE9Ll56++svT5DlPjMRb5nbIIgFEgQ5A7NVYgZ200IH4SxLuWyIA==
X-Gm-Gg: Acq92OEzpmpszvZn7H2qE7d+P58w90io5t/qjL7bgPRZ1O/ckE77f3wIhcsl58WVLcg
	H927r6zUXTjYJ1S6kq0mImzLz4pB99MZOy9Vnb7Vff4vkhXgdGKQxQr2ti8vA6mUkpJcqlJZ8ER
	0oX6LjLBEew+rq/D7ryeuiE+p62upUiwV5OC/CS/7s3BBWGnBEAm5vOhecxB0dulaxMLUBQXnpW
	CVa6UnY1zb380ffx6ZZXqDAKRrKBI6hNFV2sZ34EPeqr5q87CWlg2wlup/dGjRARLsBJzTQ4eF0
	v6O/7ntnOsjdyBvO8nxn5ppKN8BSuh+Sr5+4bSb3WeGxrGYaJQgYFeXTvuiaAEKjAUSom5+RUJR
	LmIQrY8M7MiCl3hZ8ZBe46ZNLNNrsb2/GAuZR5ofEIrH01CX6T2ByGhsYfJbD2B0x+kUI9p8ivC
	o8/T4INuw4TwLxi+moEhP2IJo=
X-Received: by 2002:a05:6830:611a:b0:7d7:ccd6:3cd4 with SMTP id 46e09a7af769-7e694e60234mr1694133a34.23.1780053571930;
        Fri, 29 May 2026 04:19:31 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e695b94849sm1239844a34.6.2026.05.29.04.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 04:19:30 -0700 (PDT)
Date: Fri, 29 May 2026 06:19:29 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigBrady.com>
Cc: Alejandro Colomar <alx@kernel.org>,
	"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Incorrect parsing of OSC 8 hyperlinks
Message-ID: <20260529111929.7vvqnyie3ankf4ec@illithid>
References: <0f4714dc-fea7-4d8d-8942-85c4c592f7fc@draigBrady.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7sqbous2frvlioqk"
Content-Disposition: inline
In-Reply-To: <0f4714dc-fea7-4d8d-8942-85c4c592f7fc@draigBrady.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5629-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 743D1601916
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--7sqbous2frvlioqk
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Incorrect parsing of OSC 8 hyperlinks
MIME-Version: 1.0

At 2026-05-29T12:08:32+0100, P=E1draig Brady wrote:
> I see all the coreutils man pages on man7.org are corrupted,
> due to the misparsing of OSC 8 hyper links output by --help.

I think a recent message of mine to the coreutils list:

https://lists.gnu.org/r/coreutils/2026-05/msg00080.html

=2E..might have passed you in the night.

> As a quick fix you can set the TERM=3Ddumb environment variable
> which will suppress these escapes.

On that note, I'd like to take this opportunity to solicit votes for a
change I've proposed for groff 1.25 (expected in July).

https://savannah.gnu.org/bugs/?67947

Is anyone reading interested in that?

Also, I think Michael might be interested in:

https://savannah.gnu.org/bugs/?66401

> Note the help2man that is shipped with coreutils (in man/help2man)
> is updated to support these escapes.
>=20
> The escaping should be quite easy to parse though,
> if you wanted to implement full support.
> For example the arch html generator supports this as can be seen at:
> https://man.archlinux.org/man/tee.1

I'd be surprised if device extension escape sequences (`\X'tty: link'`)
are easier to parse than `UR` and `MT` macro arguments.

But I could be wrong.  I'm going by my nose on that question.

Regards,
Branden

--7sqbous2frvlioqk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmoZdjkACgkQ0Z6cfXEm
bc5veQ//U2Wn3c38082ZAoJxHBuPgDiJpD4GzBIKETe1nop3ThY+bPDV/EiNQVNT
UwxHtjFRH/lt8t2nrSvpVUV3l5/tQNJn27hJmUpiWU9KHCazQMk3piQBSqdY+0z0
Zzy44p+vtSq2KtUML1YRTcYGCNMZqCLs7FkiZappMdSNjuNoC2Pbz/nl+L6D/ukR
ipMbfB6xnyqJC5bR8Qz0nzkOUute1y5FnZVf6V6rfwgBds2kRtqXITAD55SkNGCf
1Tc0qMc9DzqNXsmqjb/+FHU9n6ChtWuvXG4iCBKXBCsA/mg/HEngPrtRk3sOUBlb
P8qBEyyE//m8cPHuOMGbP5/DnjhDPy+8KBqZSdWLZzMdUgnsb3f+8waguof69ge7
m7Iax7EPdfbQ8dGji56wZsHh4b+Msrzj7jSzfd7DhBYcQQSqr6ksRhAm0IEvyzHU
17Mn8cOhy2SN7UJpQ/8cJXAF8p4a60cKgaLZarqZflwleL7bmUxX4kRDxeu4I60F
oRTD1ILQmqlZHRjSCxUmXehA/l/UnM4La0EHfP5Vyfuz+A1NLl979V8GSDlYf0/U
fXdO2Km8Y/eBlkHp7aQifK4hKFQJfvYi/CsMW7L7a9sqvamPfXXFw/zinLPr7PB+
i8tDN+DweO7xr/CQP0cROGKsAq3Xl/niFebkYoUUcU3r8cHA6ro=
=gyhr
-----END PGP SIGNATURE-----

--7sqbous2frvlioqk--

