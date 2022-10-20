Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAE5B6055FC
	for <lists+linux-man@lfdr.de>; Thu, 20 Oct 2022 05:41:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbiJTDls (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Oct 2022 23:41:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbiJTDlr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Oct 2022 23:41:47 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 886DE181487
        for <linux-man@vger.kernel.org>; Wed, 19 Oct 2022 20:41:45 -0700 (PDT)
Content-Type: multipart/signed;
        boundary="Apple-Mail=_EC01BEFA-8F3B-4661-8645-DCF87527C63B";
        protocol="application/pgp-signature";
        micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: man-pages RELEASE file
From:   Sam James <sam@gentoo.org>
In-Reply-To: <741f4e2a-2659-025b-0ad7-ca679a4e2152@gmail.com>
Date:   Thu, 20 Oct 2022 04:41:40 +0100
Cc:     linux-man <linux-man@vger.kernel.org>
Message-Id: <7269B9BC-ABFA-4738-B308-C65CD3E1B211@gentoo.org>
References: <741f4e2a-2659-025b-0ad7-ca679a4e2152@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Apple-Mail=_EC01BEFA-8F3B-4661-8645-DCF87527C63B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 19 Oct 2022, at 13:51, Alejandro Colomar <alx.manpages@gmail.com> =
wrote:
>=20
> Hi Sam,
>=20
> I just added a file RELEASE, officially documenting how a release is =
made, in case I disappear at some point, someone can pick it and know =
what to do.
>=20
> The most interesting part to you from that file, is that it also =
covers the case of someone wanting to package a random commit.  It's as =
trivial as running 'make dist', but it's better if it's documented.  ;)
>=20

Fantastic, thanks for thinking of (an unthinkable/the) future!

I'll try find an excuse to try the instructions for real, too.

Best,
sam

--Apple-Mail=_EC01BEFA-8F3B-4661-8645-DCF87527C63B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iNUEARYKAH0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCY1DDdF8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MAAKCRBzhAn1IN+R
kHzlAPsGV+4gj5LrN0m2rc/R0+E9YV3hrFNtEIfXuz3y4hd/UgD/dhWrOzOTFqh6
o6BSkYgI6CkSe8UvUFFZZ7bCgRCkpQY=
=FwLc
-----END PGP SIGNATURE-----

--Apple-Mail=_EC01BEFA-8F3B-4661-8645-DCF87527C63B--
