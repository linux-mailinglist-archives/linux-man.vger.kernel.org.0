Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76FE6279E8F
	for <lists+linux-man@lfdr.de>; Sun, 27 Sep 2020 08:03:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729291AbgI0GD0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Sep 2020 02:03:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729125AbgI0GD0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Sep 2020 02:03:26 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D192C0613CE
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 23:03:26 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id mm21so1728011pjb.4
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 23:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vRjekx8giS74DsjBZUPlDWDU70dIxVbxFe91v6Jn/Qg=;
        b=NfbtYfG/l+6N96INWVqthvGD9wfDXG7P38nRePQyohvLoKDJbBwO+JGxJ+ysME3dCQ
         8GaN4/UPUrsMBwHCI8rjtlmhpWw/8sgF761vzO0n9xZ3wFi4BcJWPbb2M3nds++w2MmC
         IBqhNVR0N/Z6ejZ5l/tCArvr9mGpqNGTVKM2AIwpwipknBVlXIpVuPhYa/Q+XZC8tM1m
         4OrM3ci6tedZpHh2gwPnOzsfT/9+wXM4CbbtdtM6HoTbFfSBKC7ohdj3nMkgBk/2fca5
         kkVIX5YIXMu5LwHUmiWSTAkGUsy0d2rPuy9A0KyRtQtiOTneAGHmHMGgOkssqP7kyqeW
         qUqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vRjekx8giS74DsjBZUPlDWDU70dIxVbxFe91v6Jn/Qg=;
        b=l6I9TuGOx4hWy8/EVq1NUsszXV5Sy72SCEKteQl1G7nqWDLwuVsS3k66tu0vOKAANX
         6i1UjT7jb/tdQHGaEoP4knS3STGF7AFTM89jaNSJ1INnHXURhJjUeXfruKwoFpC13uyW
         AtmjfaAfA8PdX3ro/UZoTPWLS64Dzp+bU+FOnrcNjHmOrpkd7OXA61VU7vFWYU8JTfJK
         Cqz8ozJpZl8Tf3v/MbHC8dt/8qRWsqVh1WFEgkP19GBBYx6s1L9Y4idQEFXxN+Jo+KQP
         MKY6yqAed7AY58zeKf/Ntoj+ADEQEw3IUuSRjJETfcI1gHKfkZvAfp9Yihol5UzvNVkb
         o2nA==
X-Gm-Message-State: AOAM532/8JBX5/71pGdEy5DDGaZlZN+rawTavryRewsdo992BvMKPyCS
        QZ83HBViZfXJ8blCAZeaM9g=
X-Google-Smtp-Source: ABdhPJxCu0kx0W3rDpeE1zOVQNQpgQ9khgx+/aVFTmoVHnIqasOKS2bQdWMONg1t5N+afl/dfATBWA==
X-Received: by 2002:a17:90a:ee4f:: with SMTP id bu15mr4279196pjb.16.1601186605664;
        Sat, 26 Sep 2020 23:03:25 -0700 (PDT)
Received: from localhost.localdomain ([1.129.171.222])
        by smtp.gmail.com with ESMTPSA id a13sm6038244pgq.41.2020.09.26.23.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Sep 2020 23:03:25 -0700 (PDT)
Date:   Sun, 27 Sep 2020 16:03:21 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: man-pages.7: Simplify indentation of structure definitions,
 shell session logs, and so on
Message-ID: <20200927060319.lhyctckcnk6mtuas@localhost.localdomain>
References: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
 <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
 <f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com>
 <CAKgNAki7=AJ7p2AwPkf9+4AkYKdOL6b4D0NyVdwZzu-qHFvGiA@mail.gmail.com>
 <20200921141552.tpuhdxo24lc6e7dh@localhost.localdomain>
 <3814ebff-9ce7-ca81-25a7-427d0d255342@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="m6k7ciui23dm4knb"
