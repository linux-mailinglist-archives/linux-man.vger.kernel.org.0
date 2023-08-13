Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3406777AE42
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 00:28:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230366AbjHMW17 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 18:27:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230292AbjHMW17 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 18:27:59 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38D5B18F
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:27:58 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C67E561BC8
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 22:27:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A633C433C7;
        Sun, 13 Aug 2023 22:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691965677;
        bh=kZNnNtUCL0UzpuUVhuu7ohyMt/64MWfRWuM9poMddmU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ipezEDemEDk3z5DpZ2zIuEF3D6rVZcqIE841DwHkuN6ByUteUbc3oyt24lgYCGTTu
         xlUWQ2H9eEpLOugVQVzw6DtwcIGHJv2VbUsq5VDGEMWz0zGGbW+n/IDL7M3yB1B8E+
         8ztv0c6wX73YsKEHDnsvfWHHHfTgUNr151cZJlvrS8Dld+5JDRYH/7SXGPCVMNv2M/
         3HHRvqqHKkusXsKttEm6Stb7IwmTCQIu1eSkOeBBGn5LCByMCpQ5FCULL0l7zxXWFm
         Y2ttqaRhRkI2Y/ogGwIOkEVLBFdXw0v16L0YEpf5z8EugC3Ijx5hmgvwqx6aIL1+Af
         MPqtc3Qf5pXFg==
Message-ID: <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
Date:   Mon, 14 Aug 2023 00:27:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Eric Blake <eblake@redhat.com>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230813222035.a5ybcqbpnzlapraz@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uN0E0LM01ksxLsg1gcyGTM7K"
X-Spam-Status: No, score=-11.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------uN0E0LM01ksxLsg1gcyGTM7K
Content-Type: multipart/mixed; boundary="------------Si8Eaw9UYvRLNohADpZioaMl";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Eric Blake <eblake@redhat.com>
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
In-Reply-To: <20230813222035.a5ybcqbpnzlapraz@illithid>

--------------Si8Eaw9UYvRLNohADpZioaMl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[+=3D Eric]

Hi Branden, Eric,

On 2023-08-14 00:20, G. Branden Robinson wrote:
> At 2023-08-13T23:30:30+0200, Alejandro Colomar wrote:
>> And also, I don't even have the sources, which makes things more
>> complex.
>>
>> I wish that POSIX allowed us to have a copy of the original source
>> code of the POSIX manual in the git repository.  With that, I'd find
>> it more interesting to maintain the project again.
>>
>> I'd also like to know what's the original source code of POSIX's
>> manual, because it may very well be roff(7).  If that happens to be
>> true, I'd like to have access to that source, instead of the HTML.
>=20
> My understanding from hermetic comments to the Austin Group mailing lis=
t
> over the years is that:
>=20
> 1. they have used groff for many years (a decade or more);
> 2. they don't use man(7) for their man pages (I was told this directly)=
;
>=20
> and
>=20
> 3. they use (a customized version of) mm(7)--or I _think_ I saw someone=

>    say this, but I have no citation and I am not even sure it was an
>    Open Group employee who claimed it.

I'd love to have the ms(7) source then.  That way I would have a reason
to learn ms(7).  :)
It would certainly be better than the HTML files.  It would be
interesting to adapt the Linux man-pages build system to also support
ms(7) pages.

>=20
> We fixed a bunch of bugs in GNU mm for groff 1.23.0.[1]  I wonder if
> they will be cross with me about that.  Even if they didn't rely on any=

> erstwhile misbehavior, the source churned, some internals changed, and
> if they patched the package, I wouldn't count on the patches still
> applying cleanly.
>=20
>> Would you mind forwarding my rage towards the Open group, which IMO is=

>> not so open?
>=20
> Maybe scrape off the rage first, or you might get a response from Rober=
t
> Elz, who is even more cantankerous and writes at even greater length
> than I do.  ;-)

I promise to scrape the rage if I get a name and an email of who to talk
to.  Maybe Eric can help.  :)

Cheers,
Alex

>=20
> Some time ago I solicited bug reports against groff from them.  So far,=

> nothing, unless they filed anonymously.
>=20
> Regards,
> Branden
>=20
> [1] https://savannah.gnu.org/bugs/index.php?go_report=3DApply&group=3Dg=
roff&func=3Dbrowse&set=3Dcustom&msort=3D0&report_id=3D225&advsrch=3D0&bug=
_id=3D&summary=3D&submitted_by=3D0&resolution_id=3D1&assigned_to=3D0&bug_=
group_id=3D0&status_id=3D3&severity=3D0&category_id=3D121&plan_release_id=
=3D103&history_search=3D0&history_field=3D0&history_event=3Dmodified&hist=
ory_date_dayfd=3D13&history_date_monthfd=3D8&history_date_yearfd=3D2023&c=
hunksz=3D50&spamscore=3D5&boxoptionwanted=3D1#options

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------Si8Eaw9UYvRLNohADpZioaMl--

--------------uN0E0LM01ksxLsg1gcyGTM7K
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTZWOoACgkQnowa+77/
2zJPKw//beptrLhMY+dUF800AUOlq3SgY4+qLk20HzvntY+M2DY8wHyoPIeVy8E5
jJI2d4Ujayycv2+c3XQnuuuhi5zUBdj8WlVWopM7Lz9DGd4Dlxf93zxKRQ7sjud0
14YSoK3Leuh9z00gPIKu98qvkHK4BcRvDmzEr9Sy2SaYqjkIHQuTMagy1TgoQhNf
APBJZURus/J3cSNAZEMfRWDAVfkZziG+Ssr9oEJ60VNHTIEI9u23AT1KOZu4ABZS
dNCTC9ix5C6GBIvN/QjwhAZX1j66l14v9mVJAh2L6u0j5emn0OeoOyXps3x1UT7v
YYbaF1U7fFPTEkazIJw8LqCmcXIqxDYqrE2IGGeKXZ0+ot5u7qLdOfhclE8DWj//
NnvgXA8QPIvYg84x++omLK7b5W1UiEweBbmjaZRuDcctouv1kNhkYa0aG1RIcRrz
ic7cM8OTWuw2V29I0ITYAZMND94awYhXhxuODOLLOof77vMMCf32lYOb+mI0w8pI
ECX4fJkyyb3KwZf3zLoXjn82somydMXUHDp75rB+bbKuOrbEWhzZ+5Sh4QYRYIWj
7TIKZ5DCrZ85+O/P6AxQgYVJUEukboG3AeipOrDP/cjX5XXhVqp661exbTsqopyO
TWTl6io2SP2iLlKXv0vfAQiCz4WvgKp8riGkocEY806fJmcZbRQ=
=7DyR
-----END PGP SIGNATURE-----

--------------uN0E0LM01ksxLsg1gcyGTM7K--
