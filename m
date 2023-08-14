Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A126D77BF1C
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 19:38:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231154AbjHNRiF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 13:38:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231201AbjHNRhi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 13:37:38 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F117E10D5
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 10:37:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8D72164141
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 17:37:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B236C433C7;
        Mon, 14 Aug 2023 17:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692034656;
        bh=Hp1b16JPboIQwhUZfU77yf6cEIGAlthIXo9itWmYrTc=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=fmHuMQZwWY8daqvhJAM593E5W3bQ/n+h02ghbbfloOvwHFJ3+K0x+gTA6oNLRJMvT
         sAlsVixEygd15d2egNCCmcYvX6W5k401csqgCI5+STh1EaxQuj1PWlIDYBIV2ZLElp
         HhE2Tp9mSzlWIJ1cdRCFJyBbqk99knXKdsi6IQ69BM2aqEuD+o1qu+b+IAnGqRu0t1
         Vnbj+Hzh5PjkwAqxflVpzSkmgslHijEbTLzS8qF76zOtvqtq05efqXM8HUKx2Lfxmn
         u1pbPVWEEBQ2zR2KjKfId0bTrSUB2i3Pt3gxv0gJD5rrUcu9dPd70INAKcMLWe/Nm0
         mz0LeG7dciJ6Q==
Message-ID: <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>
Date:   Mon, 14 Aug 2023 19:37:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
To:     Deri <deri@chuzzlewit.myzen.co.uk>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
 <21985157.EfDdHjke4D@pip>
Cc:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <21985157.EfDdHjke4D@pip>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cgmW6KEK4flK20jC22rCffrf"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------cgmW6KEK4flK20jC22rCffrf
Content-Type: multipart/mixed; boundary="------------OIgL0xgUOcvqplbtwiRqgO5a";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
Message-ID: <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
 <21985157.EfDdHjke4D@pip>
In-Reply-To: <21985157.EfDdHjke4D@pip>

--------------OIgL0xgUOcvqplbtwiRqgO5a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Deri, Branden,

On 2023-08-14 18:06, Deri wrote:
[...]

> Line missing in the bespoke an.tmac I provided, new version attached.

Thanks; will try.

> I know=20
> Alex wants to run against a stock version of groff, with minimal=20
> customisation, and, once my branch is merged, there will be further pru=
ning,=20
> but unless you add to Branden's wish list to include an ability to cont=
rol the=20
> hierarchy of the bookmark panel, you will need a customised an.tmac. Th=
e=20
> reason is because the stock an.tmac has a hard coded hierarchy where th=
e .TH=20
> line is given level 1 but as you want to have separate sections these n=
eed to=20
> be level one and everything else is moved up a level. Of course this ju=
st=20
> means making the starting level configurable on the command line, i.e. =

> -r startbkmk=3D2 or some such.

Deri's wish is my wish :)

> Another change which would need to be accepted is=20
> to allow a fourth parameter to .MR which is the destination name. Norma=
lly the=20
> name of the destination is derived from the first two parameters concat=
enated=20
> with "_", but if the name part of the .MR call to the man page includes=
 non-
> ascii characters (such as ".MR my\-lovely\-page 7 ,") then it needs to =
provide=20
> a "clean" destination name.

Is this really needed?  Can't gropdf just translate them internally?  Say=
, do
unconditionally the equivalent of `| tr - _ |` or something like that.

[...]

>=20
> Fonts
>=20
> There are 2 reasons I included fonts in the build environment:-
>=20
> A) The man pages which define the various iso-8859 pages contain many g=
lyphs=20
> which are not defined in the standard groff fonts, so I used the Tinos =
font=20
> from google which improves the coverage. If you want to get rid of the =
fonts,=20
> and rely on just the fonts in groff, you can change line 4 of anmark.tm=
ac to:-
>=20
> .special S U-TR
>=20
> Which is an improvement on the standard fonts, and should be available =
as=20
> standard if the URW fonts were found when groff was built. You will see=
=20
> differences in iso-8859-7 and iso-8859-8 for example.

I'll try.  I wouldn't want to make those ISO-8859 pages useless, though.

