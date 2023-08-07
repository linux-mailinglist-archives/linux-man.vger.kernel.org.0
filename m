Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E86597728D2
	for <lists+linux-man@lfdr.de>; Mon,  7 Aug 2023 17:13:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbjHGPNm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Aug 2023 11:13:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229823AbjHGPNl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Aug 2023 11:13:41 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C66E10FC
        for <linux-man@vger.kernel.org>; Mon,  7 Aug 2023 08:13:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DDFCD61DE4
        for <linux-man@vger.kernel.org>; Mon,  7 Aug 2023 15:13:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 996C2C433C8;
        Mon,  7 Aug 2023 15:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691421219;
        bh=iIvvEJrxZSyuA10gIZTEkNK07wZHNaa8RLiKOLFkjyI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=QX7mToUqDkX4LJAjoP/Th3YD07H8BJwEfkcevmG0ln28WHspolYlb2MRLqP3dLyZb
         bUlJBV73QuJZszzkN5Y7TPSlTLYHHc+pxbVneUKsigsSF796vODGkfIdE5gNUPcWdT
         12t1s2QDzoEAF2eLQV2TFA1t5883Qbblh9/uDjkvJXHl/dTVPcqP1R3i2CSpDbBwVB
         NLvq6gSHliqOMiLt9Ol0uw2rdxkZDWETZVBwitQG2/33FUFlmkPFyd0zeTmzWuj0zS
         Yd9oA126CBdw/pOMvYt+Qzs8N85iPlvdq7QDHD9tP+BMzNOV4GFRrXGWLB995PV8hH
         yifo7Pj+05CmA==
Message-ID: <834b4a10-8193-22aa-bfd0-57ed8f32466a@kernel.org>
Date:   Mon, 7 Aug 2023 17:13:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: =?UTF-8?Q?Re=3a_=e2=9f=a8_vs_=3c_in_hostname_man_page_of_hostname?=
Content-Language: en-US
To:     Jonny Grant <jg@jguk.org>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
References: <9d4608c3-1a01-b134-c0f5-423af14563eb@jguk.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <9d4608c3-1a01-b134-c0f5-423af14563eb@jguk.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kgy6VTHV803BRQWcEGVAzndw"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------kgy6VTHV803BRQWcEGVAzndw
Content-Type: multipart/mixed; boundary="------------o7vr03E8Dsc5os10eAROqUsu";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
Message-ID: <834b4a10-8193-22aa-bfd0-57ed8f32466a@kernel.org>
Subject: =?UTF-8?Q?Re=3a_=e2=9f=a8_vs_=3c_in_hostname_man_page_of_hostname?=
References: <9d4608c3-1a01-b134-c0f5-423af14563eb@jguk.org>
In-Reply-To: <9d4608c3-1a01-b134-c0f5-423af14563eb@jguk.org>

--------------o7vr03E8Dsc5os10eAROqUsu
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jonny,

On 2023-08-07 15:47, Jonny Grant wrote:
> Hi Alejhandro
>=20
> Just looking at the COLOPHON
> https://man7.org/linux/man-pages/man1/hostname.1.html

```
COLOPHON         top

       This page is part of the net-tools (networking utilities)
       project.  Information about the project can be found at=20
       =E2=9F=A8http://net-tools.sourceforge.net/=E2=9F=A9.  If you have =
a bug report for
       this manual page, see =E2=9F=A8http://net-tools.sourceforge.net/=E2=
=9F=A9.  This
       page was obtained from the project's upstream Git repository
       =E2=9F=A8git://git.code.sf.net/p/net-tools/code=E2=9F=A9 on 2023-0=
6-23.  (At that
       time, the date of the most recent commit that was found in the
       repository was 2021-12-12.)  If you discover any rendering
       problems in this HTML version of the page, or you believe there
       is a better or more up-to-date source for the page, or you have
       corrections or improvements to the information in this COLOPHON
       (which is not part of the original manual page), send a mail to
       man-pages@man7.org
```

>=20
>=20
> Noticed that sometimes the '=E2=9F=A8' doesn't render, perhaps it is no=
t in all fonts, would it be possible to use consider using regular '<' an=
d '>' character in the man page?

That is implemented using man(7)'s UR, which is for URIs.  The source
code of the manual page doesn't know about the glyph that will be
produced in your system.  In your system, groff(1) will try to find
the most appropriate one.  You (or your distributor) can also tweak
that.  You can for example change it to use ASCII '<' and '>'.

In man7.org, I guess that you read it correctly from any machine.
In your systems' pages there's no COLOPHON anymore (I removed it
in man-pages-6.01).  If you're on an old system, you can tweak it.

But you'll still see that character in pages that have URIs in them.
For example, let's consider hier(7):

    $ grep -n '^\.UR ' man7/hier.7;
    640:.UR https://refspecs.linuxfoundation.org/fhs.shtml

