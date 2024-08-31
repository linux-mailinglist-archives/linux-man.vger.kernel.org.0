Return-Path: <linux-man+bounces-1742-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E12C1967356
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 23:23:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4A3FDB21E0C
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 21:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C3182C87C;
	Sat, 31 Aug 2024 21:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eKfYRFdX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95C47111A8
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 21:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725139406; cv=none; b=bs/7/u518YQjEHFcPZNmgst5HIPWfStEfgKd0NwExRV6RIjuq3f1LBWsBpl8u8zohyGqjw9LeaRXUEAEtY2TtXswpoBeQ81KuttcyZiEOzjul1UesozZNAfadAyPuaUKLzBbCBjvdmqbpuYDetlBe6T98teNNCXhr2PvWzKuGEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725139406; c=relaxed/simple;
	bh=+uqwvVR1ufG9/RAJqox9x2w8Lhog3conaoafKNLm9Ek=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=TZQfTDQ7AKWXV8yzjZ0DCm4N3bq8Pset/b1q/+yIoyERvAbM4UDOp7DxvIzauDqW6/86CjoOIbU00M82QchfdZpWUMd9BfB7fNDy7EhMG0bXKDZAnTC1TnRcvjVnl4Hkydy3GPnawTmxohrNODNjDLRx3TdszHxmMsXZEV9uwak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eKfYRFdX; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-70f6732a16dso1611649a34.3
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 14:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725139403; x=1725744203; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VUupHrQsTtSISEhFbXHcIGCFeOdonu4fltOX1HNo1cc=;
        b=eKfYRFdXDUcq2M9+Oi2bOwYIQd6fOEgz3Wx2tjV6fCKpztO0RervuUyJlgnyRGOR2+
         EEPzuJgcWxUMDCiO3yeO4cAkArr3SN507EcysYa49wUCM9REo1ochqU9scnmFLHmyURj
         KjBbErSyn7M+NGrfyWVSc1NmInFBU0B5VjQ5rgWnBu3l2iHw9snCI/WWIrNDI/d250CN
         zIwCI9qKB9lbafBHQSEpZwr5G3xCTWHDfDLnYYWBB1eqM64uhkI5ibVcyAlMjE8Bm7OQ
         O6k+P+kHlWI+jVUGOBBpyT/H2D2ecreq/qkX1qm5WHKhYOMPEp3Zq+cNKrhPg45dTjUX
         F1oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725139403; x=1725744203;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VUupHrQsTtSISEhFbXHcIGCFeOdonu4fltOX1HNo1cc=;
        b=ZOmNo66V/9rIgkMudMmQ2TlezaJEIAuwoQ/7CkyUZtSFz6QhJZ3MKuFp83w/CnbdFe
         BrmdvcM/xJeyynU4U1O2cudwXnKOa6H05Jajszsx9b3QJRuYdzkALPNJbfbdkeX2NutY
         jkh0HvfN0z0XgJ3cMiMWhs/eo4I3Zn66oQAN3EsBwdOm1XpjFP8WgJhH2jYOrPNPGL4r
         /aie9/yJMN0kf8bxnpxj/L2igQA915lv5rBBAwCdAJRQwOasZNv2Hku/WaEYtOtJ2RKA
         nfWgh8i8hN3r0m/FnhbS7DkmoyzfPr5eAbouUXkN0qDXOe8soEMDKM+azGSDboXRelgL
         89jQ==
X-Gm-Message-State: AOJu0YwiTiLxSNOiWxi2tTkqlT7Bs+qJJLUNNCs0UOc7jJz8994hx+17
	bsPLRe4ZjIqm/azccTL15o+iOaX89rKjiqERSBpghDBTxT1x5Pu5
X-Google-Smtp-Source: AGHT+IHsRJWshzMXiYJqC2n2LXbV1Gt7cJ++e7JLoCgzpc5MkBfFDse1RDrlQinBXBpsH4Y/AGg65A==
X-Received: by 2002:a05:6830:3c86:b0:709:3b82:7680 with SMTP id 46e09a7af769-70f5c392f9amr11076543a34.19.1725139403389;
        Sat, 31 Aug 2024 14:23:23 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70f773e6a62sm348457a34.30.2024.08.31.14.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 14:23:22 -0700 (PDT)
Date: Sat, 31 Aug 2024 16:23:21 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
Message-ID: <20240831212321.qhuqc4g3iqdhuzqr@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ndyfgmsdh5naaquj"
Content-Disposition: inline
In-Reply-To: <m74zkuysq5s2jgqm3usgr3eoj3qanyewqu2nqwrwxghhm2rqgm@pezvgfvx5o7u>
 <ncv4wczkcxldrdy3doqzae44vsouevafkwwszx5uh4pulwwlnr@v4keelsw2v7o>
 <dg74uszi4ni5mtr2cxznqgdj57hgdh7pmzktiog6vyzvyttpep@r3qenmyr3cop>


