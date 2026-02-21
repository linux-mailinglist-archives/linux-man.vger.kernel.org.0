Return-Path: <linux-man+bounces-5169-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLNFM2PumWmwXQMAu9opvQ
	(envelope-from <linux-man+bounces-5169-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 18:41:55 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4019216D685
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 18:41:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 454D33030E8C
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 17:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCC30325711;
	Sat, 21 Feb 2026 17:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L75vPDB1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AE5319860
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 17:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771695707; cv=none; b=GtmVv7LKXiSW6UfO1pCJIrHRmvdKjkc8wNcrCDBQPzn0SUwumawiY5pMH1EDFVjxHAlf8MTGK7HjavEaJhIAnMrWOj9EDiTGr/ynyHUnmjrkidf3SaerfKfIQssJVcNYrew3cKYmrsAJTPAqfPaX7tOxOo0IP0dHXMrqGoEG4vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771695707; c=relaxed/simple;
	bh=7Cqi9JffSSFVzv5OjW1Jzz5+8vv1FQGC8TB21yVFhlI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ttA34AO5+MFdhc3HOqFz1evWr1B67V7+6R+hG/BHH15eR3QeSbkZ2l03K750HNYVyWHDn9FgteUyCC5kMQR4IEUYJDL01fqAvmlUDkirqgWUQVTBi6UNTW0/BvaO8e1I7Hl4ikKlxrxBG6Xt8jVuRjRJXYASE3yEasmXU1zBE1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L75vPDB1; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-40f095f1036so2205775fac.1
        for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 09:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771695705; x=1772300505; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LGPpa6SVuEFIJ/dn1LGEGkHia75qj1cJtbEfLh7D/1I=;
        b=L75vPDB12c3a/cq39j0xukGU2hSv37/+QdCh8zQQiBrciaA/okMsYaUAC5Lc8HBMiV
         6s+59NdbLWPf2BFN2LKgxX1fLhvSeSPrWK/KRYdmHvm3XYTWimHWV3E4ZKc8nt03brzl
         692zbTdpJXmPWyGsRGeR8ZyAEakZTv56YeZTitz1LiyWvI1u9AFAVWSzE0bJI+MfTdon
         4GiBrVFS1T76vvtnprfcbDOMenWOmkvzhASjMINFK6ZHt2EQhEKYUpu9pzq4HMq4BojR
         LEivUzbFKvqy1OicJw3T4BH2MJmWXThlnyGxQz/BdA0UGIEWEmF+bjOK57R6MUu3Z4LJ
         ApWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771695705; x=1772300505;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LGPpa6SVuEFIJ/dn1LGEGkHia75qj1cJtbEfLh7D/1I=;
        b=XzoRRQdSX49hKIeisAIhVdvzHFAxcx28zTqxbrhjfl+a+o9dcm9uKJeyTCP3OQ4Jeh
         Z8bhCgH0W/i4NwCXmBNtCa3cromrfdphYkxsx/KL+Mk+wTC+kk8mebp12CNtwdi8uvZm
         RPUDxZyk7qGVNe0GpP5TZtezV72wC33R/C0vFbGXYCsAls4ULCESLpRuVOuF0gxv2aqt
         QzCLBmMZWYoMSrI/nMyY+gm19r6uUyVU2mhNMOGR0AmdtGrZhsPoRWJG0NMWXL7bxcHL
         0rwMYWwUs1hpASc1WPST909PVhV0pxu+q5pEyz/m5pn/gmQkNA4JqWlEcABufEHfy2n9
         ++ew==
X-Gm-Message-State: AOJu0YyXaXCegnCJjMUgvImWQPwsGiqGI7pMHo8PWlf9ZOSmBDpfsncP
	DuoF/v36Upw2VrTRynvr3wWRNajUOMBL/zZPUOLRfnBP267YMPYoEEaj
X-Gm-Gg: AZuq6aIi5mXVLJMjiU819wyA0OcDwCoF2q4WNjtC3hxxe932nLyHy6HVJJi3S5NFsfF
	yVBYQSBCc6jsHauMTjnWgMAn9yq5QKnKNqhfvDWiORFqN5eMt2Yc0lKZ6ggX8wzv13Y4mJ0cuTR
	JFJoSRfopcKr6f0K7JztDp/C5hs/+eLjSwECwC/MuzAW4eEiTb2Iqkh1uamaV8zHU7FwyX+1PcS
	SBTlMiRVkgnR7oVQA+afXgUVpw4fJx/lX70a9XP+/ZSFfvN4y72mAC8bG4g8q7sB548R0YcWfOB
	JouXHHp9eTdeabFDw9p3+ZxFLFDXHyd2I+lSO2jW6UQ9AMI/BvK/2eMoSjJIGqopjmG8W2Aowie
	VHyNObvc831zZU4PXD0aino9HbrnTR1G5QEqi6dy35wAKnNwrOWBaqozxFpJ7w8wovSdV53jVHg
	JUjBCOQLSiZnynZrEonRd4TvU=
X-Received: by 2002:a4a:ee10:0:b0:679:1a3:ba08 with SMTP id 006d021491bc7-679c46c8505mr2020221eaf.43.1771695705253;
        Sat, 21 Feb 2026 09:41:45 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-679c56ef78bsm2255112eaf.14.2026.02.21.09.41.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Feb 2026 09:41:44 -0800 (PST)
Date: Sat, 21 Feb 2026 11:41:42 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <20260221174142.5e6xufffrawahxsp@illithid>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z6pwlnxuswdtnncx"
Content-Disposition: inline
In-Reply-To: <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5169-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4019216D685
X-Rspamd-Action: no action


--z6pwlnxuswdtnncx
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
MIME-Version: 1.0

Hi Alex,

At 2026-02-21T16:02:52+0100, Alejandro Colomar wrote:
> +.SH RETURN VALUE
> +.IR s+strlen(s) .

Too cute, in my opinion.  Use English.  :)

