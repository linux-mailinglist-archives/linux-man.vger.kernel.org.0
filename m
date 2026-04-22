Return-Path: <linux-man+bounces-5373-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GES9HQcB6Wl5SgIAu9opvQ
	(envelope-from <linux-man+bounces-5373-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:10:31 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAB94492DB
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:10:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 83703301AD11
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 17:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F29F9386C1C;
	Wed, 22 Apr 2026 17:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="q4BGbr5z"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F0E382F20
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 17:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776877503; cv=none; b=NTJF/ICHsfw9F6hy7urtXbouCh3CMD4hEqg6MuEWcJQhCgdidjmEUSgIHSgzp+eDqY5Yi18U3ZU13LO8YSZ/pPDIb2WSjs06SMzwKsI1JInmlLbuii+mY5rUwSa9CThYbUnsB8gHkFVU4Anx9pKY0yHmd5aN/QMudOaQISxn7rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776877503; c=relaxed/simple;
	bh=HUf4O/Z+FhT/D1Y91S3TDQ5UOJSPxwVTe+goLy86k+s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sMZRddIxSivhWQXfYergd5YPgDSAj9I4jtjMGhGv9ZITu1CsKMwO9hYUSLqE2sDbdgSwAK79k5/l42fI2b0pIgOs9X0HxQZuoqF97moaZsB4YXkJ87/j/C0+4a/vL407/fIP0hwAijs0IH0igZXnnDCAl+IzXmETpLDOqgg7DdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=q4BGbr5z; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-69485d0e4beso1378729eaf.3
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 10:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776877500; x=1777482300; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LGvl05mlxr4gCRw18hJJPCPzasDdV7PFYAFwf7Qxj58=;
        b=q4BGbr5zdNscJWVpmB3/YumqchgT5kjS4jT5tauFGeransOKw9uAsffwu8HfypQOlQ
         FpizbfDotsS3ui8PYMuYJUu+KF/YKIyb5kScCo1eiIIi76bEySQjbS/F87jFmjCKKeyW
         CFWxZK1Oh/cxGhzzTxP79CDyU3lLH2mWFp9xpdsv0IGyu3LheFMM1bpgK2J2bLv69p4c
         9uNA+SLE00CoqttSUPm+Es9QCqabQFVDgAqXLqUnbY5f75Nw/6QCL4RbEatStlDmyqki
         e+n6cMQt1BA13TriPs1GikaKeBlasXA6IV5+xjM7BqdDiXC+OsWuV5VesTKazP+nCpdV
         nArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776877500; x=1777482300;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LGvl05mlxr4gCRw18hJJPCPzasDdV7PFYAFwf7Qxj58=;
        b=dDKI67kp0sUdKjzn031VOVI3DDir5627NTjfBqWXlPVPO51Rbld3UeDKpGg1j4p4xJ
         BAJltAE2Lwh/T1mxcNSzdudH7tyd1veVUjp50sO21IFVAjkKTGhldq7g6duZUlrRG2u3
         sbOmU7MN4k0Azu1BBvUuEXpqoKKW4NSzy1C70Ypqgeq8z/BFFQTBS1uY4sSVtW7kVwJd
         hxxtRC3cqeSk8VuQBQ1HT9OaSxDlzPWZLQ1ibMsLjB/oYUgnr47swuiMlUUfR5/5Yq1C
         rFhrMoByV1T2pPGSEvGGisJo7UxKgg/L4csJ0EHPEgIn5fTgZOXp6XlRsXxtmOOp5Dkv
         M6uA==
X-Forwarded-Encrypted: i=1; AFNElJ//aVSs4sW3clurQJ8l08kRnXHvEL2yySYs/xi9oB8jysAsJ6K22az0zFpg+DSCM4ldUwlm+8MDJ0U=@vger.kernel.org
X-Gm-Message-State: AOJu0YxKEUGEyrlofZ2f6UzQh2pb9p12tmdWM1L7EPnIpnptJnyoXoKk
	JBp2/uY4gIKAQemD6r6uWoJ4c8+M7Psbhc8zsQBsAbzNVGg0xW6S9I6yhNYcPg==
X-Gm-Gg: AeBDiesZOtWc9LSlQ5gwh1naMnC5AMyCfhjwZwBxMZeHGwKOsYWjvp3p8QJe/Sj1p9b
	XpItIKLrHjvsiyB5PxwStdP3rzgShiLVn491b0PzHl7qrURJTYntX3f+3HDKkZGL1f87gHXUDmF
	m3YsPNcvsyKAc1HVkWU7rZMpSAOHTiapUKoF7Dhg+M/tH5YrbFZLdICFRVjBMIWmjAM8DH8E+SR
	hcVuv6MRtlEpeXwNLJAd9iv3tVgDDW0CkxxVztlwqmj2JJG8715cGk/L5eeVTypn/aiy6msLNQE
	W6OeOq6ZgOCOkHkfVAGl+YB6MsAhAvMF6n+o/iyOiRr+q+u9nbJzW1UGyGQbf4jpqsJySOsczg6
	YT8NjvUGX8grbNb03IyVp+8BNL8xukzR1ZnNVEddD0Eb+b+ZVTngMk/LAsK5+0fyAF6/SE4UGih
	IFQGpsJGt2KA1QVpvbrIn1X1I=
X-Received: by 2002:a05:6820:1c88:b0:694:8c46:e2cc with SMTP id 006d021491bc7-6948c46e7camr7770365eaf.16.1776877500138;
        Wed, 22 Apr 2026 10:05:00 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69464e5e732sm10419455eaf.3.2026.04.22.10.04.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 10:04:58 -0700 (PDT)
Date: Wed, 22 Apr 2026 12:04:57 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Cheng-Yang Chou <yphbchou0911@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <20260422170457.llynbvayfrtilnpp@illithid>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
 <aejvcpOKmAxCnJQV@devuan>
 <20260423003214.G1987@cchengyang.duckdns.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mk6pdgqey6kycoh5"
Content-Disposition: inline
In-Reply-To: <20260423003214.G1987@cchengyang.duckdns.org>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5373-lists,linux-man=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,archive.org:url]
X-Rspamd-Queue-Id: DCAB94492DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--mk6pdgqey6kycoh5
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
MIME-Version: 1.0

