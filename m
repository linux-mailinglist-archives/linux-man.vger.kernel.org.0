Return-Path: <linux-man+bounces-4826-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C67ED3923B
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 03:33:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C2A93010E6E
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 02:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 881C57405A;
	Sun, 18 Jan 2026 02:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GrqKaaGb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03194A41
	for <linux-man@vger.kernel.org>; Sun, 18 Jan 2026 02:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768703610; cv=none; b=IoLvuPVCZ+kZ2HFu4VitacCty7IwVgVh5nUuo1ezBGrwcjyS/VRXgJG7MHuAma9warBPasWtDmYV8E1TiJGK5rk4kaleeUoQuvEOU5jqNb0riuJyUBRwsbAm5aUTGb6LX11gOEk4i7ap8brNG7zczW6xooc4vucFfMcEpwmMCa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768703610; c=relaxed/simple;
	bh=iatpaXdnYMh33Zy8PuNxUu19Ie6B6XOREEJaPJ5b6Gw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nhrge5ezC1RxskiqL7cdW0a/vPIMiuKoNAek9OUqjnlNR/c6SLny93QTM1yQdibSLyhFLAnFfowJAxJ3DhILZVfsaxGYQovAnO0XGG008q81mhOf2AJBY57bMQaBorAMe865DNHU5yZX069BEfrCG28IdI9NQFDocdGgVCITxT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GrqKaaGb; arc=none smtp.client-ip=74.125.224.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-64924c40e8eso336121d50.2
        for <linux-man@vger.kernel.org>; Sat, 17 Jan 2026 18:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768703608; x=1769308408; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Gsddd9Ik5k85wwyP5eQ26PxlFxTWUjWjK5FbbPtgD68=;
        b=GrqKaaGbYJN3KQsObN7o3CpoSPXfvrNUxnBYcgmOms741bGo3j8ufNMZCjEoNxCYHj
         yG2rH9QMzjzaY2JqppSWkJabQL8dcnrNivB9Aa5nJnvlkTJA6JQQT2TUz4avAJgL0nHg
         i5y3dUFPNJbtQywz/IIOghe6yQ0ZabvMMGr0FXRYONkqE71Ypc84wZHMzoNZZouBEH4B
         UD/aJlNiFM5NYGP/6yrSNnp+KvnOhLhUt/ZmyofkUqZboGyQIHq7un8O03ZsQjgh9ESZ
         SzxlUBtbYo0qgpzQHOPFmYlq2ccEWpWC+ZlLMlYoN/wZ3ic3MTpkp/Tbm9f/Z3hDs5Cq
         1v9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768703608; x=1769308408;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gsddd9Ik5k85wwyP5eQ26PxlFxTWUjWjK5FbbPtgD68=;
        b=Y3ZeKMzi54KQXGTRgj5d3J3B9HUhWiCl0X0bvA/K/1epvm9hpbb2WJ8Hk3xljhnYJ5
         hFKzRjVsk7Q3TWU9o6Ah/f243qMGLB2OWowBMYWFs/fwXbuerHk2e+7Y3/VL7fGg74oF
         aX4+0Ifnri3DZScb4ZP4xghpds1StV8/WGzkjwogQHEM+t7lbVwrfUN3m6YKg+5OF76W
         z6rY0zPUzNsjx8U1ZVAUaO+1J22PytxpyYxOVqOoxxH+DamXDhVE+HWCy/We0FUbxzNz
         D2itUgt2AMkwrejQPyuqd/7UCw7FTky9khVlkQDzxGRPZi52MC0x7pkI2v+i7uxIZupx
         FRfg==
X-Forwarded-Encrypted: i=1; AJvYcCVZm/99l2VRWWHcBkKQaHzW0RGUX/EL6TS/UBFBajct2csAEfM3JxTnnIHX6OkMRvuMgezbijJGun4=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+MRbsY3/jpgCPwI2yEDCVbeLSPnqMEfkb2gqdf4D9vcx75OVm
	3lAF3PkiazYLe53mim97LWqBa8nX6UACsDXok6Qr/mL7Fh7FHemGMJXK
X-Gm-Gg: AY/fxX5rS+VhUSWxDpY2rIP5SANLUQLnLG9/71Cj4WJkH9ps7GlPsuzJZT6nEtLR3AI
	exDwDg4cDqjow+rQkpYfHQn49SJ8SpcppaQNzD0LKdMyi+9hYfzt+AyQ8DdVyXxLSgDqf0za79w
	81ppriBlKPzz3/U/quo2EJLnZ5HGrncLfG88UQxHrF4WO+VgmSjzVCE9KdymFUXMft5WyM62bWg
	8oEvbgLtLL1Zp7IgaWasFBCh4khqOmasjJZaqz0vMbpmB34rsMJvYIFR1UGkHw1EylTSfEMqfDc
	/0YuxhXinnHis0VpizR7sMHEBPkarMSAs0PZ5QTMmBAdiNu/yiWayd/KZmy1beo4FmLnmBCaJK2
	4953OGHJqjSXGdDCgDad0RH1vz9dW9l5yBRDYrEYf9+3SQTKtsFMeUpJVcL4W8OBVHGGvYSKQmR
	1UTQ3OMyeup3E=
X-Received: by 2002:a05:690e:138b:b0:641:718:8a28 with SMTP id 956f58d0204a3-649176f1f2bmr5677240d50.40.1768703607858;
        Sat, 17 Jan 2026 18:33:27 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649170acda3sm3227120d50.15.2026.01.17.18.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jan 2026 18:33:25 -0800 (PST)
