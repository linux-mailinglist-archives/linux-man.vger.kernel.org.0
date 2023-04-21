Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4281B6EA927
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 13:35:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231625AbjDULfD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 07:35:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231551AbjDULe6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:34:58 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54B52B74F
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:34:56 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f178da21afso11299315e9.1
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682076895; x=1684668895;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dIOQGV5ujGgIzQheqMFqRsNEy1jaJImmHBKviTg3mkw=;
        b=J3dzaMGXTxX4eRJcfvpDyqz4ig/zBphoK5hMp0XrdH8+WAotFcCi8HC4xjcDZNOdU8
         ODHk+nYaux2V9Dzh6jSLfyR5he0o3x9YP/b0ag0HKMMQJ/nc8VCRmyo8KQIjaqAA7D42
         yHl2VHgSF+YXIqAkw1UjN6Lu8I88+885M64Sc3odt1Nqq6+X2lnb04d/He9+tQQWYn7Z
         /27A9RILzbf5N1rnF7iitNMcUSFUioHgJBbPQ//9KdalI2Tj7A0mFPaUvhM6/Mc75t0x
         TzncvyRZJe/nUVvFrLAJyGX0lS1s+qGS1hCjuzlxenArDLQywVMSXd5JnWtT22NX1gUM
         0aFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682076895; x=1684668895;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dIOQGV5ujGgIzQheqMFqRsNEy1jaJImmHBKviTg3mkw=;
        b=QkOhDJxjWcLcjXWXy8zr8KALL4lKXgfVDVVqVOkq3P3ygshOSWEy4b5Z/6Fa71wbLn
         +niXSmQL6kz8GUVrxs8FG3gouBDytmqmogUMQiXYdPRaxwNya0GFDPYwMzD+PeFzBoaF
         v708YQGGRFns1yRnVFPxd9rx/FeXwovzaYUZ0Fzy07TGm3L9c3BnffgIjqrMJut4c9pJ
         th02/vToJx7mxQMdAOF4r8jCNJytllavirh8mxO/D4mxljDA7d/+OP1QsZSW5rDgPbe8
         WFd1mBADnrOl+gRUL0BeBT1Na25YRwC4UhIr5AVUWspCAkD1XeMx/fZ/kg/RnYC+3FdU
         emUQ==
X-Gm-Message-State: AAQBX9f03R2xe6xe6A8nLQugjEyR/Sl5G2nu6DrLGzeVFT20Up4gqnKg
        ad9GMMY9ednNveEbCdsNuA4=
X-Google-Smtp-Source: AKy350YvKxZKmLHoYhfHM3BdzvZIpJAL14zlyaqhtmdbfQnm+jhkd7GGg3ciApxEFLSlKao1fLHpJw==
X-Received: by 2002:a05:600c:2059:b0:3f1:73c5:66db with SMTP id p25-20020a05600c205900b003f173c566dbmr1505457wmg.20.1682076894607;
        Fri, 21 Apr 2023 04:34:54 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f11-20020adffccb000000b002f90a75b843sm4198646wrs.117.2023.04.21.04.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 04:34:54 -0700 (PDT)
Message-ID: <3459b2a0-6a07-40fc-1e66-db906c3f62ac@gmail.com>
Date:   Fri, 21 Apr 2023 13:34:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 6/6] regex.3: Destandardeseify Match offsets
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <9b1790334c6f1367f7ea63c8e2ce04d2ae0f9eb7.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <09c3c0bf-79e4-1cdf-8aa7-b82155aa3f47@gmail.com>
 <tffsidfrewe4yxhfr534jsznrbv526x2ilrk7k7vfpwabpmxne@5bilrttama4e>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <tffsidfrewe4yxhfr534jsznrbv526x2ilrk7k7vfpwabpmxne@5bilrttama4e>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------PvldCr1YWAcYr7ajLNVOhK0C"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------PvldCr1YWAcYr7ajLNVOhK0C
Content-Type: multipart/mixed; boundary="------------KciUnDEhusVQBL7RBQxYYCnq";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <3459b2a0-6a07-40fc-1e66-db906c3f62ac@gmail.com>
Subject: Re: [PATCH v4 6/6] regex.3: Destandardeseify Match offsets
References: <1df1b495-6e7f-b2b5-174d-f138b6bc3d5c@gmail.com>
 <9b1790334c6f1367f7ea63c8e2ce04d2ae0f9eb7.1681995401.git.nabijaczleweli@nabijaczleweli.xyz>
 <09c3c0bf-79e4-1cdf-8aa7-b82155aa3f47@gmail.com>
 <tffsidfrewe4yxhfr534jsznrbv526x2ilrk7k7vfpwabpmxne@5bilrttama4e>
In-Reply-To: <tffsidfrewe4yxhfr534jsznrbv526x2ilrk7k7vfpwabpmxne@5bilrttama4e>

--------------KciUnDEhusVQBL7RBQxYYCnq
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 4/20/23 17:05, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!
>=20
> On Thu, Apr 20, 2023 at 04:10:04PM +0200, Alejandro Colomar wrote:
>> On 4/20/23 15:02, =D0=BD=D0=B0=D0=B1 wrote:
>>> --- a/man3/regex.3
>>> +++ b/man3/regex.3
>>> @@ -188,37 +188,34 @@ This flag is a BSD extension, not present in PO=
SIX.
>>>  .SS Match offsets
>>>  Unless
>>>  .B REG_NOSUB
>>> -was set for the compilation of the pattern buffer, it is possible to=

