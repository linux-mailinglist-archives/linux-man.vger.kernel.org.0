Return-Path: <linux-man+bounces-5369-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EsENaH56GnLSQIAu9opvQ
	(envelope-from <linux-man+bounces-5369-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 18:38:57 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0825448C7A
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 18:38:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4770E30013BB
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 16:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E19E937F8DC;
	Wed, 22 Apr 2026 16:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LT8wJrZK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F96A37DEAA
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 16:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776875769; cv=none; b=uVAxb0l5zo87xBrfNJJj/cCEgGYwrFBgmS00rnRtqxIBrvLYZI94Jo5UBwzao/KpuT2BwwHlmpj2NP/oP/vMdDxBA+dr9jSp0lGecsjvwH0w4bP1YiO/pCXFhD5a131d91UvCz4PjF7SHUIYMJZ7Kw7B1nCBxze1lrF3u87L60g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776875769; c=relaxed/simple;
	bh=P5PLyCBNpv3/YSsZuwwl8ytvlSOGKplLtQ+3Rw02oKI=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fXGXAFHUEdSmDHLEkyY2Y/ooc/55CxqW2J/UbwSVnBX3uIzy+ykTWIO/EYmL5UTDZuNjoA7STRbr5PFlBkmg5MvXbgJe1cbNfCJiUJimxANyWDet9Y30+qk7Fv+rF5Xt98CBgp2oet9auwMgPPFQsaEvFf8jjCPL8x8nnoM9YkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LT8wJrZK; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-479d9b155deso1215058b6e.3
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 09:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776875766; x=1777480566; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PkHCZ81Wu88nal09ZavbyEi3y3XjUJGz06tMDK0xZGw=;
        b=LT8wJrZKlakwkCQ69AE6khY5c5lr/jT0ZUidPnuc0VEfundpdo6YLUC6FC2y/yOjAX
         tUffV9ZeqIbKkEY0FreeFwOgML/bf/HICpuAVl8r7qZroSJVnlLzQl26XRH1r0QG+beB
         UI/OPR/qxfvb4o3N1oDQ5AsXZE08ldBua0GLDGeVA2tgiZMsfQTFBwbsjPq07uhd3uXc
         6XhfvLc1yHyKULNpVO1v1yXwysc8t0oqA2BK9jcONrZQgwGkNIheDd8iCOztnBWrf2TO
         qnl1ugx2TBhT8HiRrF+uppxcti26V5dVYKS3gKEHRAaVWb9yhM8PvxVeQoVBXERQU9xk
         2lFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776875766; x=1777480566;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PkHCZ81Wu88nal09ZavbyEi3y3XjUJGz06tMDK0xZGw=;
        b=lP8TixqyDq00zolMwzghS1U1LvgaIybHrktvLiZsQC3r5elpeDEmqi33G7BTc1og96
         ivaArhQPdudrPrE7Ubol+gp4RJGR4fGz36e2V9WaL+ozv9bRxCM9CEgGG7robQB4l3sj
         3osw+P7Y6gTGA9MtSA2QSramO6oIYEBXjSTxefjWCzoaTFDHjBgMHrPUb415xGyImMyg
         Z8UUO0JVoIa7oqdBsz4Fn+VFPwGXnBhEnnh5wlLaHF67bqYEDUIHpRN2d0/Q8vDXBzmm
         fPWJTIpVhdE/CA0F0C57aQ+otKbL5f42RmSKr+q/pork0RENJwjDOAFfcWEv2vsWlawn
         NXFw==
X-Forwarded-Encrypted: i=1; AFNElJ/12PAVQjBGo03PIhGvdad1GDGUfeE9lUH2e6C+5XeKi6dosvlb3/SCnvEloXOlv35qx4uaBO7KTtI=@vger.kernel.org
X-Gm-Message-State: AOJu0YyjN5/XA5jV8M/CkI/JddcCJk2u60hCO9YEU4dW1JvZgjFkT25W
	vjCRmEd29aqeCTgzJSNuKfGmpGoG7w7Q4l6DaKqCQkzlJc6I/iyRxxjRlcQLCg==
X-Gm-Gg: AeBDietsyZwHltnCs/YwYfj7O3h5YGnDKE4RlnbpltHKvcP3nD51yFOTyyS69WEBBGy
	OvnVd/SGFgMyDt0rtZ/hkaTJt/eXnfYHSr4DJbw6KFo+1F6HRPtNmb9zoXOQTGKbqDqsnpkVcl0
	3T+K/JujIbwnD8QgDuXXQHQEvy4Th/tpgqVCFBOatX+Bn9+gTkgfNzCWoVtzemMeuiRINN4LsqK
	ZlIjyHTHfka09AGPeq2zkOJYAbFUKK/wXAkC+Ui1GPL2dFBFCm+T8uwJI0s4pIFuhTER1GKQdic
	LCcKiQFLkRhl74N1lRrF9MoE2A5euwCkFqto/qZ/x/1c1eXlzhuUwHyuIhaSR27+K1BXZ6uQLWl
	G3n06sSfAu12AV4wicQ88vNcQC/jzZW0+fyTMUHKYW9wYyjuaq/zDL3v75iQ9CD91tET8YkgeL9
	sTKV9N6WG/Z/wQQFx5qmpBRu0=
X-Received: by 2002:a05:6808:14c2:b0:479:fe0e:e83e with SMTP id 5614622812f47-479fe0ef603mr2198753b6e.14.1776875766340;
        Wed, 22 Apr 2026 09:36:06 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-479fa22d792sm2640022b6e.1.2026.04.22.09.36.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 09:36:05 -0700 (PDT)
Date: Wed, 22 Apr 2026 11:36:03 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <20260422163603.xvgyqulnl7knxeem@illithid>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
 <aejvcpOKmAxCnJQV@devuan>
 <20260423000434.G45a2@cchengyang.duckdns.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4l6nqomcqe4rqrpz"
Content-Disposition: inline
In-Reply-To: <20260423000434.G45a2@cchengyang.duckdns.org>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5369-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D0825448C7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--4l6nqomcqe4rqrpz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
MIME-Version: 1.0

[stripping distribution down to just the linux-man list and Alex]

At 2026-04-23T00:13:57+0800, Cheng-Yang Chou wrote:
> On Wed, Apr 22, 2026 at 06:02:49PM +0200, Alejandro Colomar wrote:
> > > @@ -218,8 +223,10 @@ This field specifies the nice value to be set wh=
en specifying
> > >  .I sched_policy
> > >  as
> > >  .B SCHED_OTHER
> > > +,
> >=20
> > What's the reason for this weird formatting of the source code?  At
> > this point I wonder if this was generated by AI.
>=20
> Yes, I used AI for the formatting, which I should disclose it, hence
> the weird layout.

I don't know, man, I stuck a comma on a line by itself in a man page
just the other day.  ;-)

