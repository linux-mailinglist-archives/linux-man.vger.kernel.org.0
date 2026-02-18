Return-Path: <linux-man+bounces-5160-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHP+AbcjlmkXbAIAu9opvQ
	(envelope-from <linux-man+bounces-5160-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 21:40:23 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E1E1597DA
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 21:40:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E406E3003720
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 20:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0062F318BA6;
	Wed, 18 Feb 2026 20:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BcJnjCvX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A09852F1FEA
	for <linux-man@vger.kernel.org>; Wed, 18 Feb 2026 20:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771447218; cv=none; b=KxNOuiEhjLY15Y2s7KugSCo12cPtJzzDfI4Di1O4DFUqsPQdJ24Zl18vMZeoXQU+Blu3WWUeLsM6jgsb/GJkS66lDnh16ck+A0Ncq5bnHNOZrrsRFIqsdYq1LCJAanmN9yk/UxzULylhlWbTN89kYyBijCizpUrMqDrPv/JIPBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771447218; c=relaxed/simple;
	bh=J5ltA3mD19KkWL1P4yVgVC9+2JJs+vMcbztONlSk1E0=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LOYx7pTIdcKoQWXTkwhVcxq/rh7zW03NnpKDdHb7n+f4KuuzhdwGz4Nz5rC6yipzWXZCb0EQ6Gnk/EH1uifjUS7uspWPA5LUbiWPuQpnfTf1v7mdEaJQFTom+GGjjrQDX7qlEndFQf9UAWWbalRZMB8Vfw8V3bX0JdYSPfmNzQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BcJnjCvX; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-463ba60966aso79328b6e.1
        for <linux-man@vger.kernel.org>; Wed, 18 Feb 2026 12:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771447215; x=1772052015; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kIwi8qrwhqXia9PLUjFGmQxrJFVr8CmWnd8j5RNjIIU=;
        b=BcJnjCvX28CZVtOge5ou5wd8AoqWLCs1vthvDMbCly++O5SjEkUpizwr8tbDAi5Zzu
         m5t5U2B+c/z/Pj7seLvCtOpPld8Xn+ENJLx8jzYlTza1yFRvZnWgCyIYVSHb/kjPQ2b9
         wZbbnsbRanI1KdHzRr+h23MSSm8IujZxxxgHW/BqSdaNn3zExgQE0MO5t211A+nFyqWi
         HfmxlvXUGQvw8iQfAgEb9EBD2Y50CUHzfpnl/nojbA+m03iKabcOrNSbUZg6Ec0Ug0Lc
         ELPH+KRngidX1FqSzJR3v5KejlL7SaIyxc8XgVTtqfOEUxL+c4Xf7LlX8pCONYIlVSNR
         +5aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771447215; x=1772052015;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kIwi8qrwhqXia9PLUjFGmQxrJFVr8CmWnd8j5RNjIIU=;
        b=LbPHVdGAsIMlJo2NZxjQWF7nSrTGIH+vhAe51ssEo0u6x33Ma1DlvVvCoY4Kd6F5jE
         L/iEjjdguCq3Gnq6NOL+meHZtoe/ld7A4jCAZrKRlu+t2yIzHU5bK1kzIbKQQwnkt70U
         8RZ5EX8OBd4GzsZwwMUAubAbTVHPmDfVtrrWv5FsFaBllwu36CFw/9UJcHoj6WOsfPTt
         VOuWQGpISnimG1ddFK64n44JkbbBKnSU+Lr5xKqTANGqVGlI8mnEmw0XS5pTbwiew9o8
         Rh+saJffg69U9lgksM5ItZGeR3foT/iJbfDWOcFnTyZ3zkxRE68u9YCn24kiaxO+jYBE
         FHJQ==
X-Gm-Message-State: AOJu0YwfkKpvtEdVU+uX5wXibgJYXAoyPCFdnN4bb3I2o22BlkDPP1VV
	qcQBpe29jzi5ugfl78f7kirp30D3/0VzRE24HY/RmPRGe7uXYsJ74XROmrIMlw==
X-Gm-Gg: AZuq6aKVPWZOS7caSCjXYPNYX+s1GpOJDqG1oVlf126NpgI7cFwXYFNFOvE/24WlTjS
	THKFCNGFgai87J/r5hY1qdSwrnGa8fXxO8WdMzJoxbxqxvOtCE+9s1nEAinR85WqT9GlDU1wBsA
	gMVKfi9fY7JiO5Xo0x4XZJzyTldTWqlcm7BZsHwU+cPbNYoyVl+sNYtdRBp/NrchYvKe4QxW4Sz
	pFHcnGj1Z1+jstT7QBW+7jzmmS4UMkVxnLXdedj9LzM6KVuGG7R45+cFcwBWQ+QCHuPvtMEMutv
	D40T/NssaOQnPjI/yrJ6HJYfjb+D30Abvni0UEBvplnGmzwPpFgLqY6INlCOA+bS2VO6tZwIskY
	lj7wmopFBB53shGw9HEJh4wZ8Tq9tO7lc98HB7333IlgPX1FLbQDc1p0UJffQOYGwhdKW5aZwsE
	j4UIbrhcY2Njb+
X-Received: by 2002:a05:6808:6f86:b0:44d:a817:2d72 with SMTP id 5614622812f47-463b40cf722mr7538520b6e.60.1771447215424;
        Wed, 18 Feb 2026 12:40:15 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d4a76f98cesm18613693a34.22.2026.02.18.12.40.13
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 12:40:14 -0800 (PST)
Date: Wed, 18 Feb 2026 14:40:12 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/1] futex_waitv.2: Move text to a new PARAMETERS
 section
