Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB3266C5F08
	for <lists+linux-man@lfdr.de>; Thu, 23 Mar 2023 06:37:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231235AbjCWFhZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Mar 2023 01:37:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231251AbjCWFhI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Mar 2023 01:37:08 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DDB2311E2
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 22:36:42 -0700 (PDT)
References: <28c1d825-0ef5-7363-6822-f2c876bf73d4@gmail.com>
 <ac2ba951-340f-d074-730b-ad8986338e8d@gmail.com>
User-agent: mu4e 1.8.14; emacs 29.0.60
From:   Sam James <sam@gentoo.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Matt Jolly <Matt.Jolly@footclan.ninja>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Guillem Jover <guillem@hadrons.org>,
        Tom Schwindl <schwindl@posteo.de>,
        Marcos Fouces <marcos@debian.org>
Subject: Re: stdc: search function prototypes in ISO C documents
Date:   Thu, 23 Mar 2023 05:35:47 +0000
In-reply-to: <ac2ba951-340f-d074-730b-ad8986338e8d@gmail.com>
Message-ID: <87zg84vxjv.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Alejandro Colomar <alx.manpages@gmail.com> writes:

> [[PGP Signed Part:Undecided]]
>
>
> On 3/22/23 20:49, Alejandro Colomar wrote:
>> Gidday!
>>=20
>> I created a git repository for the stdc(1) script, and created a signed
>> tag v0.1 for it.
>>=20
>> It's yet undocumented, but I plan to add a man page for it.  Anyway,
>> being a bash(1) script, I guess it's quite readable to anyone here.
>>=20
>> Please suggest any improvements that you can think of =3D).
>
> Heh, of course I forgot to paste the link to the repo:
>
> cgit:
> <http://www.alejandro-colomar.es/src/alx/alx/doc/stdc.git/>
> git:
> <git://www.alejandro-colomar.es/src/alx/alx/doc/stdc.git>

Nice! I'm going to add this to my local ~/bin and play around
with it.

Thanks!

best,
sam

>
>>=20
>> Cheers,
>>=20
>> Alex
>>=20


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZBvlZF8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZCX2gD+OPYtMubipYj+V5aUgAd3NZaGaC+i8vdIhmN8
oaNn2ssA/jIKKlzdvmBN1ZnIBZdTuusRRtv46uE/UTwilgcy4m0O
=RWP9
-----END PGP SIGNATURE-----
--=-=-=--
