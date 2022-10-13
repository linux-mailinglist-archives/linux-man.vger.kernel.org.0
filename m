Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95E035FE24C
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 20:59:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230253AbiJMS7b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 14:59:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232356AbiJMS6y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 14:58:54 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38B1E748CB
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 11:57:10 -0700 (PDT)
Content-Type: multipart/signed;
        boundary="Apple-Mail=_9E51B2C0-A078-4EE6-89C9-5ABD0607E3E6";
        protocol="application/pgp-signature";
        micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [PATCH] feature_test_macros.7: document -D_FORTIFY_SOURCE=3
From:   Sam James <sam@gentoo.org>
In-Reply-To: <43b87bb6-2c18-5df5-fe5b-6d753f97ad85@gmail.com>
Date:   Thu, 13 Oct 2022 19:57:05 +0100
Cc:     linux-man@vger.kernel.org
Message-Id: <F6BBDD88-1C5F-494B-B29E-9B301D17CBF1@gentoo.org>
References: <20221013183117.477592-1-sam@gentoo.org>
 <43b87bb6-2c18-5df5-fe5b-6d753f97ad85@gmail.com>
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


--Apple-Mail=_9E51B2C0-A078-4EE6-89C9-5ABD0607E3E6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 13 Oct 2022, at 19:50, Alejandro Colomar <alx.manpages@gmail.com> =
wrote:
>=20
> Hi Sam,
>=20
> On 10/13/22 20:31, Sam James wrote:
>> Reference: =
https://developers.redhat.com/blog/2021/04/16/broadening-compiler-checks-f=
or-buffer-overflows-in-_fortify_source
>> Reference: =
https://developers.redhat.com/articles/2022/09/17/gccs-new-fortification-l=
evel
>> Signed-off-by: Sam James <sam@gentoo.org>
>> ---
>>  man7/feature_test_macros.7 | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>> diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
>> index d33041001..e62185745 100644
>> --- a/man7/feature_test_macros.7
>> +++ b/man7/feature_test_macros.7
>> @@ -643,9 +643,20 @@ and result in compiler warnings;
>>  other checks take place at run time,
>>  and result in a run-time error if the check fails.
>>  .IP
>> +With
>> +.B _FORTIFY_SOURCE
>> +set to 3, additional checking is added to capture some function
>=20
> What do you mean by "capture"?
>=20



Maybe "capture" is not the best word. Maybe hooked / intercepted
is better?

F_S=3D3 lets cases where say, malloc size is based on a variable,
still get detected because the compiler recognises such cases
and adds scaffolding in to hook the functions.

(The malloc example at
=
https://developers.redhat.com/articles/2022/09/17/gccs-new-fortification-l=
evel#1__a_new_builtin_provides_enhanced_buffer_size_detection
is what I'm referring to).

To be clear though: the semantics are similar to FORTIFY_SOURCE=3D2,
it's just that FORITFY_SOURCE=3D3 uses an extra bit of information
(__builtin_dynamic_object_size) to hook more cases.

So whatever word works for FORTIFY_SOURCE < 3 works for 3 too.

I'm definitely feeling like "capture" is not the best word but I'm
struggling for the right one.

--
Additional question: there's actually some confusing
constraints about when we can use F_S=3D3.

It needs GCC 12 or Clang 9 as a compiler,
and >=3D glibc-2.34.

musl does not, at this time, support any
built-in fortification. I don't know if we should
mention that part.


> Cheers,
>=20
> Alex

Best,
sam

--Apple-Mail=_9E51B2C0-A078-4EE6-89C9-5ABD0607E3E6
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iNUEARYKAH0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCY0hfgV8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MAAKCRBzhAn1IN+R
kMYlAP0TgMwsSXr6XpAUWDrVu4ZXFQflLe7dYMwKzWs5KOm+qQD9EyEXPzi6IqI8
398glOvnHovI5lgGQKJKl03fJLspbgU=
=12OB
-----END PGP SIGNATURE-----

--Apple-Mail=_9E51B2C0-A078-4EE6-89C9-5ABD0607E3E6--