Date: Sat, 17 Jan 2026 20:33:23 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
	Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: Chronological order of BSD, SV, and POSIX.1
Message-ID: <20260118023323.5kztc554c5nz4gx5@illithid>
References: <aWtmabtT1dFTBCI8@McDaDebianPC>
 <aWuHPHi-08JB8UAS@devuan>
 <4dhcmq7vwbkiw5ik4nivsdli2pfb7d3xchchshgyz7cejw7sqk@tarta.nabijaczleweli.xyz>
 <aWvBujsIFzewikif@devuan>
 <fiwqsh3cg5js2iuouv62zep53ikwkokrb4exiwr4yufze3d7uj@tarta.nabijaczleweli.xyz>
 <aWwzhLaG_aehhWOG@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rdfpgzgiopbbg5br"
Content-Disposition: inline
In-Reply-To: <aWwzhLaG_aehhWOG@devuan>


--rdfpgzgiopbbg5br
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Chronological order of BSD, SV, and POSIX.1
MIME-Version: 1.0

Hi Alex,

At 2026-01-18T02:51:55+0100, Alejandro Colomar wrote:
> 	V1
> 	V2
> 	V3
> 	V4
> 	V5-- 1BSD					  /--- OpenBSD=09
> 	V6-----\ 2BSD				 /------ NetBSD
> 	V7---------\ 3BSD - 4BSD - 4.3BSD Lite --

Let me offer some corrections here, drawn partially from McKusick's
article "20 Years of Berkeley Unix".[1]  Sorry it's gonna make the lines
longer.

	V5-- 1BSD
	V6-----\ 2BSD ---- 2.8BSD ------ 2.11BSD		/--- OpenBSD
	V7	    \	  /		/		    /------ NetBSD
	32/V---------\ 3BSD - 4BSD - 4.3BSD - 4.4BSD-Lite --
	|						    \------ FreeBSD
	SysIII
	Unix/TS 4

The salient points being:

* Unix 32/V, being the port to the DEC VAX, was a huge deal and
  ultimately the common ancestor of _all_ AT&T and BSD Unices.  I won't
  say nobody ever developed Unix on any 16-bit platform besides the
  PDP-11 ever again, but I venture that any such efforts are now mostly
  obscure, and not impactful on the C or POSIX standards.  ("near" and
  "far" did not make it into ANSI C, for example, and if the x86
  couldn't manage that, no other chip was going to.)

* 2BSD, being a PDP-11-only product, kept the PDP-11 Unix kernel but
  refreshed its userspace from the {3,4}BSD mothership on an ongoing
  basis, where memory constraints permitted, and indeed 2.11BSD
  continues to be developed as of 2025^Wwhoops, scratch that, patch #499
  came out 3 days ago.[1]

* There was no 4.3BSD-Lite.  4.4BSD-Lite is what you mean.  Strictly,
  "4.4BSD-Lite Release 2" was the end of the road, after which the CSRG
  disbanded and several of its principals departed to BSDI where
  unimaginable riches awaited them.  Surely.

* Despite the previous, it's good to have 4.3BSD on the chart because it
  endured a very long time.  (To some frustration at the CSRG, but as I
  understand it, AT&T Corporate spent years making ever louder threats
  that they were going to sue the bejeezus out of Berkeley so that BSD
  Unix, which was so aggravatingly popular with all the cheap computer
  science labor spewing from the universities, quit creating headaches
  for its marketers and price-fixers.)  4.3BSD was so influential that
  much of it got folded back into SVr4, around the same time Sun
  Microsystems sold its soul (and a major stake of equity) to AT&T.

Regards,
Branden

[1] https://www.oreilly.com/openbook/opensources/book/kirkmck.html
[2] https://minnie.tuhs.org/TUHS/Archive/Distributions/UCB/2.11BSD/Patches/

--rdfpgzgiopbbg5br
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlsRmIACgkQ0Z6cfXEm
bc4OehAAr4zQfWj+XrWaF+eJBoqhMzUZ0JYYl53OPAMMI/bCCaSpnij7raWCYkZD
YvB/OArWcF9or3CbTxPphK+olexjMms3gNBfAmVIleI1VbaX4AdFI6Tg+asQos0N
As3+9AbORVxyll7mI/lvG976p8Y3EszBS4NWw/o5j+jJ8dgHq0Nl94jJDRigznCG
iUsz2xUPq+Vd2L1QrDoCXLmjXXtHOJBuCypLll2y5GmgBAhvgBBNTYPMAEiNn//7
9aj+L9pNyIevPoBreZPqUlxKxtBuOSTRgHwNtrjIwGfQEUESboeMBh6Fv8jpENDQ
GsrgK55wmG7IFOySMKsFJx+n3pDsShDol4hgWfB1pun+Crvzt70oiiWZLxn9cH+s
ltZ248qKWBmbcB/Rxc1nF9CtvVLO2DMs+ePfdKpuMagxLcRuN2kQLXx/1f9ieLPV
NsZKjOssqx1/73t8llDf+5gMkpcKPLQaEUVyNo/NFyW67YWvWKxNIsd88TyIV3J7
bkZdb+kmWMB1ri1wbfijuJIBPTac7pe3EmFls5BKpjFBGrNbIanqfqBJ6+FOTszL
NMjS5QDTFS2ou41e7/1Jn46YN2c7ZJZFE6gK/r8G1616EMCiD/5+KEA50Qi6ygVB
mM/T4sRW1VwvVXt60DfktzYd1eykDpOuacVv4EpJ7Jo/330kkaA=
=ROSI
-----END PGP SIGNATURE-----

--rdfpgzgiopbbg5br--