>>> -obtain match addressing information.
>>> -.I pmatch
>>> -must be dimensioned to have at least
>>> -.I nmatch
>>> -elements.
>>> -These are filled in by
>>> +was passed to
>>> +.BR regcomp (),
>>> +it is possible to
>>> +obtain the locations of matches within
>>> +.IR string :
>>>  .BR regexec ()
>>> -with substring match addresses.
>>> -The offsets of the subexpression starting at the
>>> -.IR i th
>>> -open parenthesis are stored in
>>> -.IR pmatch[i] .
>>> -The entire regular expression's match addresses are stored in
>>> -.IR pmatch[0] .
>>> -(Note that to return the offsets of
>>> -.I N
>>> -subexpression matches,
>>> +fills
>>>  .I nmatch
>>> -must be at least
>>> -.IR N+1 .)
>>> -Any unused structure elements will contain the value \-1.
>>> +elements of
>>> +.I pmatch
>>> +with results:
>>> +.I pmatch[0]
>>> +corresponds to the entire match,
>> I still don't understand this.  Does REG_NOSUB also affect pmatch[0]?
>> I would have expected that it would only affect *sub*matches, that is,=
 [>0].
>=20
> Let's consult the manual:
>   REG_NOSUB  Do not report position of matches. [...]
>   REG_NOSUB  Compile for matching that need only report success or
>              failure, not what was matched.                    (4.4BSD)=

> and POSIX:
>   REG_NOSUB  Report only success or fail in regexec().
>   REG_NOSUB  Report only success/fail in regexec( ).
> (yes; the two times it describes it, it's written differently).
>=20
> POSIX says it better I think.
>=20
> And, indeed:
> 	$ cat a.c
> 	#include <regex.h>
> 	#include <stdio.h>
> 	int main(int c, char ** v) {
> 		regex_t r;
> 		regcomp(&r, v[1], 0);
> 		regmatch_t dt =3D {0, 3};
> 		printf("%d\n", regexec(&r, v[2], 1, &dt, REG_STARTEND));
> 		printf("%d, %d\n", (int)dt.rm_so, (int)dt.rm_eo);
> 	}
>=20
> 	$ cc a.c -oac
> 	$ ./ac 'c$' 'abcdef'
> 	0
> 	2, 3
>=20
> 	$ sed 's/0)/REG_NOSUB)/' a.c | cc -xc - -oac
> 	$ ./ac 'c$' 'abcdef'
> 	0
> 	0, 3
>=20

I like this example, and the quotes from POSIX.  I'll link to your
message in the commit log.

>=20
> ...and I've just realised why you're asking =E2=80=92 I think you're re=
ading too
> much (and ahistorically) into the "SUB" bit;

[...]

> Actually, let's consult POSIX.2 (Draft 11.2):

[...]

>   609  If the REG_NOSUB flag was not set in cflags, then regcomp() shal=
l set re_nsub to
>   610  the number of parenthesized subexpressions [delimited by \( \) i=
n basic regular
>   611  expressions or ( ) in extended regular expressions] found in pat=
tern.
> both as present-day.

[...]

> It also allows an application to request an arbitrary number of sub-
>   810  strings from a regular expression. (Previous versions reported o=
nly ten sub-
>   811  strings.) The number of subexpressions in the regular expression=
 is reported in
>   812  re_nsub in preg.

[...]

>=20
> So: yes, there was a substitution interface that got cut.
> The name is actually a hold-over from
> "don't allocate for ten subexpressions in regex_t".

So, the name indeed seems to come from "subexpressions", which confirms
that it's just confusing as hell.

>=20
> I think changing our description to
>   REG_NOSUB  Only report overall success. regexec() will only use pmatc=
h
>              for REG_STARTEND, and ignore nmatch.
> may make that more obvious.

Yeah, this, and further the version in v8, makes the behavior clear, even=

if the name is brain-damaged (but there's nothing we can do about it :/).=


Cheers,
Alex

>=20
> Best,
> =D0=BD=D0=B0=D0=B1

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------KciUnDEhusVQBL7RBQxYYCnq--

--------------PvldCr1YWAcYr7ajLNVOhK0C
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCdMoACgkQnowa+77/
2zIyRg//ZCXSdMEagbW40Lc6Q6l5HYoltIYg9hPgYMrpBykX/GHgJkyIymuG9XeQ
EtKk0hKPLhdquYI2TTf64PYLl7/UWOjJzzfWbwnTUMrdSVVGx28BAgk62V4mGpOx
MTObXkp7Pj3LcDmaK7f+N6byh6RkeH07n8F8PXbfI7fKw27JSZlpqTbvzgWGiTF6
g/5TDtlppDSylWJXqSBBB586PV0Ae6AokoSJARnEyMhTPTqypFdQLNWEau/W81a0
U5U0U3GFe1nrD63+t4JSNVIBw/Bttzls5Bw4Dmt9pk9BJT+3jbVT4bqzEmgzLoFx
QbwlzzavBdNf1D2+kSv2Da7uuxdaLgteJnXZ9b+JtbKpGIa5rKZx+deNdBXddeGm
88Kb7xWnOMcFkJfcP+hQNpPEyD+7yU+Gf1oxQ5PtPPSVIOAzsNpHETnk72Y81I87
FhKodO/NA48cdo63od2HWZxOrf76e7JL9p4ALK04OSFQ0SgE2JiIHb63GL6K1ZFo
E5cm/f9VSB9cMcqtkA4bHndTuvCycyEB4DSGO39HlMWMqydupXIQ6n/iFB8GcuFv
Vqmz827vESbO4CyN1JzS6uRipDgzDrDvBH/qrFWzZs2dvfFYcdlM0w7p5cLIejzx
KS2zTICnNo9Ro6qoMDnJq1aKbk5IqDwSwuYT8DU5eQKxwLYdUTY=
=WhVW
-----END PGP SIGNATURE-----

--------------PvldCr1YWAcYr7ajLNVOhK0C--
