Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E6D16C3FA7
	for <lists+linux-man@lfdr.de>; Wed, 22 Mar 2023 02:20:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbjCVBUl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Mar 2023 21:20:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbjCVBUk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Mar 2023 21:20:40 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 096962121
        for <linux-man@vger.kernel.org>; Tue, 21 Mar 2023 18:20:39 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso12110698wmb.0
        for <linux-man@vger.kernel.org>; Tue, 21 Mar 2023 18:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679448037;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LhgTRQxLn4rAWHyNfckhbR0pMpSTyIJidfKMl3Rm+PM=;
        b=gHW2V47c/Zv2nbyLElEW+UAE3cDl7hW1xJCYbZnnblNJSST8LKT7v1NyGJYVBI9u9l
         63jqNPruzzLpsvyejuaW3/nK7tcpx5y8WltSB6YVbnW0NGnxAzOQf04OKuMdZpGX9awG
         1R3N+Cp106k+EBFNqA3QEyNmL1UWr5L7py98RKmhYcW4OZac3ugzbN7ptyliQChA/LmA
         A6acssUyl6lH50jga628mc4HvrbVCOK/czi2Y4csvdguCYx4kyJbA2dfXO+ztyHnr28r
         Y//ZrFFI5CmJwO6dO+DmwVT/6F28zX0hAl2hHMFKxOfJ4bux4Y8Co1iUCvlo/XlzJkFW
         4EJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679448037;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LhgTRQxLn4rAWHyNfckhbR0pMpSTyIJidfKMl3Rm+PM=;
        b=KSdJH7Q1i+MhjJwQBbVvcNZ/bnzkq0PlaQTySdg5VKoGiQSZiMbX3JPR37IYVVb4Zs
         +7xf2PbX/n+6kVy9OMzzwal1OYHLnKz7g6lHfwCqEE1J8RApsRoQcdm/9oVOXUD9i4Bd
         iPuNVrR4rrGE5le4J0wjKFcq+/PRqGPSvuUecCHdjwIPOsi3kSfxUudMQM7O74GoByf3
         k6sAta3GyC1kP/cCH3/gJJwhAVAMi22vmH0F297l+6wZcoZqr95jLBxtBwwwuhv5tPZ+
         +0wX+HTacYtl4S++FG5RSijfa6RNHzqMNHP/GDj2JCl3bhsC2nu2QDFAGrAXxqK1Upzo
         yzNA==
X-Gm-Message-State: AO0yUKU8GnNZcG9OE6+zPUKw9Syzg8pOebVEEDoGNBq7W5UAJhuINOLB
        /gSf8EGzS0JeXdzl796itRT6D3y1fIs=
X-Google-Smtp-Source: AK7set+GYXKn8SmUZyxg18g+oCTVG+22D9n53YFyDH+gGKuWaXKKYR7d42/PE7nOk6OsQ8DLKQwTEw==
X-Received: by 2002:a7b:c3d4:0:b0:3ee:42fd:7768 with SMTP id t20-20020a7bc3d4000000b003ee42fd7768mr2522282wmj.1.1679448037142;
        Tue, 21 Mar 2023 18:20:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id 4-20020a05600c028400b003eb192787bfsm15052277wmk.25.2023.03.21.18.20.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 18:20:36 -0700 (PDT)
Message-ID: <c4d97aec-427a-a082-ff1e-dbe9ae968c94@gmail.com>
Date:   Wed, 22 Mar 2023 02:20:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
To:     linux-man@vger.kernel.org, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
References: <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
 <6aad40b5-04ca-68d8-7da2-cb4a7bed7ded@Shaw.ca>
 <a1a5ea63-9fbe-17f6-fe69-1850552a5422@gmail.com>
 <CR75QLUXYL2F.9ZFRDB68HXGW@morphine>
 <bef1b957-b1ea-2562-57a9-ad9ef6d8b951@gmail.com> <ZBVE1QUaoCZZ73Os@dj3ntoo>
Content-Language: en-US
Cc:     Sam James <sam@gentoo.org>, Marcos Fouces <marcos@debian.org>,
        Tom Schwindl <schwindl@posteo.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZBVE1QUaoCZZ73Os@dj3ntoo>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0sy0r0DsisBfQj6oGGdGM9Pv"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0sy0r0DsisBfQj6oGGdGM9Pv
