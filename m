Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA4CC7DAA49
	for <lists+linux-man@lfdr.de>; Sun, 29 Oct 2023 02:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbjJ2Amo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Oct 2023 20:42:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjJ2Amn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Oct 2023 20:42:43 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1340CD3
        for <linux-man@vger.kernel.org>; Sat, 28 Oct 2023 17:42:41 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC23BC433C8;
        Sun, 29 Oct 2023 00:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698540160;
        bh=RrQ6m4MwAHo4zJjmRPDFjN96kdqBHoKbAcbXOCp/HDQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BPl5LJlXP1S16mc4IIy9R25NLA786uwiRx/uWtVIklo6MnPVmdWVXIOV6XrBRbnqm
         SmYWoj2CSVElzCk6CQxQtPlHV3Eh81OSCUtICl7WiaTRJI87cernox+fSDfE2hLvNI
         5wLGZLYpfMRa7sbXM7xE0pI8ghldhU88OgnH+B2UF5KjVX4DWSopWAkuLNh+ktLGCs
         fNCYr48jHW0iiBSfdWor45hFBgVnueEv+oTcU8yCRfNhPGc/+HWiwre7DJk+sHObGb
         Qg+M3pwXHBB+WJJjBQSrTOTLSg5BGT4dFUVjVN02K4Jnlo7SEtzkPSFctHlHmjALAZ
         ONlFx8bFTJPCQ==
Date:   Sun, 29 Oct 2023 02:42:31 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: managing tagged paragraphs (was: [PATCH 2/2] ioctl_pagemap_scan:
 add page for pagemap_scan IOCTL)
Message-ID: <ZT2qfeegOCgUTKOH@debian>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
 <20231019131252.2368728-2-usama.anjum@collabora.com>
 <ZTbrIskF1mt0zTM_@debian>
 <20231024024802.e6hfjvfumzc2rbil@illithid>
 <ZTefONm-aap2x1nF@debian>
 <20231028130714.inrfj5nzbqt25ms3@illithid>
 <ZT01aL6v25b5z_Eo@debian>
 <20231028180703.e4kqfnueaxp5dx7q@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="92dYXiArjgk9P+o4"
Content-Disposition: inline
In-Reply-To: <20231028180703.e4kqfnueaxp5dx7q@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--92dYXiArjgk9P+o4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 29 Oct 2023 02:42:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: managing tagged paragraphs (was: [PATCH 2/2] ioctl_pagemap_scan:
 add page for pagemap_scan IOCTL)

Hi Branden,

On Sat, Oct 28, 2023 at 01:07:03PM -0500, G. Branden Robinson wrote:
> At 2023-10-28T18:22:52+0200, Alejandro Colomar wrote:
> > I meant to ask if modifying RS's behavior to not break after TP was
> > something you'd consider viable.
>=20
> Ahh.  Hmm.  Can you show me an exhibit of desired output?

I'd like both sections to be identical in the following page (with the
behavior of the first one).


$ cat RS.man=20
=2ETH RS 7 to-morrow Alex
=2ESH Continuing TP with IP
=2ETP
tag
First paragraph.
=2EIP
Second paragraph.
=2ESH Continuing TP with RS
=2ETP
tag
=2ERS
First paragraph.
=2EPP
Second paragraph.
=2ERE


$ MANWIDTH=3D72 man ./RS.man | cat
RS(7)              Miscellaneous Information Manual              RS(7)

Continuing TP with IP
     tag    First paragraph.

            Second paragraph.

Continuing TP with RS
     tag
            First paragraph.

            Second paragraph.

Alex                           to=E2=80=90morrow                         RS=
(7)

>=20
> > $ MANWIDTH=3D82 man groff_man_style | wc
> >    1442   10152   81154
> > $ MANWIDTH=3D83 man groff_man_style | wc
> >    1435   10156   80990
>=20
> Only thing I can guess here is that man-db man(1) runs sandboxed and so
> might not be running a groff from $HOME.

Heh, I've managed to reproduce it!  It seems I run that thing just
before installing groff from git in this computer:

$ /usr/bin/groff --version | head -n1
GNU groff version 1.23.0
$ /usr/local/bin/groff --version | head -n1
GNU groff version 1.23.0.497-e982
$ MANROFFOPT=3D--version man man | head -n1
GNU nroff (groff) version 1.23.0.497-e982
$ PATH=3D/usr/bin
$ MANROFFOPT=3D--version man man | head -n1
GNU nroff (groff) version 1.23.0
$ MANWIDTH=3D80 man groff_man_style | wc
   1439    9943   81331


>=20
> > Me too.  I remember my promise to review it; I'm just very slow; even
> > slower than sloppy recuriters.
>=20
> I had no idea such a low speed was possible.

I've taken an entire year to read the Picture of Dorian Gray, if that
gives you an idea.  :D

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--92dYXiArjgk9P+o4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU9qncACgkQnowa+77/
2zKrNRAAgTfE5IrJLiFgb6MUdk5zVX9qI5uyJx3FxqoOcQ4N/iffZUhiVg0rZqVH
CwXx/1TmWnYYTeb23Pb0UZVzZKMWC1Zn2WAdr/nu6L4Vqvk4DRh3Yl8E51kLknpl
DI6Ta9NDLqSkKOQUCv2d6VvDMeEdZ/M2PnB6AKjVPeIl7GPS3pKCtHpjOzQpcz2n
9LRw7ceHOxdyB5PGkIG2YE/nNvwppj+bTE/zpi1CG/ACvkKZB2hT/01vyhHTrsEB
kAsHGFPMPPqbQQGLF39hPffpG3Q3IEpAC0MYTaqf0ArfIqlUdshmcaT8hLPD7Q48
WIQnxN89FCReeZnP7jzFfznIdDMN1E6PPq9Epzq8u2EGJPxBWKLhFVykDf2+qicF
Zmvj271La6gzay9AELQzTLQXoePEaPgYNmBu3ryg0dhys8h16hCLZl1U9rPxQMpO
ZMWaj6KVadwje8P8c3dhedWYnnwkWCNHeDkJW/1b+FuPrjSbdEeSqs1/pSWk5a/V
cs2T5T6IVAiUgLIkMg52s9ZWtzox0eg7S6jg9f/QtezB/gEn3MRv8qHBeC2AzzfR
VdnraELP379LTuCWIOnDRzDCILomJyTSHAFtRoBHgKgxIVhQ+hj290ZJkj1QNhrQ
DxglpjZCdEQRDa/vuYuPbZORNZMbkLyovb+GFrSNnExV5HoKblk=
=jka7
-----END PGP SIGNATURE-----

--92dYXiArjgk9P+o4--