C novices struggle with pointer arithmetic as it is.  (Even non-novices
can, when working with exotic architectures with multiple memory models
like the x86's historical--and thankfully near-forgotten--`near` and
`far`.  Pointer arithmetic in the former can, if my vague recollection
is correct, do surprising stuff like wrap around a 64 KiB memory segment
without causing a fault.)

I assume that the string library reforms you're pursuing are intended in
part to be adopted by newcomers to C.  Avoiding cleverness when
presenting new interfaces can make them less scary.

Regards,
Branden

--z6pwlnxuswdtnncx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmmZ7k8ACgkQ0Z6cfXEm
bc4p5Q/7BvETCgRtKszUWsUHGpLUz9t/2DK8s1Y4wD/IMVmlYlhCd+9LFzYd6Y6a
kHxdZsJZ+dKudXCEYZchkSzual9kAeTT+t4uGi1GHvhJXwqIYjbR0TNhuTaI0q+E
A+KnkJmQt9MttqSGv3FAA0qI9KaKaSm/ZAIxAnfOqvyfV9g46gfMxsIJQUtyNSGc
3IKPmJM6dbkwLWxTH8LLseDMs6EfVX6/hULx1iHsUjTv/K5owbS8bZRQbxwXk1zo
k2zg+y9qya6c5esfWWtlHk0NfVjaxRgfyfMsuQNLywWOQyGfLzrXyNP3I1nF98tj
1yBCH0jLcbOsxudEwYRFGoCloydXooE0Of9ZxOqmQkAZFAhF2DQ4nqW/QHEhmmoD
z9SYYcDudN1PerAulWWHGDPt58ixnttuk3YShY61JsxS9wL/srci/9DpE4Zr+Hlk
xZu0SOuNfk9yd/BbJse+lBThvmTt9pdvdvNTFw5aDAwy+idu4zr8SVZxd/GPyVxK
9fVA7mFr2Xicve6w3q2c139aZv4WNdd6RalZ+e81j8Z0ZxxbKkmI8ZNhdiDolUP8
x1HPmYXNu87zFo1gUZrkV2HLOiFO2WB+uOoN8CxKRqVUqFxX6BfyvXETlX2jmP6o
4naZNI3e1QRQoxdKfG+5AmJZo+6cCsR4JmuWoSs0ZNatoMO8qfo=
=FXg5
-----END PGP SIGNATURE-----

--z6pwlnxuswdtnncx--