Content-Type: multipart/mixed; boundary="------------jo6JrWwKEV0mtzfi9Iw5g10j";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: Sam James <sam@gentoo.org>, Marcos Fouces <marcos@debian.org>,
 Tom Schwindl <schwindl@posteo.de>
Message-ID: <c4d97aec-427a-a082-ff1e-dbe9ae968c94@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
References: <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
 <6aad40b5-04ca-68d8-7da2-cb4a7bed7ded@Shaw.ca>
 <a1a5ea63-9fbe-17f6-fe69-1850552a5422@gmail.com>
 <CR75QLUXYL2F.9ZFRDB68HXGW@morphine>
 <bef1b957-b1ea-2562-57a9-ad9ef6d8b951@gmail.com> <ZBVE1QUaoCZZ73Os@dj3ntoo>
In-Reply-To: <ZBVE1QUaoCZZ73Os@dj3ntoo>

--------------jo6JrWwKEV0mtzfi9Iw5g10j
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[CC +=3D Sam, Marcos]

Hi Oskari, Sam, Marcos,

On 3/18/23 05:58, Oskari Pirhonen wrote:
> Hi,
>=20
> On Thu, Mar 16, 2023 at 02:43:54 +0100, Alejandro Colomar wrote:
>> Hi Tom,
>>
>> On 3/15/23 19:10, Tom Schwindl wrote:
>>> Hi Alex,
>>>>
>>>> Do you know if we can distribute them?  which license applied to the=
m?
>>>> I'm worried that some distros are very strict in what can be distrib=
uted
>>>> in a package (e.g., Fedora, Debian (main)).  There were issues with
>>>> man-pages-posix in the past.
>>>>
>>>> Should we maybe open a separate project iso-c-drafts that installs
>>>> drafts of the ISO C standards and maybe some scripts that will be us=
eful
>>>> with them?
>>>>
>>>
>>> This is probably a legal gray area and I'd be careful.
>>
>> Yeah, that's what I think.  Until I'm 100% sure that it's legal, I
>> won't do it.
>>
>>> ISOs license agreement[0] explicitly states the following:
>>
>> I had some doubts, because since the drafts have always been published=

>> in many sites, I don't know if that's legal, or simply ISO doesn't
>> enforce the license over drafts...  If someone knows for sure and can
>> clarify, that would help.  In fact, maybe I can write to someone in th=
e
>> committee...
>>
>> Thanks,
>>
>> Alex
>>
>>>
>>>   > The ISO publication(s) you order is/are copyrighted by the Intern=
ational
>>>   > Organization for Standardization. You acknowledge and agree to re=
spect ISO=E2=80=99s
>>>   > copyright in our publications by purchasing, downloading, copying=
 or
>>>   > otherwise using (an) ISO publication(s). Except as provided for u=
nder this
>>>   > Licence Agreement, you may not lend, lease, reproduce, distribute=
 or
>>>   > otherwise commercially exploit ISO publication(s). In the case of=
 joint
>>>   > standards (such as ISO/IEC standards), this clause shall apply to=
 the
>>>   > respective joint copyright ownership.
>>>
>>> As we (or a third party) can only produce a plaintext version by down=
loading the
>>> original PDF draft and converting it, we agree with the above. Thus, =
we can't
>>> "reproduce" or "distribute" the standard, at least that's my understa=
nding[1].
>>> I highly doubt that major distibutions would take that risk, nor shou=
ld we.
>>>
>>>
>>> [0] <https://www.iso.org/terms-conditions-licence-agreement.html#Cust=
omer-Licence>
>>> [1] For the record: I'm not a lawyer, this is not legal advice. It's =
very well
>>>     possible that I've overlooked something.
>>>
>=20
> Gentoo has a concept of "fetch restricted packages" [1] where ebuilds
> are available through Portage, but you have to provide the distfiles
> yourself. Perhaps something similar in spririt can be used here if the
> license terms forbid/are unclear about distributing the standards (or
> drafts) themselves?
>=20
> Here's my idea:
>=20
> - Create the utils with the assumption that the docs exist at some TBD
>   path and ship them (the utils, that is).

I think that would qualify as a "contrib" package in Debian policy.  So
that would be for a new package, separate from the man-pages, which
should go in main.

> - Include a check for the docs and instruct the user to install them to=

>   that path manually if they don't exist.