which renders as (including the whole section):

STANDARDS
       The   Filesystem   Hierarchy   Standard   (FHS),   Version  3.0
       =E2=9F=A8https://refspecs.linuxfoundation.org/fhs.shtml=E2=9F=A9, =
    published
       March 19, 2015

>  Or even just no angle brackets at all, it's not that common to enclose=
 links in <>

I'm sorry, but that's not an option.  Links /must/ be enclosed in
some other pair of unambiguous quoting, such as <> or "".  See uri(7):

   Writing a URI
       When written, URIs should be placed inside double quotes (e.g.,
       "http://www.kernel.org"), enclosed  in  angle  brackets  (e.g.,
       <http://lwn.net>),  or placed on a line by themselves.  A warn=E2=80=
=90
       ing for those who  use  double=E2=80=90quotes:  never  move  extra=
neous
       punctuation  (such as the period ending a sentence or the comma
       in a list) inside a URI, since this will change  the  value  of
       the  URI.   Instead, use angle brackets instead, or switch to a
       quoting system that never includes extraneous characters inside
       quotation marks.  This latter system, called the =E2=80=99new=E2=80=
=99 or =E2=80=99log=E2=80=90
       ical=E2=80=99 quoting system by "Hart=E2=80=99s Rules" and the "Ox=
ford  Dictio=E2=80=90
       nary  for  Writers and Editors", is preferred practice in Great
       Britain and in various  European  languages.   Older  documents
       suggested  inserting the prefix "URL:" just before the URI, but
       this form has never caught on.

       The URI syntax was designed to  be  unambiguous.   However,  as
       URIs  have  become  commonplace, traditional media (television,
       radio, newspapers, billboards, etc.) have increasingly used ab=E2=80=
=90
       breviated URI references consisting of only the  authority  and
       path portions of the identified resource (e.g., <www.w3.org/Ad=E2=80=
=90
       dressing>).   Such  references are primarily intended for human
       interpretation rather than machine, with  the  assumption  that
       context=E2=80=90based  heuristics  are  sufficient  to complete th=
e URI
       (e.g., hostnames beginning with "www" are likely to have a  URI
       prefix  of  "http://" and hostnames beginning with "ftp" likely
       to have a prefix of  "ftp://").   Many  client  implementations
       heuristically  resolve  these  references.  Such heuristics may
       change over time, particularly when new schemes are introduced.
       Since an abbreviated URI has the same syntax as a relative  URL
       path,  abbreviated URI references cannot be used where relative
       URIs are permitted, and can be used only when there is  no  de=E2=80=
=90
       fined  base  (such  as in dialog boxes).  Don=E2=80=99t use abbrev=
iated
       URIs as hypertext links inside a  document;  use  the  standard
       format as described here.

Cheers,
Alex

>=20
> https://man7.org/linux/man-pages/man1/hostname.1.html
>=20
> Kind regards, Jonny

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------o7vr03E8Dsc5os10eAROqUsu--

--------------kgy6VTHV803BRQWcEGVAzndw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTRChoACgkQnowa+77/
2zIauQ//dKEjvQrujx5Zp20wiC4Z+tampXhL/01QdFgTb1qfRQqvCnyUXPjmX/3M
Udt9wAcnNkuNCmTASlf+fOJST3GA+VOP/vlladzUorWXtpaK4zi3PSuYgplZ4suS
oWpwzdxsyT4Qs76FKLsfTkTOvmWoRDOlOnavRncSAlG0AVoaH4GuOMMnddxim3ie
cP/lf9ubHMTh4GCdqVWURYM8OMpVKRoEhxbzQXsB5SaHOImTn7te9NqLuJDGOo+9
vuYyw+2P06w5JZ0jc9XENsWv0Wa6e0LBaYaiyNFMFtD2NPmBPYZ+lUwmG5cWoYKX
GO321qqpQbRXlAYBO0SDFacXbxbkkk/tI2LmyEmXPYZJW+qJiKUH/nM+A3lUFOG+
ZPKrJCuCwo9qkcAsAjKnRWskXGMvTIxT236W9cQF8evt6dG9N7KCzVVgFNTXMczB
OHFfzSJk8ea6JUn8AOFhHICy1NJk9TyB72y2T3hAU5N6X9wc3wFLmKAPhULg/1DW
4139Yyxnh3D7Re5ULR8bp7bVWDrAs2xNZIFo7uVJAjrqLIgR0oZuME4UhjlOnonI
0nhoOcAW0hM+1KQzYUW+hGziavnbb7kw39NGLcuW97KDYTSI4GfHxgy13yfp61tr
CddQha3G4pFrwk/0dUKnDKtwHlQtv6eL6mJYQu4prV5AQi93Mfg=
=SUob
-----END PGP SIGNATURE-----

--------------kgy6VTHV803BRQWcEGVAzndw--
