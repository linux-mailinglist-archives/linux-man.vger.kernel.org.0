Return-Path: <linux-man+bounces-5171-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IB7iL/0Pmmn+YAMAu9opvQ
	(envelope-from <linux-man+bounces-5171-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:05:17 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 230FE16DC64
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 21:05:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7B0D303DABD
	for <lists+linux-man@lfdr.de>; Sat, 21 Feb 2026 20:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7B17366059;
	Sat, 21 Feb 2026 20:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A5Ju/uPd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E64133C1A3
	for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 20:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771704314; cv=none; b=S18YZn9SJgoW178fUa0GdNirTE8qooiuGtPgdAx2FPObBWpbd3P+ZUgRp+cTAcfxTVGDOssiBE3iSkw1iQfK6Ov7x3XDRg431TkdajT7DWmpM3NuoeJbvttpIGr7/XchGaIFdzwrOJk+V/1LyrAtc+PHlu1PqW5RhbH2uvdwsU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771704314; c=relaxed/simple;
	bh=5pHkAzq5rntAeATla0n3ALOxhfb77t3hWhCxj7D2aec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z1s6Ju5haxc3a3Mm+Mx640vGC1MHFqKVIU4zK8iklLKNisxspYUZGONUSOE5l4k0pKEl0JXe06VUu5PQf5tO/0Wp6mdUwUYBzPz4nFqkZDeds7rkHABCAHRgecvVLoaZbtLSWteosq7oINGvSDaIhJV5tG3QEiHlykL9DqToFpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A5Ju/uPd; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7d195166b2cso2238918a34.3
        for <linux-man@vger.kernel.org>; Sat, 21 Feb 2026 12:05:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771704312; x=1772309112; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I1+0wFBDg/olNWVyPPpIVgXsw1aMcLoKqVl6zbUe1Qw=;
        b=A5Ju/uPdCAUlOA6XhCG2yYhOtSwqg+QydS1Zb51tuH9t0wQJacSql9JnQBpvhyQX1/
         VsOFK07EPzIuYW/1B3E5ULXYpnaFTEkjBtihGMQ4N5xKz2Wi2DWjQ8NbnN0yFWUA0Wmb
         OUv9YzZOIiu6doYS0TPE4Mk3cIfZ+dEPjOwm61WrFT/FMvoWxDkv5rPU7M/W6S+23CXz
         W4f7ku6vX88DKUhuxQ4+1YXGQs1s86t4im9vTAfT/fyNIuiDb+Uu4lE8Uia8J2us+4IX
         /lFA2sqpW9Wswgb6WUru2cV3gHEx+liY42zhC8xekCb+fUk9MVqJ2xM1U1YTJ2+vmt5V
         fjnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771704312; x=1772309112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I1+0wFBDg/olNWVyPPpIVgXsw1aMcLoKqVl6zbUe1Qw=;
        b=wvsoMr1MSmy2Mnc4CyeM/4dq3434rSNTJ4sdz29Cr1QkF85yBfi2dQ2Nm5tkqfQMTr
         D/HdZ4uHX4S1e69jLIgIXAi8VguNXxK0TVfbpgUM6HOlOelt5CThF1uqXhZx+rRsGLfp
         UaVR0aYA7lwixbqU+BXfFbSmMSJ70Vc1VWIRGJxG2KPV0aHJ//zEy7g2SCNPbt0Czmt7
         ylhL7fIFsjLb7BSIC4eI9YGebxN9PtfABM1+bDhOyA9/ZtG7Y/QuvpWvJ8V0nj0RIeqr
         3iKlxgHLt5ez8cq5ZIPxDhWRshTyigo6YXantV9GATs0Iie6VlxFVxnva0GxjINRj/1c
         L1Cw==
X-Gm-Message-State: AOJu0YzXqwKfGrYK4m+rCBd9kWIj8zEvK45PfCFRb9YJ/Q4qgHi2ai8a
	O3q+LnK48ZMNOjuXhUVB7UmT5MKA1pBfvA++DnBmTfCNcs50CNB4wSYkdBmxMA==
X-Gm-Gg: AZuq6aKVT3c7robPzhfXeVh7CJVmEGjKHGrGBYpyHXp0EDQ3c0/Q0HGx1YERC2t5gmR
	YTiAvEo3OxeMzYCrxv+AH8zm+BDI4fh3RMbLS8+9+m4ODuMk/L3Svrz7GsUP0AluoagNwrkkb/a
	LxowYHVVaNAoe5tRqk0VH7o/GwGicQhBymi21I8B03pwC7knrMs3GLlDItqnGshho4eXlT7/u7T
	PcPw5Oan9ZfMycWMSIUxoBb3ewmgZWNSbOtXpNJxd0fTX4Rj9DHYi8uVozayBP8YCCEZwBceWms
	8LB0GeCV15qZvJsGfglKJW9+j8OrVA8Bm3oS7aHZ66P01300WOiufqZ5j0JyaCkSMqQACq9c3v8
	ULQslFYlYsb+5kE1RJAS7Do9JR40a/4OmQT+J09G+zPgrcMA+9vcRLe3U46j9eseSKKxbhgw52u
	Ude+rNJvGfe0xo
X-Received: by 2002:a05:6808:2e47:b0:463:ab6f:6ba0 with SMTP id 5614622812f47-4644618b5cdmr2918997b6e.15.1771704312254;
        Sat, 21 Feb 2026 12:05:12 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4644a1b2570sm2021018b6e.17.2026.02.21.12.05.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Feb 2026 12:05:10 -0800 (PST)
Date: Sat, 21 Feb 2026 14:05:09 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <20260221200509.vxfbyyg7v2d2svhb@illithid>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
 <20260221174142.5e6xufffrawahxsp@illithid>
 <aZoMp9gUNpU6rGo4@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dqdxtdbckj6cfe34"
Content-Disposition: inline
In-Reply-To: <aZoMp9gUNpU6rGo4@devuan>
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
	TAGGED_FROM(0.00)[bounces-5171-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,gnu.org:url]
X-Rspamd-Queue-Id: 230FE16DC64
X-Rspamd-Action: no action


--dqdxtdbckj6cfe34
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
MIME-Version: 1.0

Hi Alex,

At 2026-02-21T20:56:05+0100, Alejandro Colomar wrote:
> On 2026-02-21T11:41:42-0600, G. Branden Robinson wrote:
> > At 2026-02-21T16:02:52+0100, Alejandro Colomar wrote:
> > > +.SH RETURN VALUE
> > > +.IR s+strlen(s) .
> >=20
> > Too cute, in my opinion.  Use English.  :)
>=20
> The thing is, at first I thought, am I going to repeat the same exact
> words as in the DESCRIPTION?
>=20
> DESCRIPTION
>      strnul() returns a pointer to the terminating null byte in the
>      string s.
>=20
> RETURN VALUE
>      strnul() returns a pointer to the terminating null byte in the
>      string s.
>=20
> I could remove the DESCRIPTION altogether...  What would you do?

