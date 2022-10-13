Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1EED5FE39A
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 22:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229907AbiJMU5Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 16:57:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229934AbiJMU5X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 16:57:23 -0400
Received: from smtp.gentoo.org (dev.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 686C01849B7
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 13:57:22 -0700 (PDT)
Content-Type: multipart/signed;
        boundary="Apple-Mail=_454FBFF5-F392-4BA5-AEEC-32C86D999D34";
        protocol="application/pgp-signature";
        micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [PATCH v2 2/2] feature_test_macros.7: document _TIME_BITS
From:   Sam James <sam@gentoo.org>
In-Reply-To: <7e1cc5d1-7d63-25b6-42f4-eefe6258f2de@gmail.com>
Date:   Thu, 13 Oct 2022 21:57:17 +0100
Cc:     linux-man@vger.kernel.org
Message-Id: <E3D78B44-FF65-4476-A5DB-617193896078@gentoo.org>
References: <20221013183018.472463-1-sam@gentoo.org>
 <20221013183018.472463-2-sam@gentoo.org>
 <25df66e8-8ce3-1ac6-a93b-460dab055a48@gmail.com>
 <1C02DD4E-3F55-4D7D-9D95-02B01F68A890@gentoo.org>
 <7e1cc5d1-7d63-25b6-42f4-eefe6258f2de@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Apple-Mail=_454FBFF5-F392-4BA5-AEEC-32C86D999D34
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 13 Oct 2022, at 20:17, Alejandro Colomar <alx.manpages@gmail.com> =
wrote:
>=20
> On 10/13/22 20:52, Sam James wrote:
>>> Am I understanding this right?  _FILE_OFFSET_BITS is required to be =
set for _TIME_BITS to be also set (in some archs)?  Could you please =
link directly to a source for that in the commit log?  They are somewhat =
related, but I'm quite surprised that something to do with file sizes =
interferes at all with something to do with time.
>>>=20
>> Yes, it's shocking, but true!
>> I'll add a reference -- but it's in /usr/include/features-time64.h:
>> =
https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dsysdeps/unix/sysv/l=
inux/features-time64.h
>=20
> O.O  Yes, it seems to also be in the glibc documentation.  Weird.
>=20

You can imagine my surprise when I only hit this when something failed =
to compile
with the #error...

--Apple-Mail=_454FBFF5-F392-4BA5-AEEC-32C86D999D34
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iNUEARYKAH0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCY0h7rV8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MAAKCRBzhAn1IN+R
kKARAP4/XGnUr8ZLDYAbTn18o2DMKbK2bfKtMNJx844e/NOJ/QEAoiG+k1/wQQtw
dJZcp8KFm2riv90CZk3ADic7aXlEVg4=
=1EuZ
-----END PGP SIGNATURE-----

--Apple-Mail=_454FBFF5-F392-4BA5-AEEC-32C86D999D34--
