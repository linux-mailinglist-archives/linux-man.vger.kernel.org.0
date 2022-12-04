Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 805EE642079
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 00:06:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230343AbiLDXGs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 18:06:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230161AbiLDXGr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 18:06:47 -0500
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89E6610B74
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 15:06:46 -0800 (PST)
Content-Type: multipart/signed;
        boundary="Apple-Mail=_CB7484C1-4DBE-42F8-B0D7-F7A186C9F73F";
        protocol="application/pgp-signature";
        micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.12\))
Subject: Re: Issue in man page wcsncpy.3
From:   Sam James <sam@gentoo.org>
In-Reply-To: <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
Date:   Sun, 4 Dec 2022 23:06:25 +0000
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        GNU C Library <libc-alpha@sourceware.org>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-Id: <EC7619DA-5D2E-4738-97D2-9A98D4108A02@gentoo.org>
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
 <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
X-Mailer: Apple Mail (2.3731.200.110.1.12)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Apple-Mail=_CB7484C1-4DBE-42F8-B0D7-F7A186C9F73F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 4 Dec 2022, at 20:42, Alejandro Colomar via Libc-alpha =
<libc-alpha@sourceware.org> wrote:
>=20
> Hi Helge, glibc developers,
>=20
> On 12/4/22 10:07, Helge Kreutzmann wrote:
>> Without further ado, the following was found:
>> Issue:    Is the "L" in the bracket (for the NULL character) correct?
>> "The B<wcsncpy>()  function is the wide-character equivalent of the"
>> "B<strncpy>(3)  function.  It copies at most I<n> wide characters =
from the"
>> "wide-character string pointed to by I<src>, including the =
terminating null"
>> "wide character (L\\(aq\\e0\\(aq), to the array pointed to by =
I<dest>."
>> "Exactly I<n> wide characters are written at I<dest>.  If the length"
>> "I<wcslen(src)> is smaller than I<n>, the remaining wide characters =
in the"
>> "array pointed to by I<dest> are filled with null wide characters.  =
If the"
>> "length I<wcslen(src)> is greater than or equal to I<n>, the string =
pointed"
>> "to by I<dest> will not be terminated by a null wide character."
>=20
> As an unrelated note.  I've had this running in my mind for some =
time... your various bug reports for strncpy(3) and similar wide =
character functions have triggered those thougts.
>=20
> I'm going to mark strncpy(3) and similar functions as deprecated, even =
if no libc or standard has done so.  There's wide agreement (at least in =
some communities) that strncpy(3) _is evil_.  There's simply no use for =
it.
>=20

Please don't do this unilaterally. Apple did this unilaterally for =
sprintf which has caused problems, as well.

It's going to cause confusion as people will inevitably ask where/who =
deprecated it and there won't
be a solid answer. And if we can't get a libc to agree to deprecate it =
as well, then doing it in the man
pages is wrong. Even if I understand the spirit of the idea.

Best,
sam

--Apple-Mail=_CB7484C1-4DBE-42F8-B0D7-F7A186C9F73F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iNUEARYKAH0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCY40n8V8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MAAKCRBzhAn1IN+R
kMWMAQC6cyOiDlARhWKtG29aqRl/uh4wFpnTFSSPjvq+x4MgtAEA3q79sCIz71kZ
yLJ5xqsV5z7M4hfkRegWJxSOlQOhngA=
=G4zz
-----END PGP SIGNATURE-----

--Apple-Mail=_CB7484C1-4DBE-42F8-B0D7-F7A186C9F73F--
