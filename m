Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BDA7300935
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 18:05:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728684AbhAVRDw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 12:03:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728812AbhAVRDS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 12:03:18 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49925C061786
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 09:02:25 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id kx7so4147482pjb.2
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 09:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=R10DStvqCBWKfYOmAjTWWNMrfKSgC1i9cRo+OSlO94Q=;
        b=vS6xYrk8gP1+FHdgZNHBPZMk/OJ7InCrz8rKALpUE2aMsMTrK+u7ssokfZ7am1/I9h
         AvM/R7AEU2iTNc+dmWHK0Cm590+2goh4Jb2nKiqPigfpFX0DM3fJeyvcfB9BNgQqF8ZH
         EYGeZ2UgeOkfKJbeCNwPQvsiKGbUMSHDyBHfUShpptez5pENHI3jgRLfkBQs9O5o52bu
         DfeVcxPqwclmKaOMPPnaZpW1qbrsy6b2hIjMY3tamniXKDGbSX2j1d5ULjh7j/838AqO
         K9fglaWtpqx5m15p7pJ4EvszEDm23Qd4SbJNaJs48W1Sx9yK77leYgpbyNhnkbeQLW46
         B/Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=R10DStvqCBWKfYOmAjTWWNMrfKSgC1i9cRo+OSlO94Q=;
        b=jQWI4G87clPauOgmLnfIYHd2iRaSgvcgVlyJyCrSnTAXEJHoStH/5J2Y6O86b1UQGt
         +iwUkGkg0/1+dt5nR9s/Cv5KBNSvhy2QebAlfvpTt8YAVXe2+5wlCbDSqoFTzhRHNbah
         sEFUkUZykmHANAdYu4IK8oXr0BYxY96bNuJPBR+CD23UwSVdUNLa4Jj94es0dQ2mxFD4
         PRfyNgjQl5/k3e454OwdXEtCr8Z8ZczZ3B1AGEBeWZoR3IfkuAgmcd2U7JWho8wgK/Sn
         a8z5OwuFVpin4sNMeoQ0iA+2tvCxxJoQ03j1f+KtW9I4G0pWFwXI7VRZaaki01rOvK7G
         L2Ng==
X-Gm-Message-State: AOAM5315gzI8qu/Me4X1F3HX0vvmliVPKtXNsKpWX58cifH+pDMh/nJw
        Cl6lXPxuZqda/Qp8HFls7t8=
X-Google-Smtp-Source: ABdhPJxJImjgW7dC0LNkkm5afiWkvh+nIQ35mvbUTM6pebn2LTpPXOqKlTsbvxtq8mUvAPyxs0wtgQ==
X-Received: by 2002:a17:90a:5d13:: with SMTP id s19mr794646pji.110.1611334944785;
        Fri, 22 Jan 2021 09:02:24 -0800 (PST)
Received: from localhost.localdomain ([1.144.185.233])
        by smtp.gmail.com with ESMTPSA id b7sm9192219pff.96.2021.01.22.09.02.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jan 2021 09:02:24 -0800 (PST)
Date:   Sat, 23 Jan 2021 04:02:19 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Deri <deri@chuzzlewit.myzen.co.uk>
Cc:     groff@gnu.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Escaping hyphens ("real" minus signs in groff)
Message-ID: <20210122170217.kndzit52utaoisfa@localhost.localdomain>
References: <CAKgNAkihGY5W178QYHcRvs0f0E4HMQdWir9KOJsEzVF=1wi-sQ@mail.gmail.com>
 <a1af3f5c-f3e9-4bf3-cad5-389571c45d27@gmail.com>
 <20210122035558.ny2u3ddel2mltrve@localhost.localdomain>
 <1730363.VJsQCkzT93@pip>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pyofx66jsndwngxz"
Content-Disposition: inline
In-Reply-To: <1730363.VJsQCkzT93@pip>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pyofx66jsndwngxz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Deri!

At 2021-01-22T16:27:38+0000, Deri wrote:
> On Friday, 22 January 2021 03:56:00 GMT G. Branden Robinson wrote:
> > The gap between aspiration and implementation.  I don't think the
> > "copy-and-paste from PDF to terminal window" matter is completely
> > sorted out yet.
>=20
> Hi Branden,
>=20
> I can't seem to make this not work. In my last email I explained how a
> default ucmap is installed in the pdfs produced by gropdf, so assuming
> the pdf viewer supports the pdf standard it should not require a
> change to the man macros you favour. I have tested using 'xpdf' as the
> viewer which pastes:-
>=20
> - =E2=88=92 =EF=AC=81	<=3D=3D without ucmap
> - - fi	<=3D=3D with ucmap
>=20
> Of course, if the pdf is produced by using grops and ghostscript the
> result will be the same as using gropdf with no ucmap, i.e. '-' and
> '\-' will be pasted as different characters.

You're right!  It works for me with both evince (my usual viewer) and
xpdf as it does for you.  I had had a problem with PDF man pages in the
past but couldn't remember clearly what it was, and had thought it was
this.

But I was able to copy-and-paste and run the "ls -l" from the attached
trivial man page from the PDF without trouble:

$ groff -Tpdf -man hyphen-minus.man > hm.pdf
$ evince hm.pdf

This is actually a relief to me.  I feared that special-casing the \-
would become a camel's nose that would support the recent lobbying
effort for permanent degradation of traditional *roff glyphs to ASCII
"just for man pages".

Regards,
Branden

--pyofx66jsndwngxz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmALBRAACgkQ0Z6cfXEm
bc749w/+J52cEUcJky/nR2KT943xOSb7uwgMFDzBUrLe2jm8e7NW0fGyQvLrKqqW
lhuh8vkP0nSxhjAUzTWU5nlrKed24YbKTLHwspRjXmRP5VHxT0VK1cPFU1kkDS0J
dErObUEqNgzfkuVdWYyLHGLbKngCPVJt54k6A7BnuSJWrGraGROEkH/IRuaHm6fi
ZVCk+Sdrw5R+zA0tocbxCVeQvbm4noa5Jc+ws1LrzielKfB2vEkswyuN1mCbwvyr
BN2qXl4TpxFwNWiq6j+vrCYJ5f+h0lVwUHWpj+9/tcqGcxXOy08htiaKeinVEt8S
8DWC7J4oK2S4mGkPqojShSjT5xpHrX42l8+vQLktj4cMHU/QtPQ37WSZMrOSnvsS
njy5zhWHqsYbBCCjvaDbjOaoeNeA7ma9IIq7O8+aqwcdVDx00U/qaSQkE7VnEfTO
/0SbVn6hx6nw4XOJxVmGqsMJJPXCjngflTu5B2s8U6kcG/IHA+SJ+oUSUbcvjCik
UxRyxXNOyQh15PE5CVlD5B8w/sQ8NqXTRcG19psj7ZbU/EcBBXvGb9g/s8DSReap
Ew2UKhowpSXRfRBRQTuUFKOtIC5JRthVlGoaAWY2srW4PVDHlHDT0G1P3oLlYC7T
Zy0dQdq8GgGfUCKOPNnMjR/aPkIIpsvCtONcb8l3HUl3XONR4lw=
=bfQ1
-----END PGP SIGNATURE-----

--pyofx66jsndwngxz--
