Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A88324361C3
	for <lists+linux-man@lfdr.de>; Thu, 21 Oct 2021 14:37:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230425AbhJUMjR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Oct 2021 08:39:17 -0400
Received: from THBLACKELECTRIC.COM ([207.244.97.128]:38398 "EHLO lsw.cs1local"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230190AbhJUMjR (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 21 Oct 2021 08:39:17 -0400
Received: from [72.29.63.102] (helo=localhost)
        by lsw.cs1local with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <thb@b-tk.org>)
        id 1mdXJc-0003Ky-Kr
        for linux-man@vger.kernel.org; Thu, 21 Oct 2021 12:37:01 +0000
Received: from thb by localhost with local (Exim 4.94.2)
        (envelope-from <thb@b-tk.org>)
        id 1mdX2B-000141-JM; Thu, 21 Oct 2021 12:18:59 +0000
Date:   Thu, 21 Oct 2021 12:18:59 +0000
From:   "Thaddeus H. Black" <thb@debian.org>
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v3] filename.7: new manual page
Message-ID: <YXFas4WVwuROIDh+@b-tk.org>
References: <YWysyI6/sZtbQBBb@b-tk.org>
 <YW2hzL5vDfVZIAXY@b-tk.org>
 <87fssxgzt8.fsf@oldenburg.str.redhat.com>
 <YW6mcn0uMW3FWUu6@b-tk.org>
 <87lf2oxgh9.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="5trSh+SOwSNydqAs"
Content-Disposition: inline
In-Reply-To: <87lf2oxgh9.fsf@oldenburg.str.redhat.com>
X-Spam_score: -0.8
X-Spam_bar: /
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--5trSh+SOwSNydqAs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This long email asks for no one's close attention but Florian's.  Other
readers can skim the email or skip it, at their discretion.

On Wed, Oct 20, 2021 at 10:12:02AM +0200, Florian Weimer wrote:
> > > What does this mean?  I think only byte 0x2f is reserved.  The UTF-8
> > > comment is misleading.  A historic/overlong encoding of / in multiple
> > > UTF-8 bytes is *not* reserved.
> >
> > I had not known that UTF-8 had an alternate encoding for any ASCII
> > character.  Does it indeed have an alternate encoding?  If so, where
> > can I learn more?
>=20
> See the Security Considerations section in the RFC:
>=20
>   <https://datatracker.ietf.org/doc/html/rfc3629#section-10>
>=20
> Most file systems do not treat file names as UTF-8, so they do not
> perform any validation.

I see.  That RFC explains it well:  there exists no legal alternate
encoding, but rather several illegal encodings that, were they not
illegal, *would be* alternate encodings.  In the case of the solidus,
the legal encoding is 2F but the illegal encodings are

    C0 AF
    E0 80 AF
    F0 80 80 AF
    F8 80 80 80 AF
    FC 80 80 80 80 AF

This problem has nothing to do with Unicode but is merely an artifact
of UTF-8 -- and that's your point, isn't it?  Most filesystems do not
care about UTF-8, so they do not perform any validation.

In view of your advice, I should think about how to rewrite the relevant
prose so that it is neither [i] confusing to inexperienced users
nor [ii] inaccurate.

Question:  the filename(7) manual page ought to emphasize the
requirements of filesystems widely deployed for general-purpose use on
standard Linux installations.  As far as I know, exactly three such
filesystems exist:

    * ext4;
    * xfs;
    * btrfs.

Do any other such filesystems exist?

Comments:

1.  I have heard of reiserfs and reiser4 but have not heard of anyone
that actually uses them since about 15 years ago.

2.  There are also nfs, iso9660/joliet/rockridge, vfat, ntfs, cifs
and a few others.  These are network-oriented, archive-oriented,
special-purpose, foreign and/or compatibility-oriented filesystems.  If
the filename(7) manual page mentions the requirements of such
filesystems at all, it should mention them only briefly, in passing.
Otherwise, the page would become too confusing and grow too long.
(Also, I know too little about most of these extra filesystems to write
about them.)

3.  Happily, the three main filesystems -- ext4, xfs and btrfs -- all
have similar filename requirements as far as I know.


--5trSh+SOwSNydqAs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEM1APDU+pwMhnuF4GcGMmQy2FIrwFAmFxWq4ACgkQcGMmQy2F
Irx1QQ/9FdwHOt49CMtTlNTC6kVo2wm5lHjEhfw/6RBIPhxiTpb2DE3hrv0L7wD3
GPuXAJ3cnMd1J07zryij3TfzlaHqFEXlTWWRToRVUtK20P9B0IqaWLGPcPrs7sBf
vNESclc3sleG+VfmCOBGevO2or9oUMcze6+8sFNNWNRXCK4qZJJRZQK7Z42+B7vi
yo+JOykuYyti5HpkNs/O0FyyOZnWf47NeTomC3nFkgCIo32Ox34PGTDE4zXj8beO
HOn+HFTzwdwQnEJZNcAqhKiCmjBqVXWnuomXeCYcjB1yPGS6l+SOukWVNC47uFIk
bkQG//NrGmeLURKmj3Vh2f2YmEvrjovSX+P2e3PmyRa71CnekBC93F/qkYIcQnwx
sAvMdTOzfVXDrAS3rcFZZWB5HFhnXs47HsQitu8fLoIAIRqqP85x6VSZjkyORCjx
biD6q3x2xylXP3h4W9SPLlroUB1Yhz8govZOw7WlPfHwi3joQ5mgF89L2HPy4GGq
bP3lanMIMGV30FNG1ndrQYmJ21EoAe3XDf6G+VSpmBGp0V4wNYQnPFYb94hJHPUK
SyikZQF9A49N68tiIUpmgwWokz7oC2Y9OESoiCVK/mMPXFF+Kdb1pMhIg4Or3cx8
yUU+9JdgJ+FuAaQbbV+c3IorTHCKqcK8zzTy/WTwmyzCMYo+1lI=
=jdm2
-----END PGP SIGNATURE-----

--5trSh+SOwSNydqAs--
