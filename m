Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 319CB6B3FA2
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 13:49:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbjCJMtd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Mar 2023 07:49:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjCJMtc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Mar 2023 07:49:32 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7CAD80914
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 04:49:30 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id g3so4926770wri.6
        for <linux-man@vger.kernel.org>; Fri, 10 Mar 2023 04:49:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678452569;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k5ag6sHAKrSnz5nTfy07DguP6eNewShLqz1sRvCSuoU=;
        b=Rdq27RA/WMTCF2MSfCsHwStuyrKcgk/XFfudgLE/G/IaGGwb1wtqLQ15+X3w8QwNx0
         ZCXTtprdU3eFEQJREHzpxVxIviyDs1aS954C5fSNcU5esxhqHo3HGgLUCE3xxrds+0uW
         Y4ck7n7W/d7zOhBh4OJE0KWU4BJXpOdqNWptQsF2UIMoCkucIaxl6cwO1mQmK9HRwDPt
         x+hzcDTxRTeXgOwe5wKYVa/ee35ldzI/Fmy7B94zy5feIYhaiUUo4lRw4lg23lLfFMnY
         PWlxnijP7LJLpp6EyXou4ogSHPfbhCiVxvU82QnG5xhgYtvBtdDPmmFQqLXz79wO15N5
         w9jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678452569;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k5ag6sHAKrSnz5nTfy07DguP6eNewShLqz1sRvCSuoU=;
        b=nySTOI3ax2Qv+6c0mF/ABSh04BTg0Yfl6iNicKd0g0S6DKN2hRAomjv1oTXw/GLh56
         BPwrJSLA9mEHM4q6Szla2xF0VsoHDdIREvX0FK40AWbssrX7bRmFVaJN6eh/kplO5JAP
         MVfqtARbhMxbOTJqMVXlVApuWKRZaMqaSDdeZNfV0BeOtumL8+w/CyrlJ5+NQkFmMzRm
         7GQU6J72wbwF8K5HgxSZRyLuEfkgaQ7XZucOIC/ohnmh0nSYuAPBtpQsE5Pt7mN24Ukp
         J9Ymrk/ftnGdopbSUpjCP+uJBtxP1SDJUuVte4urtyu2aypbcVD1xoEY2HPe8FckxLTt
         le6Q==
X-Gm-Message-State: AO0yUKUkiyAv/pUGAT0wMKkxeOu8roGBPIhXhlIDf5YaDcq5vw4IvL1k
        5cpW3dNZVi8uBRWM0n9erfC49TUA1y8=
X-Google-Smtp-Source: AK7set+YSjWt53G1npMPW9DIzF8rBa8EjB09EKM86z9WhL/ATnsXb5IK1BHAE1p4ZE4wO4thRFfPpw==
X-Received: by 2002:a5d:4383:0:b0:2bf:e39d:c8a7 with SMTP id i3-20020a5d4383000000b002bfe39dc8a7mr16856467wrq.44.1678452569356;
        Fri, 10 Mar 2023 04:49:29 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id a8-20020adfed08000000b002c53f6c7599sm2155750wro.29.2023.03.10.04.49.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 04:49:28 -0800 (PST)
Message-ID: <b73a9636-1a17-36f3-3718-d9ca3b9293ed@gmail.com>
Date:   Fri, 10 Mar 2023 13:49:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
Content-Language: en-US
To:     linux-man@vger.kernel.org, Brian Inglis <Brian.Inglis@Shaw.ca>
Cc:     Matt.Jolly@footclan.ninja
References: <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
 <edd32b0f-651d-c8c1-cf74-737d75c72578@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <edd32b0f-651d-c8c1-cf74-737d75c72578@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------m2jdQBJRn9xhke1O7kiCC4ZY"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------m2jdQBJRn9xhke1O7kiCC4ZY
Content-Type: multipart/mixed; boundary="------------RrRZHpZ23OWfQpfjIP5E11t0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, Brian Inglis <Brian.Inglis@Shaw.ca>
Cc: Matt.Jolly@footclan.ninja
Message-ID: <b73a9636-1a17-36f3-3718-d9ca3b9293ed@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
References: <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
 <edd32b0f-651d-c8c1-cf74-737d75c72578@Shaw.ca>
In-Reply-To: <edd32b0f-651d-c8c1-cf74-737d75c72578@Shaw.ca>

--------------RrRZHpZ23OWfQpfjIP5E11t0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 3/10/23 07:40, Brian Inglis wrote:
> On Fri, 10 Mar 2023 03:22:12 +0100, Alejandro Colomar wrote:
>> On 3/10/23 02:51, Matt Jolly wrote:
>>> I hope this email finds you well. I am writing to raise an issue that=
 has=20
>>> been causing inconvenience for me (and potentially others). The recen=
t=20
>>> removal of C89 information from man pages (72b349dd8c209d7375d4d4f76e=
2315943d654ee9)=20
>>> has put me in a difficult situation. >> As I continue to work on code=
 that adheres to the C89 style, such as cURL,
>>> I am unable to quickly determine if a particular function can be used=
 or if