Hi Cheng-Yang,

At 2026-04-23T00:46:44+0800, Cheng-Yang Chou wrote:
> On Wed, Apr 22, 2026 at 06:02:49PM +0200, Alejandro Colomar wrote:
> > What's the reason for this weird formatting of the source code?  At
> > this point I wonder if this was generated by AI.
> >=20
> > Please take into account 'CONTRIBUTING.d/ai'.
>=20
> Okay, after reading the AI policy doc carefully, I've decided to drop
> this patch. I used AI to help with the formatting since I'm not
> familiar with the rules here.

I urge you not to give up easily.  The man(7) language is not hard to
acquire, and the more you stick to time-tested idioms the easier it
gets.   Here's a guide I wrote over 20 years ago.

https://web.archive.org/web/20060102165607/http://people.debian.org/~brande=
n/talks/wtfm/wtfm.pdf

I standy by most of it, notably excepting my spelling of "manpages" as
one word.  Oh, to be so young and callow again...  ;-)

Regards,
Branden

--mk6pdgqey6kycoh5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmno/7IACgkQ0Z6cfXEm
bc77wQ//YHTkP1am//rBUWfMu51TzlDUsqJ2NWXMfYTDs0JRv+AfCh8h/vyE3I9Q
4udX4X/K5/cpyCcvyCnMinL0DueGmIRNYGw4nggAfy1jmM+KAhMpzGPI2yMtmjCD
EbCaD+IawaFHBweEhLWNVEHAJkqHwHrcZeXuoaSHOuT+uOT/JurVK2m9GJ4SUSJF
BHeccb+4mYs/BKL0pHVdZHKAk9FYtyuRK4KpZ1m6tI7nc08Mu/BxFCv58cRpz7mL
WE4bB8t65gKR8kFG3UajWjfXDsn8oDoDKbl3opUe0NLV0W5CZsKFSb2wvQ45JinU
G5FpW+fsCL478pX6kHeyDKR1YmNt7meY4W8G/LkO4CevcRSYZ1PTrbrHTGuDtfmv
oqXoLFeq8Y2mB/PBU0h3dqJLyZJvuRyx6cMBV7JY1wxVnRNxUCAp7Q6o1vV8xbnL
vIFZuXIaZLwsY7tDKxW60X5ImKP7QmfmJpeiBKzjeqX1ei6kK5HiszIn5MDBt8NO
PWfTtIUKyTbTxhZu+LXz1PL6E78QJkVKYfjHlDacKm2b4xxDRI+P1TYJygvoUtRx
D/77SxEzECjYDD2ZT+7tRveEeyViJ8eeZNWEJcfEkRh0c51UHRZKKSyNvWlTUzmN
YIf8Zq4W9VYQT4Y925LXV4uO3LAru36Ot6gE45Y9C3c2/979l20=
=4d85
-----END PGP SIGNATURE-----

--mk6pdgqey6kycoh5--

