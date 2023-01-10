Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E47E663AC9
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 09:19:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbjAJITo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 03:19:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230401AbjAJITn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 03:19:43 -0500
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F51B42E2C
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 00:19:43 -0800 (PST)
Content-Type: multipart/signed;
        boundary="Apple-Mail=_1406FCE8-9895-440D-8CDD-813A773AA10F";
        protocol="application/pgp-signature";
        micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.300.101.1.3\))
Subject: Re: Up-to-date online manual pages
From:   Sam James <sam@gentoo.org>
In-Reply-To: <18eda7ce-8dc4-404c-bb43-c943829638a6@app.fastmail.com>
Date:   Tue, 10 Jan 2023 08:19:29 +0000
Cc:     alx@kernel.org, mtk.manpages@gmail.com, linux-man@vger.kernel.org
Message-Id: <CF1086C3-D26F-4F42-A1D4-74AFDA07779B@gentoo.org>
References: <18eda7ce-8dc4-404c-bb43-c943829638a6@app.fastmail.com>
To:     Geoffrey Thomas <geofft@ldpreload.com>
X-Mailer: Apple Mail (2.3731.300.101.1.3)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Apple-Mail=_1406FCE8-9895-440D-8CDD-813A773AA10F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 9 Jan 2023, at 23:52, Geoffrey Thomas <geofft@ldpreload.com> wrote:
>=20
> Hi folks,
>=20
> I've noticed that the online manual pages on =
https://man7.org/linux/man-pages/index.html don't seem to be up-to-date =
with the latest release of man-pages. They seem to be pre-6.0. Is there =
another site that has them online (other than downstreams like Linux =
distros that host their own man pages)? Or is there some way I can help =
with getting them updated?
>=20

This really reminds me that we need to figure out such a solution for =
Gentoo. I'm often quite envious of Arch's viewer & rendering of all =
theirs.

I'm not aware of an up to date copy of man-pages on the web. IIRC, =
Michael Kerrisk has stepped down from maintaining
man-pages as he's busy, so a redirect may be needed if access to that =
site can't be given to Alex :(

thanks,
sam

--Apple-Mail=_1406FCE8-9895-440D-8CDD-813A773AA10F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iNUEARYKAH0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCY70fkV8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MAAKCRBzhAn1IN+R
kOatAQD8ztPdRfUzrwm8+rN9UnYjVyMxkdBOgfqFK2lZJHq9kgEAsQ17SP3K1asq
KpIi4mWRlhTnNya4YRj7Up9kFGwW/QY=
=5pXr
-----END PGP SIGNATURE-----

--Apple-Mail=_1406FCE8-9895-440D-8CDD-813A773AA10F--
