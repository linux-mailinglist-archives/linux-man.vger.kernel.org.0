Return-Path: <linux-man+bounces-5374-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHjwKBoE6Wl5SgIAu9opvQ
	(envelope-from <linux-man+bounces-5374-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:23:38 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DD6449434
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:23:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E67873013A79
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 17:23:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B08A37C90B;
	Wed, 22 Apr 2026 17:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W6GrldRy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89184325495
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 17:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776878613; cv=none; b=dvW253DhS9hv+EstoHSWKsjLtgwmKPuYAl6M2/hfR/2oLc5MuACmJZkgjBMC5l/bl8v0cikMttPoLydmxN8cVE/hwMhw/5wOq51fax5sPDO4V97PNVMv03k/L5arORILU7iRRlMYd386/U7i2/83MjZ6Kt97WNDgMePWYNOmt6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776878613; c=relaxed/simple;
	bh=sS92hlcnyPiLHGA5RzCs7EapSji7Sie9eKpH005LWFA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YN+bY6tZPYbDPufiadsvPb/EYmf4iCAlMMAmW6P2hOA7nGJF7fEEsBeyz+B2M21LWUhlbZlFz3YkTjISIytZ6qgpo8fx9MJq2h1YHmAn7I+d1Yn/Z4HWPKOZIEb31vEmZ6GIQqrU/2bsb4PENSXnj1tYn/M39qQZNB2AwasRW/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W6GrldRy; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7dcd9061b1aso1846907a34.2
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 10:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776878611; x=1777483411; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7zJxR8hHPeSDTeJ1ts6KZ/j8mkQsTcD168jdvZdoC7w=;
        b=W6GrldRy3NWeeDnpGWF5YVPBhWRoDFN4onblZ16b+SKBp7mZhu2p5/ir5G5uMOkQ/I
         Ru8za/pDZE296cJk7vr+JP3m5jtq2fNSGuQWY39HAdI1vjr/GZhvwKDpeGDLuMGto1Be
         Sv1DQ/5LeYbVsW9seF9BTVnXlGIC6flPDht4jS90HoQRO/I1kaa1mYOsXeQ2QnBTsjmC
         AjcSuDEmZk/CdQQ9ET+NcXxU7lLcljJ0plwoeUHMq2jHJbvVLC3+UcGHVIoFsFe7ikxp
         D/ETTyEyIDCwe+lnegKp3VsdrRGUlK00xvjpBIpSZsq1OQhXX/Eu+29VOKQYjZHBEtU0
         4koQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776878611; x=1777483411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7zJxR8hHPeSDTeJ1ts6KZ/j8mkQsTcD168jdvZdoC7w=;
        b=ruX9BBGZT7lHMfL1G4UMGQmN52/fXXtuUTg27nDU7RXzc6SRPeIL3mINv5rn6k2LmA
         1ekRdPM2n+F6FbcX0GcRK3y2Tltbo1pNTxiSVp6FUVR0/GGkmWRGyi4L0nfs8/ne51mI
         ipmAeljEmTkj7b7nQXLSbvHn2HCC0faULebOmWEEfCDIPkEnv6BjlOHnlNgn+DyAzcvl
         SoQgkQpkMqTaev7Y0CI89YSH4OnPmmXohvohysGbLpp3pI0bZJeVuHdQmJU8WL3jpl73
         VAJp9veU1q1BRlecM47fXIC52m4VMoQAnjikHDp8iSt+B9UQcJPZO5kmALX2Y2Wh8MYh
         6CWA==
X-Gm-Message-State: AOJu0Yxe6xx2ytbiSnpqFBOiO2+qK1/sNZWOTnfB5L7F5aQyEyo350xZ
	5bjIeKPxlbwDgrk3SI90FvHZV3eXQm3DPUAJM3MdWRzLKuzifPqPVmhJFySaHg==
X-Gm-Gg: AeBDieuWf6+ABAOlZt42HYmDZWxzLZu0br6ushT+Bhy2p6yd/whc9Ov0nKCBgOKenqk
	nKW3WPQ+R6msrZULhE/yRhPQ3BO/AYmSjDYkjkaQ0YpefCctOPdoIzGD0nIdks4Oa47bZNNfzqm
	SIdKvPmiBJCp2ZRsqjx0ykq8K2A1rzBemmvYWA/4ntWDMrM+1wYkD5hU8FDZFEswSP+P7IcqmHA
	kKpJRhvpGX5NNzRzwgf1L/IjDCU7fIWZFnpxWb1t+XoQeGhLeokfkAX3Q6aPt2FpPLhX4kKwNHZ
	uECQukaD+DDwy6LL3CAlQEHYAiyVSF1Y5sL6xcFd3kArOnoxvhleZQBRIqk2Wc92/UKzDalyFSU
	RphkMbOv+tYFAJ9IprmNiJWSiz9KX8c3ttXrOtkN2YsMSeqE/U534qxXo/Btb++phGov0QY7WgR
	6A7fgiSv0+5lVchX15YJ8uufs=
X-Received: by 2002:a05:6830:6581:b0:7d7:e045:b489 with SMTP id 46e09a7af769-7dc951084f9mr15494396a34.12.1776878611397;
        Wed, 22 Apr 2026 10:23:31 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7dc975b057bsm15718003a34.20.2026.04.22.10.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 10:23:30 -0700 (PDT)
Date: Wed, 22 Apr 2026 12:23:28 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <20260422172328.q65i3pge46mpaj6m@illithid>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
 <aejvcpOKmAxCnJQV@devuan>
 <20260423000434.G45a2@cchengyang.duckdns.org>
 <20260422163603.xvgyqulnl7knxeem@illithid>
 <aej9PG3FsVRGaR3W@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d5grmqrvfasrjsdo"
Content-Disposition: inline
In-Reply-To: <aej9PG3FsVRGaR3W@devuan>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5374-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wikipedia.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 24DD6449434
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--d5grmqrvfasrjsdo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
MIME-Version: 1.0

Hi Alex,

At 2026-04-22T18:59:01+0200, Alejandro Colomar wrote:
> I've seen several other clues in the patch.  This was the once that
> confirmed it to me.  At first I thought that maybe the contributor
> could not know that BR exists, and thus try that naively (I've seen
> that done in other patches).

Oh yes.  Ignorance of man(7)'s font alternation macros is regrettably
widespread.

All of the best people get along just fine with BR, let me assure you.

> However, 2 lines below there the patch introduced a line using BR
> perfectly.  That very much read like random LLM stuff.

Nice catch.  I like the way you sussed that out.  While humans are not
immune from this class of error (forgetting something you "knew" 60
seconds ago--maybe more like 60 nanoseconds in LLM time), it's uncommon
among mentally healthy people who haven't been hitting the "substances".

I'm reminded of how toddlers acquire object permanence.[1]  Not _quite_
the same thing, as abstract knowledge is more easily lost ("what are the
conventional units of the ideal gas constant?  how many operator
precedence levels does C have, again?")--but it seems close.

A course for people red-teaming LLMs to pursue, maybe.

> There was also the arbitrary combined use of .P and .PP.  I suspect no
> human would use both in a document, unless the surrounding style
> already uses both (which could confuse).  Since we only have .P, the
> .PP came out of nowhere.

Another good catch.  As you note, the domain is limited.  In documents
with long histories and multiple contributors, the pointless profusion
of paragraphing macros with identical semantics is sadly common.

> And then there's the extensive use of \f (without brackets)

Still _really_ common in the global man page corpus.  But yeah, a hard
mistake to make for someone who's a total n00b to man page writing in
general _and_ to the Linux man-pages project.  People don't think up
that syntax, they crib it from somewhere.  Or an LLM does it for them.

> and \(bu, of which we have no cases anymore.

Unlike `\f`, I regard `\(bu` [preferably spelled `\[bu]`] as cromulent
usage.  We need not be afraid of bullet characters.  They degrade to
US-ASCII perfectly well in groff (and mandoc(1) too) and I'm confident
that this special character will work everywhere the Linux man-pages are
likely to be formatted.  See groff_char(7).

> All of this was very suspicious, so I had to ask.

Is there a resource that collects "here's how I caught an LLM-generated
software patch/research paper/court filing" stories?

Regards,
Branden

[1] https://en.wikipedia.org/wiki/Object_permanence

--d5grmqrvfasrjsdo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmnpBAcACgkQ0Z6cfXEm
bc7xLw//U+PwCJ/c0XjFpx4ksJK2pybRM6nWe+PBO3jGNvRf2b7PaZPGKW5ra6wv
+wR8+/aPxEZzZ+bb+nx3l0dCW0tEVyQhaA9J6KdNWks8cxu42xV5a0LeLDJSFwFU
gIWq+bxLFrdxwbXG+J8XVdwGFU/mi9sN940l2LyPN2z6s+X8kFHIPGxYrpwDZPOu
w5ep6G5Fg3Ig0TfgnkAOXBSsdMkbhaPTVK82oTJlEkbYsjruwT7D93vA4onvuPgg
+6NKShAI/VL7k8mkTtHAXjwHJ/rr/NWFlQlqPCg8xEi7KoSt8rLXYqqRwbfJs1Lx
LNwiavUHvlHpcR7AjnGDWFzKzCmt3NmzUedWoRIw4+7Bh10tHcHTKD0DtMwLkmvT
LyLTEsDF1W+xip12v2UsPa5b+i4R1ikkhqzuIog9RzqMjwYWMsWoDHTz8iFHzQk7
xMU1G0fvVV26SSoDfqUt5kajX71f/D2z7HiZPt918mzxEcljjVKzvcURBLppwIM9
Fk+GuIWES20AUeiTOai58q/b796/twfE5YzXZySMy+RQLXu/ztXRak1sMrtudiPT
5iAZ83wfy1IOmzE/Io2UmhyLw5qfjVro1S6AXAOgYQEO/Ghzn8vmZgsFzSl/FH2s
MCaOJP6VAApUKo5+aX3n4myHpc3pJpZEuFacCa5RrWj+jw1OKng=
=FW15
-----END PGP SIGNATURE-----

--d5grmqrvfasrjsdo--

