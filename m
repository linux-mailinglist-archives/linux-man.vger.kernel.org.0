Return-Path: <linux-man+bounces-3355-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3894BB1C737
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 16:01:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DBD0E18861B1
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 14:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7169273D94;
	Wed,  6 Aug 2025 14:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WRaq67Qx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068C11DED49
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 14:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754488891; cv=none; b=jY4fGSeiRhUD9sI7jaB0KQY0+zV7d7lAIldgbo4XOhIoTG/YGwkTEe8guRg36ZdGfVJBtO21bZXo1nHwpQh0oHLhiGFLiRnkJhZSkCcYdSCqcH8PA8d0+CDmNJmdUmW2QFontFozPs1APnH8H7ilIt0fxa2MlXBKOcjMNmr9Rsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754488891; c=relaxed/simple;
	bh=ivUo1dn4gKAbCsbhBzOvYmLdfWKnkzfaG8wYEofsY+k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bZS9jCrUURX2xtoW7OkUvlDJDodP7EWBb1GeLTtu6nBxSz1Eecoy0B6Gp/+xdRe3AU7L5QgPXDJvru7azGPz75vDWcP1I9RfmfzGitsUxY/imk708z6pLBiluUOl0P90ZoYh3uPFIvSFPaTW4ArQRuxiyx+KRiaROWuEjexanLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WRaq67Qx; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-71a27d982f1so64105487b3.2
        for <linux-man@vger.kernel.org>; Wed, 06 Aug 2025 07:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754488889; x=1755093689; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L0CM06vbtq4OlhoQNCtsH86eHBPa+uDeNmM9i+v4vYE=;
        b=WRaq67QxWaNQUXhkDP4b9+ZkGzQK3sRTOUE5z49xyWfzzhd3wl7aH35EA5yOcoUfgW
         T5cSOmZUPWHePluRTs7WFW82Wgn5nz+HjaWPKzKburaXpiP2eyJu+wEAKHLH4V023y8b
         LrNTVJ3DhtSft2xrZDnWP0zp4SJS3nSJZI2Z17Wt9K+vMw/yjBI/XeJO0JBc6vHDbiwH
         Bkpi1V/ZGiBGC1y7V64QtQFiAkw3EbUYFUityBCoQ4XaZQkPfH54VwSW0zDGfFgB30EY
         z+7SZVTIxHRmm1fDtp5zm7JH3+aNzI6H4ah91TvGa+lA1iiaSdBqQoEWmtXNYc0MWEhk
         URcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754488889; x=1755093689;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L0CM06vbtq4OlhoQNCtsH86eHBPa+uDeNmM9i+v4vYE=;
        b=hpIxfZdfC8ZwowaDhKp5atXgr/JQW6kQN3AN9uWjm8FriOolZ/j1OvwRbaNqPVmRHQ
         0xmlPkIimnj+xEFQuhv0/KbdxjfLgKxtQ/kwhmg3+7q/dTyKrLWSSPqEdaiz5gfTHPDL
         /cgoUADdtPjvl7E3J58g4psoFZSzkH1FsRfpNXXiddM5J5bWxT4NdRIp3ygdi4c2MKKy
         AxucfIIK4/eUqc3I21AYX9yJxILHd4dPLZeU2qSfVWNA5+wOu98+KQ5MP07qME9Ke/EM
         92S7Nz5lZcXuPQQxu2QYMzg5KbVFQ2RXjoX9LCgg3HdG9vCDZ9RoSzpKeX0wCyB8FU6C
         fWFg==
X-Forwarded-Encrypted: i=1; AJvYcCUdvGSSHO+u6dCkfVIBGQWLVHl2q+aO1MYtyAZq91sWnbfPa+7Up3bQyXorUdOmaAwwKpD9jUdjwRc=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx7xE5vQt+aw3ioX8IoET+NnHnHKWu8H+J+QiSN711xo5jN0N6
	WDo/rOU+GMvEEReB1WxOHw9pvN+kxhOfcODh8DiaaUJX909ZDzvjzVciE6KTJ1IL