https://lists.gnu.org/archive/html/groff-commit/2026-04/msg00282.html

+We prefix macro names with
+_ifstyle()dnl
+a dot
+.RB ( . ),
+_endif()dnl
+the default
+.I roff
+control character\c
+_ifstyle()dnl
+,
+_endif()dnl
+_ifnotstyle()dnl
+\&
+_endif()dnl
+in summaries and synopses.

(Lest anyone hyperventilate, that's not a man(7) document per se, but an
m4(1) document that _generates_ a man(7) document.)

Regards,
Branden

--4l6nqomcqe4rqrpz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmno+OoACgkQ0Z6cfXEm
bc7eDhAArb01MMLM/F9V84urB71UBtzNEkDKS6naBhN5mhEuff+jrqSVkbk6LJ3l
V0h8LsTRrEVMnjQPG4CZQ79Y5Ihhx5md/1LVZFmHkLEHLZmbD5VfwH/P6eX27HYt
LUPm9x2rXDtqsRIKjoWlRnOrc1YC+Vqo2WZn8ayfC2ard1XO1N2K/rQI+TQc5KXz
QOf1HxLhc+AvFm4AOfgIiq0kTG9gwTc/y1Jkk7P/eksWmsaGAcrl+O0XualHj94z
x0/MosKndfWB2t4izOArtRaRcPhhuMoylvzR/iyH9lommWA7UB0vLRW5VRO+SmgR
jCwVsL0d/5uhMP+w6EwfkFQyQoMKKGxDPqbWY9J335AbkyzMYbIBKW6lbJdQ2cMu
9hmxx9sxSKVLSJUiWthTi8gffzAqlXj8vhWNNwQElsqDGmRDnhcT23gyPLABmSnQ
/U/qQtgxvnRvtewfbDTu6OzXl8gWqqHa3HXvLMVs9oOWXqouKVyvBGGn/Apzhcb8
RsFU3RCjCKLlayYi2WX3hToE7IpXtEJo3hwrS79g9DvXESOQAAcwtZecCSZmU+vB
2hYbshdLoCyHWsvwlx2Ocksb7wstvFhaKTdwfDabU9sdeL+P2kUF2eM9/oD8UG4s
/n6gt72CZwXKu5nGJcwlYrVNpz3KOaBTMmBildwzhlM1pBi+CYY=
=AtD4
-----END PGP SIGNATURE-----

--4l6nqomcqe4rqrpz--

