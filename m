Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 669C65FE225
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 20:55:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232209AbiJMSzD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 14:55:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232223AbiJMSyj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 14:54:39 -0400
Received: from smtp.gentoo.org (mail.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BE65537F6
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 11:53:01 -0700 (PDT)
Content-Type: multipart/signed;
        boundary="Apple-Mail=_12CA9608-045F-47E4-9481-1DB89D4E5947";
        protocol="application/pgp-signature";
        micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [PATCH v2 2/2] feature_test_macros.7: document _TIME_BITS
From:   Sam James <sam@gentoo.org>
In-Reply-To: <25df66e8-8ce3-1ac6-a93b-460dab055a48@gmail.com>
Date:   Thu, 13 Oct 2022 19:52:39 +0100
Cc:     linux-man@vger.kernel.org
Message-Id: <1C02DD4E-3F55-4D7D-9D95-02B01F68A890@gentoo.org>
References: <20221013183018.472463-1-sam@gentoo.org>
 <20221013183018.472463-2-sam@gentoo.org>
 <25df66e8-8ce3-1ac6-a93b-460dab055a48@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Apple-Mail=_12CA9608-045F-47E4-9481-1DB89D4E5947
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 13 Oct 2022, at 19:47, Alejandro Colomar <alx.manpages@gmail.com> =
wrote:
>=20
> Hi Sam,
>=20
> On 10/13/22 20:30, Sam James wrote:
>> Reference: =
https://wiki.gentoo.org/wiki/Project:Toolchain/time64_migration
>> Reference: =
https://sourceware.org/pipermail/libc-alpha/2022-January/134985.html
>> Signed-off-by: Sam James <sam@gentoo.org>
>> ---
>>  man7/feature_test_macros.7 | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>> diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
>> index cdd962f7f..d33041001 100644
>> --- a/man7/feature_test_macros.7
>> +++ b/man7/feature_test_macros.7
>> @@ -412,6 +412,15 @@ large files with only a recompilation being =
required.)
>>  64-bit systems naturally permit file sizes greater than 2 Gigabytes,
>>  and on those systems this macro has no effect.
>>  .TP
>> +.B _TIME_BITS
>> +Defining this macro with the value 64
>> +changes the width of
>> +.BR time_t (3type)
>> +to 64-bit which allows handling of timestamps beyond
>> +2038. It is closely related to
>=20
> Please use semantic newlines.  See man-pages(7):
>=20
>   Use semantic newlines
>       In the source of a manual page, new sentences  should  be
>       started on new lines, long sentences should be split into
>       lines  at  clause breaks (commas, semicolons, colons, and
>       so on), and long clauses should be split at phrase bound=E2=80=90
>       aries.  This convention,  sometimes  known  as  "semantic
>       newlines",  makes it easier to see the effect of patches,
>       which often operate at the level of individual sentences,
>       clauses, or phrases.
>=20

Mea culpa -- let me read that over again :)

> That is: 's/2038. /2038.\n/'
>=20
>> +.B _FILE_OFFSET_BITS
>> +and depending on implementation, may require it set.
>=20
> Am I understanding this right?  _FILE_OFFSET_BITS is required to be =
set for _TIME_BITS to be also set (in some archs)?  Could you please =
link directly to a source for that in the commit log?  They are somewhat =
related, but I'm quite surprised that something to do with file sizes =
interferes at all with something to do with time.
>=20

Yes, it's shocking, but true!

I'll add a reference -- but it's in /usr/include/features-time64.h:
=
https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dsysdeps/unix/sysv/l=
inux/features-time64.h

Best,
sam

--Apple-Mail=_12CA9608-045F-47E4-9481-1DB89D4E5947
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iNUEARYKAH0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCY0hed18UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MAAKCRBzhAn1IN+R
kG6/AP4l8McTXWxuPY1YrEx0vkuMwxuJnSsjwvAIJLOYmlfn1QEA2TPhJCtRJ/DU
Tvaw4OVCnhF005zTNhK8o66TM4UiAgA=
=ITMi
-----END PGP SIGNATURE-----

--Apple-Mail=_12CA9608-045F-47E4-9481-1DB89D4E5947--