X-Gm-Gg: ASbGncvxQHCDDCCCKRk2oPcBSMPhAKgeHsafxJN48cvBrUz+Eu8J5maF3tj7dIfWGTd
	jWsNAsAFDOl9KZPASZvhLbynQ+rgps8neB/COQmosig3USrP87OJEZALQ+j7kaAQE+gq9Cc+39r
	r1/ptqN36JBsQ9U6SrMDGz5DEj5HMtKf5wXEtFzFLWjCwdx1eHYTcAWFdFG5RbPJh+xVnNYrNgL
	c8GgcGhYfiD9SzZBK2u3ys7KhTLrPGXUQ2PPfEsnrOyxXekD+w69++A6Lcuh4M5p6hVUIJt5nl7
	Tc4UbQAaUp4hNQC9mwNk1usNMoEaHkz3TvJaM3pZglGQw/cWkCiNvao+dk81U6aT1jkztc7Sc83
	yrAytxMbV2R5g
X-Google-Smtp-Source: AGHT+IErb8OvjRom5/nnNPqvrjw8pALlNJXc9DBEN8pQwANPdv0pOCxKrnG5xurQgo7ZFZSRCSuZ3A==
X-Received: by 2002:a05:690c:6409:b0:719:fcb7:1a79 with SMTP id 00721157ae682-71bc9957fe7mr41133367b3.36.1754488888364;
        Wed, 06 Aug 2025 07:01:28 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-71bd5a3bcd5sm1543127b3.66.2025.08.06.07.01.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 07:01:14 -0700 (PDT)
Date: Wed, 6 Aug 2025 09:01:12 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Aleksa Sarai <cyphar@cyphar.com>, Askar Safin <safinaskar@zohomail.com>,
	brauner@kernel.org, dhowells@redhat.com, jack@suse.cz,
	linux-man@vger.kernel.org, mtk.manpages@gmail.com,
	viro@zeniv.linux.org.uk
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
Message-ID: <20250806140112.wkdw7ksbiycimw7u@illithid>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fu6t5hyrlzz75fbf"
Content-Disposition: inline
In-Reply-To: <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>


--fu6t5hyrlzz75fbf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
MIME-Version: 1.0

Hi Alex,

At 2025-08-06T13:45:46+0200, Alejandro Colomar wrote:
> > > Is there any way of knowing how long an identifier can be before it's
> > > necessary to \%-ify it?
> >=20
> > TL;DR: five letters.[1]
[...]
> > Example:
> >=20
> > $ hyphen FSCONFIG_SET_PATH_EMPTY
> > FS=E2=80=90CON=E2=80=90FIG_SET_PATH_EMPTY
>=20
> While I see the usefulness, I'd find it cumbersome having to ask it
> about every identifier I'll be using.

I find myself having to ask relatively seldom.  Most of us can subitize
a word such that we discern whether its more than five letters.  And
erring by prefixing an (automatically) unhyphenable word of any length
does no harm to document correctness or rendering.

A more likely source of error is forgetting what *roff considers a word.

Here's an example that's bitten me.

[snip]
commit 2c5853ec5afbc4d58c320457083aa6eaa9d046e9
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Sat Jun 8 04:08:55 2024 -0500

    man/curs_inopts.3x: Fix markup error.

    Use of `\%` as a hyphenation suppressor _must_ come at the beginning of
    a word.