I'm not even sure about the legality of that.  So far I've written the
script assuming the files exist, and we'll see how to get the files
there (I have them in my system).  I'll be cautious before writing any
advice on how to get them in a program :).

> - If it turns out the docs can be distributed, the check can be removed=
=2E
>   Although it might be better to keep it around for the sake of the
>   pickier distros in hopes that they don't patch out the utils from
>   their packages.
>=20
> Obligatory I'm not a lawyer either.
>=20
> For people unfamiliar with Gentoo terminology, "ebuilds" are basically
> scripts used to fetch, build, and install packages and "distfiles" are
> what's being fetched (source code, etc).
>=20
> - Oskari
>=20
> [1]: https://devmanual.gentoo.org/general-concepts/licenses/index.html#=
license-implied-restrictions

Here goes something that works for c89, c99, and c11 (thoroughly tested
only for c89; lightly tested for the others).

I'll create a public git repository for it in my website later this week
(if I find the time this week).

Cheers,

Alex
---

(I might change the interface in the future, and will document it when
I'm convinced by it.)


$ cat /usr/local/bin/stdc=20
#!/bin/bash

set -Eefuo pipefail;

prefix=3D"/usr/local";
datarootdir=3D"$prefix/share";
docdir=3D"$datarootdir/doc";

err()
{
	>&2 echo "$(basename "$0"): error: $*";
	exit 1;
}

grep_proto()
{
	pcregrep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$";
}

c89_libc_summ()
{
	sed -n '/A.3 LIBRARY SUMMARY/,$p' <"$docdir/c/c89/c89-draft.txt";
}

c99_libc_summ()
{
	sed -n '/Library summary$/,/Sequence points$/p' \
		<"$docdir/c/c99/n1256.txt";
}

c11_libc_summ()
{
	sed -n '/Library summary$/,/Sequence points$/p' \
		<"$docdir/c/c11/n1570.txt";
}

case $# in
0)
	err "missing ISO C version.";
	;;
1)
	err "missing function name.";
	;;
2)
	;;
*)
	shift;
	shift;
	err "unsupported extra argument(s): $*";
	;;
esac;

case "$1" in
c89)
	shift;
	c89_libc_summ | grep_proto $@;
	;;
c99)
	shift;
	c99_libc_summ | grep_proto $@;
	;;
c11)
	shift;
	c11_libc_summ | grep_proto $@;
	;;
*)
	err "$1: unsupported ISO C version.";
	;;
esac;

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------jo6JrWwKEV0mtzfi9Iw5g10j--

--------------0sy0r0DsisBfQj6oGGdGM9Pv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQaV90ACgkQnowa+77/
2zKOFBAAiGvtBU5rsVXDfuGmWIRB/wERm2o+7mW+h6Nnj5bKUXw5VG3cXGszfoxH
p1fzJQjgn7vgoircH6vcWH4sNJHz9PFR5MsZM6QGKKm9NqlkYDO06ruDNjjpL1JH
O33ZMY8v0qGpN7+UAZCsj4+7ZVOd1ooWou77D1nDkT3lhTJp0ME/9L7DjHkPevEc
gE3aIrfOQIoKXdobwY1sJYYkI7+DGS34YsaES0BUhHjy7UVxbJa9/qZNHqUWfFk3
Zcz5450oXegwxbiseSBvcIYP4rXnDgb1bMWuH3jcuyugOdWfJCJE89TagUR0iwTl
jSckK2fBiuu3HELELxMlBYFDAyhSA/rO6J3nxY3nExkQW+xDBsqCo6ebafDvAIwr
h6rMk9PC9EQ6vELGuLaa6Lq1LBXXeI7ao46gtgjMoHV59XtTLpr4jM7SgTeTZZTL
HI1Ik1z40mzkBjKP/NQdYPWRj8XBYbj+ozMGq7DAbaQenNK42GmHapBqH7l133Me
gLRAUUJPIuuBPmIYC5dQdQu7I8La9YMPzp5tx7F4Myu+Mp/7A09/vTCTOI6jNsQ0
wbOhwsJmD0P8sm/IldLqbzoesVSUTQBNagxIK6u7mmC48PCH6++nORgXQJQCV1Om
nbF7NHg6eb0GLgBjq6ydHZEKXIjg8idYo5gzNP6XYKgS2Uqn+sw=
=r7l8
-----END PGP SIGNATURE-----

--------------0sy0r0DsisBfQj6oGGdGM9Pv--
