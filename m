Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9708B7887F1
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 14:57:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242796AbjHYM5O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 08:57:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244983AbjHYM4x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 08:56:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B523F2681
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 05:56:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4518E658B5
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 12:56:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E99B7C433C9;
        Fri, 25 Aug 2023 12:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692968189;
        bh=pm+Bdz7Dyl7cYyW6uiVwoL8Fi17rAU5E+vuxrWt8w1g=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=ABZR0RM1PWfS03oNySdijfSs+qV1TZVuPdvyP6RennI9jhqNE0uzIbOrLUquwKjwX
         RuPFdghETnQ6dv1xNJI8/xDLG737qhVUpRZ29RBbE8KSWatxPWSUN9Tj+XiQ7/N2lt
         wYQG7MDopYHoAk86707XEV01vng7TUGUPji4IoFn9dKes409Xfa2CTAuEV2XrV0DDE
         cnVQdGU6GVHaS/Ix0ovSG5yY41cwxfjYtjyTNQ1WOsGBlO33+9kIkjYnuf4jaA1XHa
         i3g7I/vvhzM2RR3XZDM3k9myZTTQYj+qIlOfcaJYxfj0JGQC7fJDCwxG4f2LGQ5ajC
         H9bZxugBst2JA==
Message-ID: <961d519a-78d3-25e3-dde8-75d5e0e2fe16@kernel.org>
Date:   Fri, 25 Aug 2023 14:56:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: groff in openSUSE
Content-Language: en-US
To:     Michael Vetter <jubalh@iodoru.org>
References: <4a600a55-a68c-1c7a-42cb-403e2f51aed0@kernel.org>
 <2c5edf3e-9e8a-fa7e-410b-8b805bd97461@iodoru.org>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <2c5edf3e-9e8a-fa7e-410b-8b805bd97461@iodoru.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Jw0qEDI0wHVdcTuhl9JZwbYM"
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Jw0qEDI0wHVdcTuhl9JZwbYM
Content-Type: multipart/mixed; boundary="------------fKZGIrOdsfK4qJGS9Cl4ia45";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Michael Vetter <jubalh@iodoru.org>
Cc: linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Message-ID: <961d519a-78d3-25e3-dde8-75d5e0e2fe16@kernel.org>
Subject: Re: groff in openSUSE
References: <4a600a55-a68c-1c7a-42cb-403e2f51aed0@kernel.org>
 <2c5edf3e-9e8a-fa7e-410b-8b805bd97461@iodoru.org>
In-Reply-To: <2c5edf3e-9e8a-fa7e-410b-8b805bd97461@iodoru.org>

--------------fKZGIrOdsfK4qJGS9Cl4ia45
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[CC +=3D linux-man@ & groff@, as we're discussing packaging of both]

Hi Michael!

On 2023-08-25 14:05, Michael Vetter wrote:
> Hi Alejandro!
>=20
>> Are you a SUSE maintainer?  I'd like to know who is the maintainer of
>> the groff(1) package in openSUSE.  They released a new version a coupl=
e
>> of months ago (the first release in several years), and SUSE seems to
>> be the only distro that hasn't yet even started packaging it.
>=20
> Yep! And thanks for letting me know.

:)

>=20
> Just for your curiousity:
>=20
> You can see the maintainers here:=20
> https://build.opensuse.org/package/users/M17N/groff from there you woul=
d=20
> have to click on the users to see their email.

Ahh, I tried many times to find that info without luck; I'm quite dumb
with clicky web UIs.

I now found this with a browser search, which points me at least to
someone who I could have contacted back then:

<https://build.opensuse.org/package/users/openSUSE:Current/groff-full>

> On openSUSE there exists=20
> the commandline tool `osc` which can give the information via `osc=20
> maintainer -e groff`.

Debian user here.  And I was too lazy to install a VM with openSUSE
just for that :)

>=20
> I messaged Antonio now.

Thanks!

> As far as I know he just became a maintainer=20
> recently. I think it is a good task for him to get more familar with th=
e=20
> project so I asked him to update groff. If he has any issues or no time=
=20
> then I will update the package myself next week.

Heh, he might.  It's a huge release, so he'll very likely stumble upon
it.  But it'll probably be interesting for him.  If you need help,
you can ask <groff@gnu.org>.  Branden, the current maintainer, is quite
friendly and responsive.

>=20
>> As a maintainer of the Linux man-pages, that's a small problem to me,
>> as my project has a dependency on groff, and I'm willing to upgrade th=
e
>> dep on the new 1.23.0 version of groff(1).  However, I'd like it to
>> have ample support by distros before doing it.
>=20
> After Antonio or I did the upgrade in the (so called) devel project it =

> will go through some reviews and then should land in our repos in a=20
> couple of days :-)

Nice!  :-)

>=20
> BTW:
>=20
> I'm not sure but maybe this is the Linux man-pages package that that we=
=20
> have:=20
> https://build.opensuse.org/package/view_file/Documentation/man-pages/ma=
n-pages.spec?expand=3D1

Yes, it's that one.  I am now the maintainer of the project, since a
couple of years ago the previous maintainer, Michael Kerrisk, retired
from it.

