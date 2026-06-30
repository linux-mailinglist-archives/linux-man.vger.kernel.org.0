Return-Path: <linux-man+bounces-5681-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oKB3FSxIRGp1rwoAu9opvQ
	(envelope-from <linux-man+bounces-5681-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 00:50:20 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4CF6E87E8
	for <lists+linux-man@lfdr.de>; Wed, 01 Jul 2026 00:50:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=SLRLRFYJ;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5681-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5681-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CD7D301875B
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 22:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C0B9328610;
	Tue, 30 Jun 2026 22:50:17 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B742F7F06
	for <linux-man@vger.kernel.org>; Tue, 30 Jun 2026 22:50:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782859817; cv=none; b=lQBQendM8YaMqFk+rFzy/xKmwkulsVoSV6KvQz6LxMzOhzpqN2pVeRYsUIU9W9/HZb4KwCLeRPfr9FqKxlPlnJzY2sGwLGg2vcAPXaLQRG+ZDa6tjAcq5PqC6aMC9DmX53zRg1QpHb4DOUWmSVYauV6zY7aHWYkZnnVlmXkR4A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782859817; c=relaxed/simple;
	bh=UuZ8QsK/4PERHci3aROBvCrRvog7eeDyBwzb6dpRD3I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fhPmORgc3vGkY//5n9Roe4DlGJXryNx6JZ3rWdIthA4MqrVzzWmFSIGE3gfP0MWrqYMJ2rRsTEI+wH6XYQ9OtkXmKeIsBDUtPFnjhssSgj0ce+G3c/ytw/OcIBPY6XNEC7ASVTeGhpftxAnp58qCesDh0hl6LiUEcmCQlB7a398=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SLRLRFYJ; arc=none smtp.client-ip=209.85.128.180
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-80d33d13a23so151417b3.1
        for <linux-man@vger.kernel.org>; Tue, 30 Jun 2026 15:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782859815; x=1783464615; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Hu9RmhX848afx7D9bFIPasid8WD9QiYkXreaXp+nY2o=;
        b=SLRLRFYJaWH6+R3N9IIZT2ThBoy1De2SmJ26Ov5GIYtsDkzBIzbWrK7nKJOVWrYZNt
         NwmF7tunDhoNuHqODZD7vM8QNxKUVy2owRErPbav4plyuntx4WCTUF9coGckMxUDwyUL
         9Rn1F8RtF4nZtiji67w2U9nPcZGLniKNRZ6La8TtBYNafHL/cU9iWkOaHLwId5+eZAFw
         P+HUXmLR03EZbrg50cp5KXiB7m9SqpPaPNNN+ytOEEcqa5Fs75LoSfetSGheVs2d3HYf
         +KIdggtFCO1hJXZoQlzu54aBx4YyLJBBNzFOOV2IgHzvY1FD3uV7nT1M+6eAT34rhFZ+
         RcPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782859815; x=1783464615;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hu9RmhX848afx7D9bFIPasid8WD9QiYkXreaXp+nY2o=;
        b=oQt27vDbWtKQBQvs01Wfmxo4CgklsU7WvykubxfwY2PG1iIfb/lwwlw4wufUOC3Y4+
         ARxsGm5LhvXJBqRGdeF8mrj1Z1/cWS9cttbfUVHuXnyBf7NJxdt8Ej3QOmTqoOLGENmW
         8Sctlp/eGFRau+l6Ibc22lIWYMHLx0ie+qZakh0X27HxAFA1i8TBZdutxTvi5iBkCi4y
         jTbW0MmJxbwL8EBobIDCLoFFcN5MXsysixIBDgkhFmBARFXkYLhR6s6fwoxlmJBecF8K
         olK4cs00KJGZpHtI2IMCz4dXNnrlFUn2yyz9kOAu4LL0zUOsKcfR/aFmgHFT+q7y94nX
         4qyg==
X-Forwarded-Encrypted: i=1; AHgh+Rrf1J3nlpNkgJo25VJZR+n0nmojxR4+VyIWMFKOWoRH9V+rLhH9y68pdHcX5PyjLyORq0Hzaz4U23U=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8766FRyZe7uGLAzG6sW2Vseet6aTE6R9gj40p7GsBhAlJVK4G
	s3cduj8KwcPnDt1hjMT8iCvI4tSvZc8iYB52tKrePKaKitDaS4N7BjWJqWsnAw==
X-Gm-Gg: AfdE7cluHHbHPvZ86TNOOCFxMF92qeXkPzeb/UcOp0cCmzgrN5OKApeyxyoqrS0eEw/
	SeOiIPf24O0NCDz0bcR5OUsFiN6VcBAfwXnhRtZLcM8ytuPhJCMFBKX/bLz3HNUOyWkNxjA8rsu
	xkiVQ4JeGbeBZpv9P/3voJf1pn/9J4jZVUwps18ViJu6q7hvAzSMBH0dMyVfmsUXGO4lKT+CzrM
	aWpGvdVL4JVGPpoV8bPX/KOJ5yqLV9Wv7A7Uzm9DlVTwFnfIm22wWM75Gj3DJ0jZXqxwYKVdimq
	fzWYJ0jxCRBn7O15mWhShMhfsE4ZQ2QUnFBaf2KuGGauk4lDzqu9eVGpCO8Ku5R1fVGp1BS+FWE
	H3LqSiwDYdhkv7Ffi4KZCFXi8ZGhwkFkOPuYKr3DbINAeexGCRF554TOkuM0Go6Pfc/mVD1EAlO
	wJug==
X-Received: by 2002:a05:690c:4:b0:80c:2874:67d0 with SMTP id 00721157ae682-8120161eed0mr24507297b3.28.1782859815125;
        Tue, 30 Jun 2026 15:50:15 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8128d966106sm796707b3.47.2026.06.30.15.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 15:50:14 -0700 (PDT)
Date: Tue, 30 Jun 2026 17:50:12 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t
 termios interface
Message-ID: <20260630225012.ybdxl7amx7seplfb@illithid>
References: <20260629135910.143781-1-hpa@zytor.com>
 <20260629135910.143781-2-hpa@zytor.com>
 <akOL9gQovBTRQ3VW@devuan>
 <da42ba8e-782c-4b42-bcd7-ed089780acb1@zytor.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ryijkbokk7ebsryf"
Content-Disposition: inline
In-Reply-To: <da42ba8e-782c-4b42-bcd7-ed089780acb1@zytor.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5681-lists,linux-man=lfdr.de];
	FORGED_SENDER(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hpa@zytor.com,m:alx@kernel.org,m:linux-man@vger.kernel.org,m:libc-alpha@sourceware.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,gnu.org:url,illithid:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F4CF6E87E8


--ryijkbokk7ebsryf
Content-Type: text/plain; charset=us-ascii; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t
 termios interface
MIME-Version: 1.0

Hi Peter,

At 2026-06-30T13:37:25-0700, H. Peter Anvin wrote:
> On 2026-06-30 03:39, Alejandro Colomar wrote:
> > This text isn't really being added.  The weirdness of this diff is
> > in part because of including too many changes in a single commit.
> > In this case, it seems to be a movement of text from elsewhere.
> > Separating commits would improve the diff significantly.=20
>
[...]
> However, doing that using the broken-up diffs that you want would be
> very difficult at least for me, as I'm neither particularly
> comfortable with troff nor a good technical writer, plus that this is
> a "spare time" project for me.  I would be willing to try to submit
> such a rewrite, but if that means refactoring it into small diffs it
> isn't going to happen.

Don't worry about lack of troff comfort being a barrier.  Members of
this mailing list can fill in any gaps in your expertise.

That said, you don't need to know much troff to write a man page, and as
a rule, great expertise in troff (especially of the "old school")
seduces a man page author into writing man pages that are _less_
portable and thus render less reliably then they otherwise would.

If you're running groff 1.23 or later, your system should have a
groff_man_style(7) man page that explains only the essentials of troff
knowledge, presents the man(7) macros in detail with examples, and
offers much advice to assist the writer.

I'm acutely interested in any feedback you have on that document.

Pre-rendered versions are available here:

https://man7.org/linux/man-pages/man7/groff_man_style.7.html

=2E..and in PDF as part of the collected groff man pages...

https://www.gnu.org/software/groff/manual/groff-man-pages.pdf

=2E..there.

Regards,
Branden

--ryijkbokk7ebsryf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmpESBwACgkQ0Z6cfXEm
bc7eOQ//dJrekkjnDDiinKu1nIq1bpXD/1xxKjVrV6mrcNAtYECKFQxwbEwmU0nr
W9+/o4izQy2xIcyTvMKdfq2gu92KwiT3ByLRlTe+D15s6Df08Mcfh/2vnCPZGcIU
Axczk8+K+two7FEpEcot0BEfk6B7khT+wntynfiIVXws10lo4WnJDTfmUPrFLY6g
oNIdtPHJRtXFJ5gUpfoL1JOAC3uTviKqnm/ZQzxuL0ZAfzGTawR6PFp4EUUa1cv0
EYodzNldr8fxamqcMMHWkWxblF21VTflNfaFHA6HXv4hzrw04bGE4iOUpjVbMY6q
9ZV2yv4yrNXWW9Agqau2Mcj4klA3rQjX/KxQv59NHiVnvIN6fOutyLoV2DRe+0Ob
qS5Li40Kwx2DCoynCd4Z2pbaOmG7hI51FzTVmBP/I31J+fM7j4+enyDTahlfkasv
Y8Y7hV+iPO9DNMLMoC2HFdtjLJB8u+sxgrPTp8d1C52HsnxZrUHd7noEcuWcxkcX
gXeslNXJWuNI1RqDQSFv901t0FNkVG8KTn4+2MsSWl/FFDs2neG7OaOrITlgT3UV
sdhy5hEQ1ssc77RXnO+AI9jiv4ZbSYuUKyi3acFxuC3x11EDAS0P57iSRp8Is3NM
ljUel/qMt3di+nNRHujWedmrFCM4/WikIdcHMbP71MI2Lcmbd6M=
=hVYK
-----END PGP SIGNATURE-----

--ryijkbokk7ebsryf--