Fair.  In this case, I'd probably just say...

See \[lq]DESCRIPTION\[rq] above.

I don't have much sympathy for hackers who complain that the "RETURN
VALUE" section didn't tell them what they needed to know when the
one-sentence "DESCRIPTION" _that they didn't read_ would have.

At a certain point, documentation writers have no defense from people
who refuse to read.

> I might as well write it as &s[strlen(s)] if pointer arithmetic is the
> confusing part.  :)

Hah!

> > I assume that the string library reforms you're pursuing are
> > intended in part to be adopted by newcomers to C.
>=20
> I intend old programmers to use it too.

Goooooood luck.  As we've seen, to take gets(3) away from some people
has required killing it off from the standard C library itself.

Some old programmers get really good.  Some just get old.

> I guess you're expecting a patch to groff once this is in a branch of
> gnulib you're using.  ;)

No, not expecting.  :)

Replacing our bespoke `strsave()` with `strdup()` seems like a higher
priority to me.

https://savannah.gnu.org/bugs/?66518

Regards,
Branden

--dqdxtdbckj6cfe34
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmmaD+0ACgkQ0Z6cfXEm
bc7qXxAAg9PHEc1SAgMov3M2Pe0Lg54pXZkPnXiwbgIwAfehmmAlTil8ertIgyZ6
usuYzX5QwquCuzZoETUFu34b9+2hGeCykO+ikOVtG0g8QdvJcQS5zJEP07vi6BPa
QoRuNZ96e8qmEJOzphfeJB0p6Br1w55xKaoqMSW1yBYzcN4cekXl7bgcFT/QaH6d
Zk9E4DhyBw6JGpcHAKfgRxWSZBV4/IuXJrCkwRzzNi1evLxHUHPisViPbNgI7bW5
ogAK9iqzhdgbNgtk3Ph6ZeanTDXgLElVDmTMdoRspM492OaI5gw+EMCVVs4qWicf
1M2kWkTd3rs+kYaldC/BAAVOjdLnOvcJMFAPUMUwl1Ob3rNc/b/KYes9wVy+QeE5
Ng8F0tKU6JwH4HgLfEo5Nm3jpIM7/92RmcWHjrqiiyGgU+YWYArh0VXrrLRkcxdh
xNdALVW3SyKfkW23vCcOMLzCyse4fO94uySJb8AXhbToP8NphsJ6gLWI9DapVgEB
TPhnw0eVHJEYsAtdzbLQPNjb7Q6R4GBAIczZYK5TAQ7zbFbmPzgHqdTjIJXHGTjT
xLl3ghU+2KMxzorTfwYaSDjebcmsCIa6jx75jmwm/sN3o8QYyAO+D5vTU+b1A8kJ
krNQw5X9u6S9/r+stFShdIokLYM2IZtbcAZ8NCgTmEeq7o9RZGc=
=j6Z5
-----END PGP SIGNATURE-----

--dqdxtdbckj6cfe34--

