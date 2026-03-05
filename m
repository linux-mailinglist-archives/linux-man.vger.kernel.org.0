Return-Path: <linux-man+bounces-5239-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NQ5FzUDqmliJgEAu9opvQ
	(envelope-from <linux-man+bounces-5239-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 23:27:01 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B04C9218E51
	for <lists+linux-man@lfdr.de>; Thu, 05 Mar 2026 23:27:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3F7263064D8E
	for <lists+linux-man@lfdr.de>; Thu,  5 Mar 2026 22:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0FE435CB98;
	Thu,  5 Mar 2026 22:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NMcXPmzJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D0B3624CF
	for <linux-man@vger.kernel.org>; Thu,  5 Mar 2026 22:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772749476; cv=none; b=lQNGuuC13/fg9LJI7TEjMnmww5dV74Pspv2qnSPCPHkEyvG/qUofihhKpTZcHbIeZO7PH00qyfESaCvfjvWw24N9An+RcX5KYBidyyEZwTACRyv1ThB9PPTJt7xAz0+uW5oWReucbL1jmZGWC1ta9xyvQE75Q2qgwJfACJLBxoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772749476; c=relaxed/simple;
	bh=yHpG5DasoJdQAQR6ZwDAvAAa8zV+TfJQAZyft0q2FoY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q0qDKU/ursJUaXvWfWuO/bWNdcHtXWJgtMXAzibcyFszn4oMmheYiv6JL9dTOSev1CTLc1DTDL6HZPoQlZZK1ufBNLKv2fFbVuD/pkmYHlE7mIuGMPSwBDVEozABqFFbnYHhu4uA2033hFyr+JfRsGpW44DjaPgOo/o2bjmeO5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NMcXPmzJ; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-79827d28fc4so80127027b3.1
        for <linux-man@vger.kernel.org>; Thu, 05 Mar 2026 14:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772749474; x=1773354274; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=D42bJYRqrRPUlmkeTazsyh2QtU7n0pbbJXbvgb1ue6c=;
        b=NMcXPmzJ6S66CHgjg/GoB5gP29SLW10mWpC+CW3Q7gBxhoZ6XzIj3wO/pZz3DYdOtq
         LrcgnASaiF7jUasAewxNf7bDt/8ur/noTI+uJqm5cI3mrJ3IIoWjM2pHv50XfOSJaAbz
         5OnOXhJs51c0b47GtEomEWS5JUupgMqfVVMra2LJUKpGSJXkieZfO1wDztKEvjuFDHkN
         NgZ/O0Wi3O7cxY05tYJwo9CG5y215MRoIOO6ZOeuzt9mg+tphwmk0Zhl7tkK5Z63aGCK
         vZC5bKjbB8atUbUAj2xiL+W1GuBuuC8Vt4WjSNnDfnM6cknTMaKN/L6F8rvP/VZ+dkWR
         ojjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772749474; x=1773354274;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D42bJYRqrRPUlmkeTazsyh2QtU7n0pbbJXbvgb1ue6c=;
        b=HwhfAqToVf0lTSR7T84CU4x6fC7dVX1ZN2vTZKiECF+GwSM12/gUmaIkDTKHREsbu5
         N6iN4DHBYFUoOX5Nzp/z9aBh5qAcyAUOcnphwkwOcg7s2A317gJrTo1s8gLSDH6pFJkO
         TeYXGGN4rxROAQA1vhsWbaReI3sFuqbr7de7yoB7AceGKCLA9gmtCGiv/52546sYBlHx
         Dii+FrV+c2c0ex4cFPheoPvFbMA67FKaf7b/0IL/HdbncJYG5FwBFMgA71XzasZQ9Lyh
         D4GG6nYfgyPk2vYjfZSF4TDFmrRSkvVN/Ah7nk5i0KdNupPJYdg3gyM84hTngPE1782r
         ZMKA==
X-Gm-Message-State: AOJu0YzEqU2DAAHc/zL3ZPOexFMzbyaE82+BjqX5bmr7+L4acHVV2xvg
	bdWBFpcyMi2MQ0jUPew1eH3lxa36ZtoQJLpOY92qxZ+G8wB8AC0P3vEAaBPIVQ==
X-Gm-Gg: ATEYQzyV/HpXnd1bAElP559WW6oAg1FrWIIfWZNXMiYUPkQxOgICDEGxE0xMs4wnxmM
	jHmhtv4Ig/P/wz4KxuYPcwzBaDUEBZonHyedB/Oy6imomA+1aO4Y2I05X77J7ESYyunbE7pSkRt
	LNPLdu+vEfdkDJWxzmmYO8hbrisLtL8+724YIjBlxqUu93+lxvTuu6DWdGM+zxpSITZwNYcuJV0
	OH6xF3Z5rj1I/GEpKwQsZ9ldLvL94Ec3R7F02T1z/dfT1Q3ArsyleEvAPO9x2dT8tYmQq0+tTn0
	shZ+amuIQ5I2jrKFgBiUJr3/AQoV7sVGMvu7LJMG1faiBsyAzkn65FnbDRk5618uPV6qpDzo2Zp
	5bhfbpk6MyDtun/rddrVH7WZ6KXZO0DDhAeOVVZlzgvciiOs55VBEC9ZB36tybtgFUZV5JykVed
	a4rKjeauLUb0ES
X-Received: by 2002:a05:690c:e3ca:b0:798:752:101b with SMTP id 00721157ae682-798c6bd714bmr72577697b3.1.1772749474234;
        Thu, 05 Mar 2026 14:24:34 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79876cb9f19sm92842237b3.53.2026.03.05.14.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 14:24:33 -0800 (PST)
Date: Thu, 5 Mar 2026 16:24:31 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Message-ID: <20260305222431.geycb2pof2k7sdba@illithid>
References: <aZzuI5pPe19gFvPf@devuan>
 <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com>
 <aahG1Mb0oRBEG6sy@devuan>
 <aam6Yn6ZJhM9PQup@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bzxeaxcqzmwjdcwo"
Content-Disposition: inline
In-Reply-To: <aam6Yn6ZJhM9PQup@devuan>
X-Rspamd-Queue-Id: B04C9218E51
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5239-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Action: no action


--bzxeaxcqzmwjdcwo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
MIME-Version: 1.0

[CC list trimmed way down since this is a *roff/formatting issue]

Hi Alex,

At 2026-03-05T18:19:30+0100, Alejandro Colomar wrote:
> BTW, Branden, I'm getting a diagnostic from groff:
>=20
> 	TROFF		.tmp/man/man2/statmount.2.pdf.set
> 	! (troff -mandoc -Tpdf -wbreak -rS12 -rU0  <.tmp/man/man2/statmount.2.pd=
f.troff 2>&1 >.tmp/man/man2/statmount.2.pdf.set) \
> 	| grep ^ >&2
> 	.tmp/man/man2/statmount.2:155: warning: table row does not fit on page 2
>=20
> But the PDF looks good to me.  Would you mind looking at that page and
> telling me what you'd do with that diagnostic, and whether I should care
> about it?

I can't reproduce this diagnostic with groff 1.23.0 or 1.24.0.

> 	.tmp/man/man2/statmount.2:155: warning: table row does not fit on page 2

This warning means that a row of the table might be vertically
encroaching into the footer margin; in extreme cases, might overprint
the page footer itself; and in really loony cases, format text beyond
the bottom of the page.

My copy of the document is this one:

	commit 7178f0e15db66a3616a900fc8a4007466633159b
	Author: Bhavik Sachdev <b.sachdev1904@gmail.com>
	Date:   Thu Feb 26 08:40:16 2026 +0530

$ ~/groff-1.24.0/bin/groff -t -ww -mandoc -Tpdf -rS12 -rU0 -z \
  man/man2/statmount.2 2>&1 | grep . || echo NO DIAGNOSTICS
NO DIAGNOSTICS
$ ~/groff-1.23.0/bin/groff -t -ww -mandoc -Tpdf -rS12 -rU0 -z \
  man/man2/statmount.2 2>&1 | grep . || echo NO DIAGNOSTICS
NO DIAGNOSTICS

As you can see, I've turned on _all_ warnings (`-ww`).

Looking at the table source:

$ sed -n '154,171p' man/man2/statmount.2
=2ETS
lB l.
STATMOUNT_SB_BASIC      /* Want/got sb_* */
STATMOUNT_MNT_BASIC     /* Want/got mnt_* */
STATMOUNT_PROPAGATE_FROM        /* Want/got propagate_from */
STATMOUNT_MNT_ROOT      /* Want/got mnt_root  */
STATMOUNT_MNT_POINT     /* Want/got mnt_point */
STATMOUNT_FS_TYPE       /* Want/got fs_type */
STATMOUNT_MNT_NS_ID     /* Want/got mnt_ns_id */
STATMOUNT_MNT_OPTS      /* Want/got mnt_opts */
STATMOUNT_FS_SUBTYPE    /* Want/got fs_subtype */
STATMOUNT_SB_SOURCE     /* Want/got sb_source */
STATMOUNT_OPT_ARRAY     /* Want/got opt_{num,array} */
STATMOUNT_OPT_SEC_ARRAY /* Want/got opt_sec_{num,array} */
STATMOUNT_MNT_UIDMAP    /* Want/got uidmap{_num,} */
STATMOUNT_MNT_GIDMAP    /* Want/got gidmap{_num,} */
STATMOUNT_SUPPORTED_MASK        /* Want/got supported mask flags */
=2ETE

=2E..I don't see any reason why you should get that diagnostic.

1.  You're not using any text blocks.  Text blocks are formatted in a
    diversion and contain (line) breaks, so they can get "tall".

2.  You're not using any other features to make a table row "tall", for
    example by performing "local motion" with the `\v` escape sequence.
    Formatting equations in a table cell is the more traditional means
    of encountering this problem.

Can you reproduce this problem from the command line, without using your
Makefile?

Regards,
Branden

--bzxeaxcqzmwjdcwo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmmqApcACgkQ0Z6cfXEm
bc4lzQ/+MWOln6XoUtOB1s/UiQMAGDQFWQPK/obD9fWAX/soj1nUwPXZPyONVz/0
lPHI+N6CP0LmDHypUp65XRy1UgCKt/pUVbd8RFIcnq79lpZF2SQUJQLHQEWczmAe
MuXFkoDo55QC9QxkxjldSGQqZIVxI3N/3PuIVqxbLC1ynaSaO9iNB1XTPLVRO04I
y5gPHmJcLb+of7H9sSmZhfVQxHQnH7kgfB9KUWNnHyC56CeTdCxp8QEGWZb8ZCww
gmibJWRyDjbyz6CgxH5og7uYDZazSA8ErNOGDci/Wj3tq/dvsxZJZCNfAMOOsB8q
NZnc8k50kyLPge0p/wWSt0uU/bmHRcAwUYP3mEKsRsF0Jwz0coEl64reggsJeytf
yLcWtLIiGFqNMyf5XN7IKrW34ays09RqnHJsnBQxVm8QwGcszTQ4zANv7Z4pl5RK
QOyEUYDEWaD4ZfBYxYdcxMvF0X++wk1bsIdvogGqpbMURBlb1IanF9rIWJmpTr5S
xei9cJ6TeCfP3xjHBOpvUx4PLkw9V8i9ZDy0CzCXt1aCzdaRgYSrZXLZdYIl+crj
JjLEeRV4uKCAEwGm7afMC8MDCB3G/K39WCxU3GN8RbHXBlWYqol4PJ0H2/ODGcKT
dZ9f5njv/6zuWi8ZxUqpOsFcpCD7n5kWUbHwi8L5+fu6d4ClCYQ=
=0Bwq
-----END PGP SIGNATURE-----

--bzxeaxcqzmwjdcwo--