>>> it was introduced in a later standard like C 99. >> This slows down m=
y workflow and hampers my productivity.
>>> Therefore, I kindly request that we revert the changes made in the "M=
any=20
>>> pages: Remove references to C89" patch. >> Furthermore, I urge everyo=
ne to recognize the importance of this
>>> information and ensure it is not removed from man pages in the future=
=2E
>> The main problem was that the existing info about C89 was not consiste=
nt.
>> Some pages declared APIs being standard since C89, while others didn't=
=2E
>> Incorrect info isn't much better than no info.
>> I'm curious about cURL's real need for C89. I see that cURL uses GNU
>> extensions (-std=3Dgnu89), which actually pulls most of C99[1] (I thin=
k
>> it pulls the entire C library, and most of the core language).
>> Virtually all (even MS, which has always been the last in this)
>> systems support C99; why would you consciously avoid it? Is there
>> any system that doesn't yet support it? Which are the C libraries
>> that you need to support that don't provide C99 functions by default
>> (or at all)?
>> I'd like to really understand the need for C89 in 2023.
> A quick browse down:
>=20
> 	https://curl.se/download.html
>=20
> shows a number of legacy platforms and versions available:
>=20
> 	SCO UnixWare             	7.10.3
> 	Linux MIPSel             	7.10.7
> 	RISC OS                  	7.11.0
> 	Linux Slackware S390     	7.12.2
> 	BeOS                     	7.12.3
> 	AmigaOS m68k             	7.14.0
> 	SGI IRIX 6.5             	7.15.1
> 	Digital Tru64 UNIX 4.0D  	7.15.1
> 	SCO Open Server 5        	7.15.1
> 	Linux Maemo 3.2          	7.15.5
> 	Linux Slackware PPC      	7.16.2	Slackintosh
> 	Linux OpenWRT 8.09.1 MIPSel	7.17.1
> 	Linux Unslung            	7.17.1
> 	MiNT                     	7.20.1
> 	QNX 6.5                  	7.21.7
> 	Linux =C3=85ngstr=C3=B6m PPC       	7.24.0
> 	Plan9                    	7.28.1	9front
> 	Linux Tizen 2.3 ARM      	7.28.1
> 	OS/2                     	7.36.0

It would be interesting to know which compiler and libc is being
used for each of those.

>=20
> which may need e.g. third party patches to remain secure.
> Not to mention the legacy systems on those platforms.
> Perhaps the US FAA or certain US regional airlines still use these? ;^>=

> Even DOS DJGPP supports GCC 9.3 with -std=3Dc2x!

Indeed.  Port your compiler (and libc) not your program ;)

C99 has been supported by GCC since basically forever.  Most
of it seems to be supported since gcc-3.0 (year 2001),
according to <https://gcc.gnu.org/c99status.html>.  Anyway,
in the manual pages, the relevant part is libc.  glibc supports
C99 since glibc-2.2 (year 2000), according to
<https://gcc.gnu.org/onlinedocs/gcc-9.3.0/gcc/Standard-Libraries.html>.

I would like to see a list of actual systems where there's no
support for C99 functions at all.


Cheers,
Alex


P.S.:  Brian, how's that thing about digit separators going on?
I hope I didn't discourage you by being picky in the commit
separation :-)  I'm really interested in those patches.


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------RrRZHpZ23OWfQpfjIP5E11t0--

--------------m2jdQBJRn9xhke1O7kiCC4ZY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQLJ1EACgkQnowa+77/
2zI/HA//RDIhZx+EOqFXXA+utetT93CDpCtXFO2Tz9E5EQbRZV5uQtbjeF1lx393
m7DaHrVoGgq0jwZwRCyFpSDUarfR7X4qKn2vNlOeNij8BgPKrfbge62xr5d9pbjD
MAtZpv9bzZRQJaW35M1lBgOoeZp97I7ICwfhAi3A6MAb1vVDibGbVIHs2h4D3Ncw
IfmugsEMA3/IAt/3sPTQM18T6bSmMhvk96kq+znonzjT2Ap3rqFbYsvVa4WLgmAZ
D7rIqFl4l7rFaBpaI1HXB40Y+3iitdP90WoAgwgjLhIjNU532/ISCgVTQaoqVKvq
3aaAz2iM7TriAFSTGF0dveyuDKCiQPrR7HegLnC8xWgF2P64rnIztsdJymduWm/E
X89/ci9TNhNGsmX66HNiwgTFXSN+tMaXnibjYo3utKk5LMhFdtuS9ShZeTbaDVmx
Nmi8bRhdQaxStjt33vCOR7m6y76djv3byKARQld18aLMOFsRHVFTDPDjzPquucVC
ZPaBKKVPUzYj+jL4a0yZVUKParSiMhVhOV5z54Qz//qSgnDwPMEJK5zIOiKGa0CQ
7N2jZavqJIO1d0dHfcAg0+oU34SEp7M3HHysSQRuHdn9BICJFUiYYNP60SLGYxT1
upJs/2TaPJQyMFTMTp4y6pMZgoWXfebGjz3gCbWmKw3oKjtWL+o=
=u/Nd
-----END PGP SIGNATURE-----

--------------m2jdQBJRn9xhke1O7kiCC4ZY--