diff --git a/man/curs_inopts.3x b/man/curs_inopts.3x
index b69165d39..77b1777f4 100644
--- a/man/curs_inopts.3x
+++ b/man/curs_inopts.3x
@@ -562,9 +562,9 @@ .SH NOTES
 (\*(``cooked\*('') mode from raw and cbreak modes,
 respectively.
 Mixing
-.BR raw / \%noraw
+.BR \%raw / noraw
 calls with
-.BR cbreak / \%nocbreak
+.BR \%cbreak / nocbreak
 calls leads to terminal driver control states that are hard to predict
 or understand;
 doing so is not recommended.
[end snip]

McIlroy's original man(7) implementation could have been more helpful in
marking code literals.  On the other hand, linkers of the day tended to
restrict your externally visible symbols to six characters at most.

If I went to the Temple of Unix at Murray Hill, New Jersey to petition
the giant enthroned statue of Ken Thompson for divine aid, a booming
voice would laugh and mock the folly of mortals in selecting identifier
names that were longer than five characters in the first place.

That's enough for `creat`, `vflag`, and `swtch`...what more do you need?

:-|

> I personally never use it, unless I read the page and find some line
> break ugly.  And *never* use it in manual page references (BR), with the
> rationale being that we'll eventually replace them with MR, which does
> that for us.

I haven't forgotten about my series of sed scripts to rewrite (mainly)
syscalls(2).

> 	grotty:<standard input>:(<standard input>):9: warning: unrecognized X co=
mmand 'sgr 0' ignored
> 	grotty:<standard input>:(<standard input>):9: warning: unrecognized X co=
mmand 'sgr 0' ignored
>=20
> (BTW, Branden, why am I seeing those error messages recently?)

Did you change distributions recently?  The messages are an artifact of
a downstream patch to groff to force Teletype-style overstriking.  Over
the past two years, distributors that had it in have been taking it out.

https://git.alpinelinux.org/aports/commit/?id=3Dd6fe59c946066adef3e19e75f1e=
7caffda5a4cd1
https://gitlab.archlinux.org/archlinux/packaging/packages/groff/-/commit/02=
5a63b7e55a24c0a1892045819eef79fdc67873

https://metadata.ftp-master.debian.org/changelogs//main/g/groff/groff_1.23.=
0-9_changelog
  * Adopt upstream's use of SGR escape sequences for man/mdoc (LP: #610609).
    I turned these off for Debian in 2002 because pagers didn't cope well at
    the time, but it's now 21 years later and things have changed; SGR
    escape sequences resolve some ambiguity (see #963490) and are required
    for new features such as clickable hyperlinks.

Regards,
Branden

--fu6t5hyrlzz75fbf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmiTYCAACgkQ0Z6cfXEm
bc6AphAApj/QCtGXOlOIL6Qvh3baxIF8mP30v4IQKzbQakaqhhr+Oe1w8BBFiFiX
KKYRNSA0hjc5ON/wR/STdmVpFQofJOewo9X76ORdSqhvzmeVAqhzIWVWL/0aX5pC
rOId5c3QqHEDX+QvDjqFH8ik1puLK8TCRVmlDPDRxiQBrmJwl3EMrNA/kh7tlL8h
NvwgtciGCwSutZZem19AKLBWYkR8j2lcDS92Q59bTVbSHre3PLJJPU7+fCUSq/lP
uz3XfZG8VAdZwSvaJspuGf9ptraF3DPI6zSnVpQgu31c0H0gHhngxBBPqIi3km2/
a7jE26l1tifhgLqFAkxfBRJvZ2t4Jw+pUdoMJAMiQt7UWKCBJkhXUToQRozdfmAb
a4Z8pRAWTFmrgEmY5tIcgblwXdo25CB0bwUY6qnU+jw1xkD5IhkhVzs+/KABhnCF
64FSkjzeF1vOXxJoDVM34WdDF0I+MgAB5Y9xXOE48XQRA5ke361alzS49AATpuOd
0JdqB1k9+GHWuQZDvuyyHG9NPPUudlD3ynD91b8GQzkckr0fh2nx2lio4zLyJLmQ
7afNhJOaAf56LEthvYS/c6BbLabs9FWPEoHn5gwcnPx3zWFQf9U8m43RowOLaYr1
EEbqSC++lRnjLSZZ1yh8t8eaFBA25MzQsc/tqk3X9iqbVoLJzk8=
=hqcE
-----END PGP SIGNATURE-----

--fu6t5hyrlzz75fbf--

