Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B25C35880EF
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 19:22:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234093AbiHBRWG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 13:22:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234015AbiHBRWF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 13:22:05 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E5F1748E86
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 10:22:01 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id DE9339E4;
        Tue,  2 Aug 2022 19:21:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1659460919;
        bh=IUQsMbe7JEVvF7mb3/XTTrkNmV+bZ1i7UFVr+YRrBJQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DcuuLM2nmUQah9/ZuEQLUj97OsQJE3XZ9MtyMd5ILbNgdbALfoquSn0gjqvDCz+G2
         hNABu1OYvvLhxP04LVomLbj5G3DBaxCrgo1Q22hFTGozmjS3fDNVy7dqDkh1m1rbeX
         FQ/rrfEBMtWs6CmWhtClYtAC5TkcO3gwW3Ebqb4Fwg0hdgMUzTnCalJedIo4ldGH9I
         /alYbrvQ+nvcSoPeJDwI3vRDMazE/rmv3TiGdlJBPCB5RvKqO9feY52qdApQdvJfkk
         JW61k8JQA6ORPCdAO/+8mVdG+Y8Y30SxVLJHFmFJrjdRlYjieAxG/yphdgUCe4fF82
         LS33ytFw+uUCZVWpntqNil3yinh+SCU4lwq6wQ7TkylUaLG+U2tTi1Mo7yRBJ+xWv5
         QTa3xJzskHC01vniDDUjaR4lYHC91Gh4pAifZjA7sYJ/X4BKKr7hczucuK+WFUsIq+
         RB9kklTQtZ+4nI+aVpCv2JYZ7kVym5+50i8q+UnusmTbHSloID9Jt9orUmXI/AzN9A
         58+ngK7FIpinB++FNPpFb0TWyhfKppviwhRrrkKUOvlu8Pg7Ks3WMzD7Y1DE4w3z74
         /jPsGs2YENVNGSUVRHMniPsdcGj5uHAyt0jbgzlUK6oo/zZDQJJNu/JbfMI4At04ET
         +snGAYT2Hu+WjwhqKr5Fwa/A=
Date:   Tue, 2 Aug 2022 19:21:58 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] getaddrinfo_a.3: {ftp.us => mirrors}.kernel.org,
 likewise for IP
Message-ID: <20220802172158.r6uektqt3rqbd55z@tarta.nabijaczleweli.xyz>
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
 <95f02b3c-024b-b1d9-56d5-798990f63c66@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hxc7kos22jhzqscj"
Content-Disposition: inline
In-Reply-To: <95f02b3c-024b-b1d9-56d5-798990f63c66@gmail.com>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hxc7kos22jhzqscj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Tue, Aug 02, 2022 at 01:47:05PM +0200, Alejandro Colomar wrote:
> On 8/2/22 03:11, =D0=BD=D0=B0=D0=B1 wrote:
> > ftp.us.kernel.org EAI_NONAMEs: turn it into mirrors.kernel.org,
> > because the current text uses 216.165.129.139 which is m.k.o
>=20
> alx@asus5775:~$ wtf is mko
> Gee...  I don't know what mko means...
> alx@asus5775:~$ wtf is m.k.o
> Gee...  I don't know what m.k.o means...

mirrors.kernel.org, like it says on the line above;
updated to full for v2

> > Make the address consistent between 128.30.2.36
> > (some address in MIT space) and 216.165.129.139 (valid, current)
>=20
> Is that IP address still a valid mirror?  I didn't check, but it would be
> nice to make sure it is.

It's geolocated, and it worked yesterday but not today (this is why we
use DNS), but bare addresses of *.m.k.o seem to work.

Best,
=D0=BD=D0=B0=D0=B1

--hxc7kos22jhzqscj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLpXTYACgkQvP0LAY0m
WPH2NQ//SOfTze5Z3XR6f8HYivvdyR7IvvOIqoO6wsZK3bxY9V9Vgqr+NK3UVNIA
NN3iNjWv1qHcZQ0Xf2FLLWiinNC7lfN44cihxPTYCO7RkrZtb6Dw5Ch+rNCwI0cg
GzxV20OMHybDinuUF9g0A55sxoSUg9rvzlUs09vBxd5BlygNP4nCI1QN970fC3rD
ZIrthsHqEYUA2v4axmdby/ReGs038Y+/V5HieU1i2svR3wmgFGDJdXsRxA6NIkIs
0cgbgBClYfHjefz5uw81y2EcL4aKwTX0AUJP6fmRQ+sqm3L1M7MnNVJjDcWE/DUE
IpLUdz7vLGE23F7qwI3oc21jDLD16GzZGlIwkkP8TiCYzKfFmJ/k37kfmOm/3tf+
4sjwg/DXZI5pEFycDjfTw3NVfFEd81Gp+o9CE/JDY8emK6wBtr0IZOfvGMy44BAQ
UNqjwCFC0vvcW5wlNbsCqQjGEKIGHXDXgawDQ+IN2X3wc8mJFpD4co5I7Izhdthu
JLuLKFljINumWnr6aC8E1NQfFPH7ezptTFCLgxoZxYK7tlq36fSC9QF4V3wsVrq/
MxZS29BMsFU5Qd0WyL+R6EXT22H+LHPgYtIxj8EKhuMh9DzLIxmNo9dmdi0eVF9C
MRspmmwqnGbRNVs0C6I9X49+RKSohGDe8KAnTj1ir0OLDSteZR4=
=X/Pr
-----END PGP SIGNATURE-----

--hxc7kos22jhzqscj--
