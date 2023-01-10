Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6C39663ABC
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 09:18:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231534AbjAJISO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 03:18:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231309AbjAJISN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 03:18:13 -0500
Received: from smtp.gentoo.org (dev.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4B483FA33
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 00:18:11 -0800 (PST)
Content-Type: multipart/signed;
        boundary="Apple-Mail=_18D46F68-27E4-459E-B55E-6E3D9F6E31B5";
        protocol="application/pgp-signature";
        micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.300.101.1.3\))
Subject: Re: misleading note in
 https://man7.org/linux/man-pages/man3/bstring.3.html
From:   Sam James <sam@gentoo.org>
In-Reply-To: <01e8c816-6b92-5776-722e-7a6c5a45a913@gmail.com>
Date:   Tue, 10 Jan 2023 08:17:56 +0000
Cc:     Aaron Peter Bachmann <aaron_ng@inode.at>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
Message-Id: <A99F45B7-F791-4EB2-BF63-A5E6B1FDADD6@gentoo.org>
References: <4e7589dc-2c5c-d705-e2a9-4b0878bfce3d@inode.at>
 <01e8c816-6b92-5776-722e-7a6c5a45a913@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
X-Mailer: Apple Mail (2.3731.300.101.1.3)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Apple-Mail=_18D46F68-27E4-459E-B55E-6E3D9F6E31B5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 30 Dec 2022, at 23:05, Alejandro Colomar <alx.manpages@gmail.com> =
wrote:
>=20
> Hello Aaron Peter,
>=20
> On 12/30/22 23:43, Aaron Peter Bachmann wrote:
>> Hello!
>> The note section in =
https://man7.org/linux/man-pages/man3/bstring.3.html says:
>> The functions*bcmp*(),*bcopy*(), and*bzero*() are obsolete.  Use
>>        *memcmp*(),*memcpy*(), and*memset*() instead.
>> The std-replacement replacement for bcopy() in NOT memcpy() but =
memmove().
>> Thus it should say:
>> The functions*bcmp*(),*bcopy*(), and*bzero*() are obsolete.  Use
>>        *memcmp*(),*memmove*(), and*memset*() instead.
>=20
> Thanks!  I fixed it.  And while doing it, I also removed the text that =
said bzero(3) is deprecated.  I encourage its use.
>=20

The man page notes it was in POSIX and then got removed in 2008. Before =
it was removed from POSIX,
they said memset was preferred.

I don't argue that we have to defer to POSIX always, but I'm wondering =
what your thinking is on such conflicts
(I'm just wondering about other cases if we hit them).

What do you think?

Best,
sam

--Apple-Mail=_18D46F68-27E4-459E-B55E-6E3D9F6E31B5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iNUEARYKAH0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCY70fNF8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MAAKCRBzhAn1IN+R
kMVDAQCEUl1s6vHdfL8IXt225EX5BWz7XlEE5uFGdrvxQVnzrgEAw7GDYP87ZYRT
T4s/z1kp34jf3In8gmUqEihlgHcPhA8=
=d+mm
-----END PGP SIGNATURE-----

--Apple-Mail=_18D46F68-27E4-459E-B55E-6E3D9F6E31B5--