--ndyfgmsdh5naaquj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
MIME-Version: 1.0

Hi Alex,

At 2024-08-31T22:43:04+0200, Alejandro Colomar wrote:
> On Sat, Aug 31, 2024 at 01:20:27PM GMT, G. Branden Robinson wrote:
[...]
> I guess \# doesn't appear in your actual script.  What I usually do to
> avoid problems with git(1) is to indent everything.

Reasonable in some circumstances, but I had a second problem--one of the
sed commands was very long, and I didn't to make an overlong line even
worse with indentation...

> > \# blocks to themselves use text blocks, and convert them to use man(7)
> > \# macros instead of troff(1) font selection escape sequences (which
> > \# cannot be done outside a text block).
> > /^\.\\"/b
> > /^\\fB[^\\]*\\fP([0-9][a-z]*).*T{/s/\\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)=
\(.*\)/T{\

=2E..thus.

> > diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
> > index c259901e7..89c4e7f10 100644
> > --- a/man/man2/syscalls.2
> > +++ b/man/man2/syscalls.2
> > @@ -139,8 +139,8 @@ .SS System call list
> >  .\" instructive about x86 specifics.
> >  .\"
> >  .TS
> > -Lb Lb Lb
> > -L2 L  Lx.
> > +Lb       Lb Lb
> > +Lw(26n)2 L  Lx.
>=20
> Ughh, I've applied it.

I expected you wouldn't like it, and, yes, it's ugly and not
future-proof,[1] but:

1.  It was really important to me to demonstrate that the large changes
    I was making diff-wise didn't regress the state of the rendered
    page.  Hence "dump-page.sh" and doing the cmp(1) comparison.

    When this page was converted to text blocks, the leftmost column
    shrank by (IIRC) 2 character cells.  I didn't want a corruption of
    text to hide amid that.

2.  The table format can be further changed after the (intrusive) `MR`
    migration; either restoring the previous or using the `x` column
    modifier in multiple columns, which I know GNU tbl supports and I
    think mandoc(1) does too.

3.  Indecision about what to do put a lag of a month in following up on
    my previous "migration preparation" attempt,[2][3] so I decided to
    just cut through the difficulty by applying the principle in the
    first point.

Regards,
Branden

[1] People who pray might want to pray that Linux system call names
    don't get _even longer_.

[2] https://lore.kernel.org/linux-man/20240727210927.d3iiwpbvkvtp2mzs@illit=
hid/

[3] ...although subscribers to the bug-groff and/or groff-commit lists
    can make some pretty shrewd guesses about what accounts for _most_
    of the delay.

--ndyfgmsdh5naaquj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbTicEACgkQ0Z6cfXEm
bc4lIA//VXthggRwgiUiRKCHPH2AlbaRr+vXQ6P5dTVuKLMdb0DwNbY1Nuyg5n31
1oLAtxiT0ldEjy8EkS0AqyUVQXvMuIX/ElKpOBiTeR7/kQiSkXmCWi/Lup2n3hzq
3Ug0C0Q/R/o6b1tw+Mhubgq2Cg7a17GauvrGTgLd9HpsE6zZi2u91EV0pChYGcmM
IaGyYD/kBKNK41QC+D9NSHgY8AsotZHN4RwTcrI9IQ92t5jaMn3wpnaQZ6u6g3lc
ueRXOWfczessi1tw2aHb1SBqstY5E9N1h9CbaIMiMZ7tU637Jws2aa4jNCOylQIv
N0B/GepAtbdSizmVOV/cSZXIt7cG+CfBpsldskBawgBrvcLK8HTmsCzz1WjYqDPD
N0KZFefXZNiAM3lZGidvmK/vAXqKEQyXojLk4tGvzOjinvKodi16aRc4QP3c+0bm
a71oUGS4j5nNSFZWS122Aqqk/AO9aVEkFTiWGcFCGCexcgel9jpb4b7CF/z+5kju
rzWTdenmGx0rsc27K8k2C93SMIuKfUlFBsIVASrdSuaRmxx25JCI7aANOnPwsAdH
7QSLzLcD1/Nh4c3aNqRUATFJq0GuOrsCU8tPCKbbjI85jAHqUi52djhvJ/4f1yjy
Mz7R5fgf0ZfVlvUlCMP/f3WPVmcKdPH1JZFP3Z3Kjcx8blcXT5s=
=yzwn
-----END PGP SIGNATURE-----

--ndyfgmsdh5naaquj--

