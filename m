Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BF577756F2
	for <lists+linux-man@lfdr.de>; Wed,  9 Aug 2023 12:16:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231159AbjHIKQe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Aug 2023 06:16:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230260AbjHIKQe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Aug 2023 06:16:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0247A1FDE
        for <linux-man@vger.kernel.org>; Wed,  9 Aug 2023 03:16:33 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8CAB7630DF
        for <linux-man@vger.kernel.org>; Wed,  9 Aug 2023 10:16:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AAD8C433C8;
        Wed,  9 Aug 2023 10:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691576191;
        bh=ldbWRceDYDMU88AozLC1qn16Kmf9ZLMnt1k7sTXcuNA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=JA/Gnd1B7sSDv04WZ8JY1ceE/6K4QnXI0iPJpgt1dOWZZ3j+nLWTpEiBCYlNNU4iv
         a5Tl1e7aeEKWYBOuc6zPTblSCpm5Yyt/rOq5P/IRce6Mi/OjsSy2Wmkst2AR9XJoSQ
         inOjlEqCR1GCf6cWLIIjnIC+6wkz4xCTfc6R7VJp/AW4E2J6dtt8p811RU9eqTED8R
         oyi4oWhSXqUlkKDtLhM+cn/GdBTOoIw//WHvPoC19wj2W3mPrC8wvztfwolJXXLt9P
         hq4MlSes3o/SbXJ9+SzXMl+n2QVO1Y2ita68ddB9mJ4KWGoWWq0D5E86oE3XU8dNTM
         zz2Mb0B4L42QQ==
Message-ID: <d508ed7b-7dfb-7b72-e052-c918c24bb1bf@kernel.org>
Date:   Wed, 9 Aug 2023 12:16:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: =?UTF-8?Q?Re=3a_=e2=9f=a8_vs_=3c_in_hostname_man_page_of_hostname?=
To:     Jonny Grant <jg@jguk.org>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
References: <9d4608c3-1a01-b134-c0f5-423af14563eb@jguk.org>
 <834b4a10-8193-22aa-bfd0-57ed8f32466a@kernel.org>
 <b743023a-4453-aba4-883d-3e896e2f38de@jguk.org>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <b743023a-4453-aba4-883d-3e896e2f38de@jguk.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BN1hj90zbHp3tt0FetatOYJB"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------BN1hj90zbHp3tt0FetatOYJB
Content-Type: multipart/mixed; boundary="------------K8mjYXnVwarS7eiLrMUTaZ2n";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
Message-ID: <d508ed7b-7dfb-7b72-e052-c918c24bb1bf@kernel.org>
Subject: =?UTF-8?Q?Re=3a_=e2=9f=a8_vs_=3c_in_hostname_man_page_of_hostname?=
References: <9d4608c3-1a01-b134-c0f5-423af14563eb@jguk.org>
 <834b4a10-8193-22aa-bfd0-57ed8f32466a@kernel.org>
 <b743023a-4453-aba4-883d-3e896e2f38de@jguk.org>
In-Reply-To: <b743023a-4453-aba4-883d-3e896e2f38de@jguk.org>

--------------K8mjYXnVwarS7eiLrMUTaZ2n
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jinny,

On 2023-08-07 17:36, Jonny Grant wrote:
>>>
>>> Noticed that sometimes the '=E2=9F=A8' doesn't render, perhaps it is =
not in all fonts, would it be possible to use consider using regular '<' =
and '>' character in the man page?
>>
>> That is implemented using man(7)'s UR, which is for URIs.  The source
>> code of the manual page doesn't know about the glyph that will be
>> produced in your system.  In your system, groff(1) will try to find
>> the most appropriate one.  You (or your distributor) can also tweak
>> that.  You can for example change it to use ASCII '<' and '>'.
>>
>> In man7.org, I guess that you read it correctly from any machine.
>> In your systems' pages there's no COLOPHON anymore (I removed it
>> in man-pages-6.01).  If you're on an old system, you can tweak it.
>>
>> But you'll still see that character in pages that have URIs in them.
>> For example, let's consider hier(7):
>>
>>     $ grep -n '^\.UR ' man7/hier.7;
>>     640:.UR https://refspecs.linuxfoundation.org/fhs.shtml
>>
>> which renders as (including the whole section):
>>
>> STANDARDS
>>        The   Filesystem   Hierarchy   Standard   (FHS),   Version  3.0=