>=20
> B) If you build the LinuxManBook using the 1.23.0+ flavour (with the ne=
wer=20
> gropdf that produces a substantially smaller pdf) it requires a slightl=
y=20
> different font format so needs the embedded font directory. If you have=
=20
> installed groff from the deri-gropdf-ng the new format fonts will have =
been=20
> installed, so the embedded font directory can be removed.

Do you have an estimate of how long your branch could take to merge?
As in, more than a month or less than a month?

>=20
> Makefile
>=20
> The simplest option would be to add a new rule to the Makefile which is=
=20
> dependent on all the man pages have been built, and cd's into the scrip=
ts/
> LinuxManBook directory and calls the program with the location where th=
e man=20
> pages exist. However, I suspect Alex fancies something more complicated=
 by=20
> replacing the perl with a hybrid of shell command and make magic.

You suspect well.  :)

>=20
> I attach a new copy of BuildLinuxMan.pl which is an amalgam of mine and=
=20
> Brian's code. This has the new -paper flag.
>=20
> Alex's MR branch
>=20
> The new program now recognises existing .MR's in the document and provi=
des the=20
> "clean" destination name, so it should run against the new branch.
>=20
>> 	nodemask ... on-
>> 	...
>> 	line, ...
>>
>> There appear to be 24 single word instances of online and 12 outdated
>> hyphenated compound word instances of on-line across all man pages.
>>
>> UI: I also noticed, while looking for tables to compare, that pages ar=
e
>> ordered by filename not like rpmvercmp/ls -v/RPM::VersionSort e.g
>> ISO_8859-2 is after ISO_8859-16 which may not be as expected.
>> Used rpmvercmp in last line of perl sub sortman and works as expected.=

>=20
> I have used Sort::Versions (see above), thanks for the suggestion.
>=20
>> Tech nitpick: .Z is still recognized by GUIs as compress output
>> (UNIX-compressed file) - is there no other file type suffix used for
>> ditroff intermediate output? Aha - Alex says .set:
>>
>> 	https://lists.gnu.org/archive/html/groff/2023-04/msg00213.html
>>
> Well, that's settled.
>=20
>> Added variables and changed those also in BLM-letter.pl: copy attached=
=2E
>>
>>> Thanks for your help.
>>
>> Happy to help in any way.
>=20
> Hope you're happy with this version.

Let's open the improved Christmas present!  :D

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------OIgL0xgUOcvqplbtwiRqgO5a--

--------------cgmW6KEK4flK20jC22rCffrf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTaZlYACgkQnowa+77/
2zIESw/+LFM8SbeNEaSDlReeQtZAQt6R/y0MnLuG+yHQRgLgYQuJQvpmlLHZNqHc
+wM/38jQarl3OzV7p8ksSrvtv12Lxea7BNRmD4grXlp74zxjIk0LFqnaQ/orqKVQ
yC2NvwffQlM6m1tIW+KObefyzOqVdDMaHz6n5wVuyqRdd5qcZL1MwAE+WCItTUl8
7+UtSUbQCvx5YznmOr3CZVtPf77RExH+oOeRHux0a6QQXH7Py9yayP7HAxkOH8pj
5f+DBqoL87F0xiBHm5ebFgdL1HD3UYjQy9612U6/F+LotC6jRbTBxEWNncUMYMp2
9PocRtvux6Rd9+6VJ+sfEsKClaf0eHN+NQdeNn7E+ySHlkY0QC2Pqhnr5jyr7FcP
T/GKsSdhWsDyKl/C/ACi4/tIpZgt8t1366MzoGCFBqekCfOyFcK8gmIxgLL9cCYN
3XjZIpwbbCpCbgwCQsNCq4D+hzURILJkVae22YWJZKKhiU/TcyjftAtiXBO95WHe
kBfbGAR0R+3MtRXfwJKrmCKUYtTAZ/jz5rzE5rI5ESv/E9fiDzD122h9kaI332W9
kxJ2pfPtYY9LCF0Ez5qdFjHrWR2X4mdvtwaYsWXFeUbZB4FMLCByQ80efznxuHhR
+4BA2q0xqypaVeL/1hAjK/M9Sk6/03PLTTI9Ca3V6Rh02w02PSI=
=4aaC
-----END PGP SIGNATURE-----

--------------cgmW6KEK4flK20jC22rCffrf--
