Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 655C67AE21A
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 01:08:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233488AbjIYXIr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Sep 2023 19:08:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233479AbjIYXIq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Sep 2023 19:08:46 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B41AB10C
        for <linux-man@vger.kernel.org>; Mon, 25 Sep 2023 16:08:39 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCB6BC433C7;
        Mon, 25 Sep 2023 23:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695683319;
        bh=2YpF292moco6Up4vLYvUgOz+fMiuO0Y6DGcP/fcbyvg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LqcWnRvk9rdy6ZcBAqoFSXqzHXkl7QYPW8MX03MfMEnCezi64jshhXD0J0AAo6LJ4
         hp89I83NQwGAqBnRDB+EGZla1gV6hCm5RGPONHRE8XvnX4xE44vVHJCSCpVP7vTjPK
         OMy8hwxxQgIxPz+rWqzXfoyg4mB+nzL2tuChKuzXwKZ5Z0yXrjbHqSKyyOs5ugka5g
         T4KKlpxb+hgAEt1TgLCKSPkSXhupbeJYT9mzBNbh1cWA5ayk/e19eo8/HVd3O6qKwN
         27sf8BYAgV4I2uAs2IN0UQa6Lr95Giv+EfnLSpQ8rmmTNyfCJytN43gjM2lX9zSxLa
         sFST/K9YBU4hw==
Date:   Tue, 26 Sep 2023 01:08:34 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "Lameter, Christopher" <cl@os.amperecomputing.com>
Cc:     Lukas Javorsky <ljavorsk@redhat.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Andi Kleen <ak@linux.intel.com>, linux-man@vger.kernel.org,
        Brian Inglis <Brian.Inglis@shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Matthew Wilcox <willy@infradead.org>,
        Alan Cox <alan@lxorguk.ukuu.org.uk>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Adam Dobes <adobes@redhat.com>, Chris Lameter <cl@linux.com>
Subject: Re: SPDX license review requests
Message-ID: <fyhp3ng6gilznuk7yhldvqsh5naxiorfknwzwuy4zuvuajfhzr@zjbysjsegmsh>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com>
 <ZHXweLNKqHKoybXM@tassilo>
 <eda85fda-6182-fc13-3943-9084b187433e@gmail.com>
 <CAK719L2PjTr=-c_AEi89TVrJV7DHwyfBJjH6z6Bozc0Rk+rOfQ@mail.gmail.com>
 <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="csb55ajqzlua2cgy"
Content-Disposition: inline
In-Reply-To: <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--csb55ajqzlua2cgy
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: SPDX license review requests
MIME-Version: 1.0

On Thu, Jun 29, 2023 at 09:01:11AM -0700, Lameter, Christopher wrote:
> On Thu, 29 Jun 2023, Lukas Javorsky wrote:
>=20
> >       >> VERBATIM_TWO_PARA
> >       >>=A0 =A0 =A0 This license was first used in the Linux man-pages =
in version
> >       >>=A0 =A0 =A0 3.07 (year 2008) in a single page:
> >       >>
> >       >>=A0 =A0 =A0 =A0 =A0 =A0 =A0 move_pages.2
> >       >>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Added by Michael Ke=
rrisk <mtk.manpages@gmail.com>,
> >       >>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 but Copyright (C) 2=
006 Silicon Graphics, Inc.
> >       >>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 Christoph Lameter
> >       >>
> >       >>=A0 =A0 =A0 It was later reused in another page:
>=20
> The manpage was written by me and later edited by Michael as far as I
> remember.
>=20
> >       >>
> >       >>=A0 =A0 =A0 =A0 =A0 =A0 =A0 migrate_pages.2
> >       >>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Copyright 2009 Inte=
l Corporation
> >       >> .\"=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Author: Andi Kleen
> >       >> .\" Based on the move_pages manpage which was
> >       >> .\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
> >       >> .\"=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0Christoph Lameter
> >       >>
> >       >>=A0 =A0 =A0 This license is the one considered non-free by Fedo=
ra, and which
> >       >>=A0 =A0 =A0 we need to drop.=A0 Luckily it's only two pages, so=
 they could be
> >       >>=A0 =A0 =A0 reasonably rewritten in a worst case.
>=20
> The licensing was GPL and not a proprietary one.
>=20
> >       So, given this, if you give consent to change your pages to use
> >       Linux-man-pages-copyleft, I'll do so provided for the pages that =
are
> >       completely yours, and will keep in mind that when others agree, I=
'll also
> >       change the pages that are shared.
>=20
> I have no objections.

Thanks!  I've relicensed move_pages(2) to Linux-man-pages-copyleft.

Cheers,
Alex

--csb55ajqzlua2cgy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUSEvIACgkQnowa+77/
2zIi0hAAlpgNse1L+ImRLVOBYioi4qI7CcvIQfwvM287oadHbbqXc5egtuymjVRH
oRs1mwB56G2nUZnAY1E5NHCkPuTzqxW0AMvhlKTeKAte2rNKCN4Htq5pBvwNaNKo
mdW1gJwhfEzzvXinqPGKIPmuMC8onEzrQ1IWK4cwhJtv91RU0oeItSoeJHlqc2MJ
H0ZpscvgiaVpVoDW9ZZ+oV6hcWoHl4W2IMT84uRNgQF3OyKuZO0qNKvXdLehQ4Jp
43AyFUfSv/01PSeTMEuOEN58nHd8vB8dEhNzlLMUNza85H70pg6bo/5dNoDaPr6z
gowsXZf7OxRisxtmtUkzs3awCqF8w18pVjkTs/cDHtgxAH/wFg5c4Avak6b2cagl
lm//06ylKG4NgtifrEx0TFvxSFCWp0JywenZFu3jc6J3AZsZ0gZP8kbBc4pM6SCR
GAe8jjrtaT9NgVCIPgy8B+JnG9DNwr2dVYYDW1s18TmIr7rgM4pGW3Mncq26+Qjt
0GnIowOlk3OUhku9AC/tpXFFiwvYKuN3tDCrgDRcnzdxm4XD9S3pJp+tVDnho8KD
LbwWGo4hYUP/WDKxn1FZWSi8XuYBnkXEqJ0xnnvTCUnS4aAAVm6XArFD4pNDf+kt
iNZfQ3jnkUN2n1et8h62len0lh3Z0SL7yDgcyD+w5bmqdJyDFoM=
=Av1y
-----END PGP SIGNATURE-----

--csb55ajqzlua2cgy--