Content-Disposition: inline
In-Reply-To: <3814ebff-9ce7-ca81-25a7-427d0d255342@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--m6k7ciui23dm4knb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-09-24T10:15:31+0200, Michael Kerrisk (man-pages) wrote:
> On 9/21/20 4:15 PM, G. Branden Robinson wrote:
[much snippage]
> > In my opinion, .in requests are never necessary in idiomatic,
> > well-written man pages and I'm happy to offer technical advice for
> > how to achieve the desired result without using them.
>=20
> So, I don't disagree with you. (And as ever, thank you for your
> detailed input.) The pattern I use above (with ".in +4n/.in" was a
> hack that I cam up with to get code blocks with a "suitable"
> indent. Your suggestion of ".RS 4/.RE" (in your patch, which I've
> quoted inline below), does seem better. I'm not averse to changing
> things. But, there is a related question. I use a similar hack in
> the SYNOPSIS of many pages (e.g., chmod.2), to undent a single
> line:
>=20
> [[
> .PP
> .in -4n
> Feature Test Macro Requirements for glibc (see
> .BR feature_test_macros (7)):
> .in
> .PP
> ]]
>=20
> Presumably, that could be replaced with ".RS -4/.RE", but is
> there something even better?

You're correct; .RS honors a negative indentation argument.  So you
could do this and I would consider it an improvement because it reduces
the number of lexemes that man page readers--human and machine
alike--have to comprehend.

I noticed something about "Feature Test Macro Requirements for glibc",
however...

Because of the negative indent, it's within one en of the indentation of
a subsection (.SS) heading; in fact it's an exact match on nroff devices
(terminals).  I'm guessing that wasn't an accident.  You're even already
title-casing it like a heading.

If you used .SS, it look much the same but end up in bold.

Admittedly the parenthetical man page cross-reference fits poorly with a
subsection heading, in part because the font style change would be
obscured.  However, I think that could be moved to the _end_ of the
synopsis with little loss.  It doesn't take seasoned readers of section
2 and 3 man-pages documents long to internalize this knowledge about
feature_test_macros(7), so repeating it by rote in the current
pseudo-heading may not be helping much.  Inexperienced readers need to
read closely anyway, and experienced ones already know this information.

I notice that in these feature test macro areas you're making heavy use
of .ad and .br requests, as well as the deprecated .PD macro to set the
inter-paragraph spacing to zero.  However, that's probably a digression
for another thread... :)

Regards,
Branden

--m6k7ciui23dm4knb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9wKx4ACgkQ0Z6cfXEm
bc6XJA/6A0CI6waZj/covPZDoQbCf9CZYblyLAZL8tfe1GOrvCJWgIusEnXKQjTd
SmRZo9blOw62RQTyjXPHmea8FfLRpXxu7/txNDoxnWCb5B7s6wWbR8eVOte3vLlH
nDnFTYIUbUFErqaqsqzh0cwZqfC2WGumf/0GrcwM12izaw6AOUEMNTN0oJYRkh5t
4UTdysb6jb39I5duzduh/wXBVdD2PiQLHMLtsnfUn54E1nWW0B/xblY/XB/XB9jF
wTBc9ovZfsYqH2TtCHonrn7t9pQ853P2HmLX0YajuH0ePwMe3NUOw73HnZOzKj9z
l+gpG0CAyhhTNSoYsYTHNWV3jGDOBnGuFjmSFa24agangR5DcByntCbxRSIQ6GBc
SbyTX3yNEyUO5mZ2FYrBhOxcDRKl9gTq4vkId4G+aEBt5hzb1f2swhjNxvKxzyNV
Nue8khmh3Xz4pEufsIFdcWtzD/WleFXOXDm4UhPrFuSZ0WKKBNuVhhkor0MBzppy
eGWX1tUHotwEjHUSV+0mqndD69WQMUPYLf6i+1pzsQM2M7g/NTnOlikAaBSHlNzw
ZnKgEfF1liELj5wQjN1T/9HAQ733v/iFmpfplJ3pUYmCvdBZ2ATeBpvw+jP2K7Xw
oRNwq0/lt9cVcQt5dL46AA4tUu6PgfRL4IL5p3hXULiqBpTXLm4=
=cfCx
-----END PGP SIGNATURE-----

--m6k7ciui23dm4knb--