>>        =E2=9F=A8https://refspecs.linuxfoundation.org/fhs.shtml=E2=9F=A9=
,     published
>>        March 19, 2015
>=20
>=20
> Fair enough. Some pages even have both.

Pages that use both are bad.  That means that in some places they used
the correct UR man(7) macro, and in some others they hardcoded <>, which
is wrong.  It may happen in <man7.org>, because the COLOPHON was added
by Michael, while the page was written by a different author.  In other
places, it means that the page is badly written.

I know of uri.7, where this happens, and some day I'll fix it.

> I saw sometime <> is used, as I expected,

Those pages are wrongly written.  I expect that most of those pages are
not written in man(7), but rather translated from some other source
language by a program, which usually produce crap man(7) source.

> other times '=E2=9F=A8=E2=9F=A9' .

When you see that, the page was written properly in man(7) (or
mdoc(7)? I expect both produce the same glyph; Branden?).

> "SEE ALSO"
>=20
> https://man7.org/linux/man-pages/man1/cp.1.html

I think GNU coreutils is one of those projects that don't write man(7)
source, but rather translate it from a different language.

alx@debian:~/src/gnu/coreutils$ find | grep 'cp\.1'
alx@debian:~/src/gnu/coreutils$

>=20
> But though "COLOPHON" looks like it was appended by a man7 website scri=
pt with the '=E2=9F=A8=E2=9F=A9' instead,

Yes, Michael uses a script to generate the COLOPHON.  That script uses
the proper method for writing URIs: the UR man(7) macro.  He used a
similar script for releasing man-pages until 5.13, as you'll find our
pages in versions <=3D5.13 had a COLOPHON in them.

I temporarily added a script that did the same thing:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/scripts=
/append_COLOPHON.sh?h=3Dcd34c839d3c9878db9105714b1e460f30057e7f2>

You can expect that Michael's script will be similar.

However, shortly after I decided to just remove the COLOPHON section,
and thus the script:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?h=3D=
8c3052b0322580eba62de91f04ba657f7dfe360e>

> so I thought maybe that could be changed for consistency to <>.

No.  It should be <> that are fixed to use the UR man(7) macro.

> There are so many different characters that could be used, but <> is on=
 every keyboard :)

But nobody types =E2=9F=A8=E2=9F=A9.  It's generated by groff(1).  When y=
ou write
an email or anything similar, you can use <>, but for manual pages,
those symbols are fine, I guess.

> Kind regards, Jonny

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------K8mjYXnVwarS7eiLrMUTaZ2n--

--------------BN1hj90zbHp3tt0FetatOYJB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTTZ2wACgkQnowa+77/
2zIBwA//bVwVGji+fv95BqeJSlD/4DdxRzrxPOa+P2YOmzSVz+tUi1uSjmtdj0gK
zKkXSqNRSIEUGO+KoX/If37L4AhxlHK9b56O9ocMx4MM2mnUyDej1OhzmlKvp7aV
c8M2SAH5hz/MV2kEfbCo20Lhj1p3rZvNpxmSsRyAfQVe5mYkH8d0UH0xWHfJS8vE
u8nVA4B4UrAueJdbaV+bpm4fCxURFbZf9saeStbMaPi9mQfvisyCG3JcS8NXk4gN
DlNdltnt6EcNNcmLqnwIGr1B80whF83qN9KRVOgtKSF0xCJp1VyQCKUqvsZDq+Gx
wi8RN17GKR+CJ4RjWkdKE253R7NP1pm82/Va2MnkKquv2K6UAckgRusJHPU9oDFN
kmreDEriHgwPFqHcgHJMB6vVi3aAARrp2YBqSUJnnkC4PATn/1aV+fCWJm/FSHlr
WBPVyKk/Jmttv8vXB4wYnY+yZ8kJU+AYIXCAqUG8C+q6M/jSji00Xtao2qln7wT5
dBXU7ieKJn+YydFCW4VK93zZ726eFylpFJxgHUkHDanzmM5YWLmHYAQuJ5Ho5gGd
iuAoWfexpLFqqrG8y6f+7Jfab/y9FYR+nGAFTVbwKl5Y0eHbOqnyV5wZ0Uqc8Rqv
V1pZiChQdC7FL5l+3gggOB6VwqRYkFuXs20qXeMSSBjJDsLQ5aM=
=uh+S
-----END PGP SIGNATURE-----

--------------BN1hj90zbHp3tt0FetatOYJB--