>=20
> I'm not sure whether it should, but I see that there is no groff=20
> dependency or usage in our package?

Hmm.  The dependency is probably indirect through man(1) (from man-db).
Debian has this problem, which I need to fix for the next release.  In
openSUSE, I don't even find the dependency on man(1), so it seems it is
working just because you happen to install man(1) and groff(1) or
mandoc(1) on every system, but the dependency is missing.

man(1) (from man-db) calls groff(1) internally to format the pages, as
man(1) is only a librarian, a program that finds the page in the system
and pipes it to groff(1) to actually format it.

An alternative system is mandoc, which provides in the same package
their own implementation of man(1), and the proper mandoc(1) program,
which can format man(7) pages without resorting to groff(1).  So the
dependency of the Linux man-pages is one of man-db & groff or mandoc.

I documented these dependencies recently in the ./INSTALL file in the
repository:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/INSTALL=
#n124>

Since our pages do need those systems for being formatted, I think it
would be good to specify them directly on our package.  Also, since
I'm going to require specific versions soon, independent of which
version man(1) requires, I think it's even more appropriate to specify
them directly.

> Do you use this upstream and we just=20
> use the result maybe?

We're already using groff-1.23.0 upstream for linting the project,
which BTW would be interesting if you'd like to add it to your package.
That is specified as Build-Depends (similar to the Debian meaning of
it).
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/INSTALL=
#n73>

I've prepared patches to use that linting in the Debian packaging.
<https://salsa.debian.org/debian/manpages/-/merge_requests/4>
<https://salsa.debian.org/debian/manpages/-/merge_requests/4/diffs?commit=
_id=3D87a8494a0d8349c79eaf29956646ae5cb8d64980>
<https://salsa.debian.org/debian/manpages/-/merge_requests/4/diffs?commit=
_id=3Ddb036e589538c04373b7b23d95f5e54bb66efa92>
<https://salsa.debian.org/debian/manpages/-/merge_requests/4/diffs?commit=
_id=3D8581562446ed73d3318ae13c95d4100eb6ed6cc5>
Maybe you can add something similar for openSUSE.

For formatting the pages, however, we only require groff (or mandoc),
at any version.

Here goes some review of your package:

> # remove .so link to bzero.3, conflicts with libbsd
> rm man3/explicit_bzero.3

Do you move libbsd pages to section 3?  Upstream libbsd has them in
3bsd precisely to avoid those conflicts.

> # already in bpftool package
> rm man7/bpf-helpers.7

Where does that package get that page from?  Is it from the Linux
man-pages upstream?  If not, where does it come from?  Just curious.

> # conflicts with mandoc
> mkdir man7mp
> mv man7/man.7 man7mp/man.7mp

Since you use man-db as your primary man(1) implementation --or I
thought you do--, having man(7) provided by mandoc makes no sense.
You should have groff's groff_man(7) be your man(7) --maybe via a
link page (.so), or via a symlink--.

BTW, we're in the process of removing man(7) provided by the Linux
man-pages project, so that groff_man(7) becomes the new king, as
it deserves.

Cheers,

Alex

>=20
> Best,
>=20
> Michael
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------fKZGIrOdsfK4qJGS9Cl4ia45--

--------------Jw0qEDI0wHVdcTuhl9JZwbYM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTopO8ACgkQnowa+77/
2zJ6KBAAjVztGPq0KvdPHATYCeQcNrPuA4xXIYlezoMMXDSWciQKvG5f61Lozbhm
6baRBUG6xzUvpNAzTlhwrhWGJOTlsY8L4mj0PFWwSxZ9MU+BJQsS2IsyYMRtKtnf
giXeeJwSWB9HmrX7H7Iz5sxYNVGcsMPEZFPaDQRrzOO44DuzWGt/tOgzv86J3jBn
kaDCbww/dN2JOEKVSUKVRmI/DQHAJG3sGHe4VO6oEQ8ha/ILbJ2DjHWDc0ntF/jH
gifbsbDRmFHVd2MbrhlGCT1/xnnLYeQOQ80HgyvWQA/PkhAdldSF4qGRH4oxdcvH
CBFnBrunlu3BRUXgLb1Afpyawzdku+u9GCT/ZPdiRJoHMyXR9CiHDmEYs6AdKPHG
4AajztoCZf81/4l4LkzG0pNe968Jo1w0S8hq4G8o+Pl7yojKNe30HhvkkBHrV3Tn
E47jXtlcddn7Bu4f/TcvWzBiytJTjGDUgcoY0wuN4AqqzdRs925PfMoFGfTrpXTG
/cbqPj7CkCHjWmOU4A3+ZuwW3md6QGT0QqkyzE1dS2QPv2sPKu3i8rI95o+VECrH
xSkW5MfSUnfZt4Wg7urJgp9y6bR/15DwiSBdpWyHsNbC6mwNjoywPIwLb6q3Rkuw
tJ/rmL927qTaWE00QrIfrv7eHZn2cPFtYPDPlJGIBKwwvwvDjOo=
=zRNH
-----END PGP SIGNATURE-----

--------------Jw0qEDI0wHVdcTuhl9JZwbYM--