Message-ID: <20260218204012.nzeqnwfgi2vdyi5n@illithid>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <cover.1771374933.git.alx@kernel.org>
 <wkb6g6eqsjol24fyermtgntg3yuzgrbs6z3bz5vfy5x6psy57r@tarta.nabijaczleweli.xyz>
 <aZYgLav9DxDExlQL@devuan>
 <cieq4a5bknvcu6oykfehgc76djihdiy6fuats2nqbcnznojdyx@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="slhucakryrl3do2s"
Content-Disposition: inline
In-Reply-To: <cieq4a5bknvcu6oykfehgc76djihdiy6fuats2nqbcnznojdyx@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-5160-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 33E1E1597DA
X-Rspamd-Action: no action


--slhucakryrl3do2s
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1 0/1] futex_waitv.2: Move text to a new PARAMETERS
 section
MIME-Version: 1.0

At 2026-02-18T21:30:53+0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Wed, Feb 18, 2026 at 09:26:38PM +0100, Alejandro Colomar wrote:
> > On 2026-02-18T21:16:06+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > On Wed, Feb 18, 2026 at 01:41:38AM +0100, Alejandro Colomar wrote:
> > > > Please let me know what you think of this patch?
> > > > Here's how the patch changes the page:
> > [...]
> > > > What do you think?  I think the formatted page is more readable.
> > > I really hate it.
> > Okay.  Do you like any part, or is it all hateful?  :-)
> The format annoys me, the layout infuriates me, I find the tone
> insulting.

When dealing with formally complex (meaning: decomposable) proposals,
rapprochement is difficult with a binary oracle.

Alex,

The onus might be on you to correspondingly decompose =D0=BD=D0=B0=D0=B1's =
black box.

Some obvious candidates include the two hunks of the end of the
diff of the formatted document that change only a few words, and the
existence of a "PARAMETERS" section of the page.

Regards,
Branden

--slhucakryrl3do2s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmmWI6QACgkQ0Z6cfXEm
bc7hxg//c/xuVo9JGjEZ8kRpraglLVsXNLFl6rLIed2D+g89cA04hNnZUvoVWEab
+ESMVustlDj81Gn4LDM1VHWiO/5l0JXnd7ZmepYO4Em89x59qZK9Z26Uj7HNVN2h
6UaBcrt2xork08ybSnWHYOnpIKX0iIFhBBRMJ7eTfbwLw9gX3sUIv5y/g6UbbKNs
zg02V0GtX7O+vJlSIpn8VNeYbRMWDU5U0Ib91imeQ6D6c8MBRK2QgfTledxquBTH
ZMpafBl0mdJNGI2xaWUCwBYDBeq9HxuxvX+dyF5c2sQUjcVgbVM0kWmyaLXYZhe2
57DMMvPQnqy8NnRaxPas1v+0bSH4/iQnio6H3JGQh1JAOnSesZx6MZTl8me2/Z4d
uUqkszQW3+/Vxe7DZYuNKtqDMxZgoF//42vSHzHrSNE0zmK/jbNcBLOOebC3cKNf
4u8R1l0xp2lyznhSoFvFygl1qd716DFK2w9OwjdQqZh5lBLVjdKM61D0Vfp41ORj
Jn0ak8HO3BK3N49DUxv/6XlKARfx55UIEzDMTvKyxhUljyq0ddbKqTPNxeVUfMaX
SjjGmP/Z6n6KiGLQ/OWNJpwAebopgidjk9Nf9nCOyab/KalIxiC4Sf862YdlhFCs
e7XIhsoxjfrzOB/tvy01m7BMWfkMh5mACb9HUrB3+6XFdcL4nME=
=g8is
-----END PGP SIGNATURE-----

--slhucakryrl3do2s--

