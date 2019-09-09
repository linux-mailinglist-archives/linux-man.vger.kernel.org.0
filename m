Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0084CADBF3
	for <lists+linux-man@lfdr.de>; Mon,  9 Sep 2019 17:15:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728527AbfIIPPc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Sep 2019 11:15:32 -0400
Received: from mx1.redhat.com ([209.132.183.28]:41740 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727049AbfIIPPc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 9 Sep 2019 11:15:32 -0400
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 76ED269EE7;
        Mon,  9 Sep 2019 15:15:31 +0000 (UTC)
Received: from [10.3.116.234] (ovpn-116-234.phx2.redhat.com [10.3.116.234])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DE7A5D6B7;
        Mon,  9 Sep 2019 15:15:30 +0000 (UTC)
Subject: Re: f_owner_ex vs. POSIX
To:     Rich Felker <dalias@libc.org>, Florian Weimer <fweimer@redhat.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        glibc list <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>
References: <a6d65cee-a909-449c-484d-66cd26093958@redhat.com>
 <bdc9527b-6595-9f4e-b35d-3796967e044c@gmail.com>
 <87mufmvmlm.fsf@oldenburg2.str.redhat.com>
 <20190903035132.GV9017@brightrain.aerifal.cx>
From:   Eric Blake <eblake@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=eblake@redhat.com; keydata=
 xsBNBEvHyWwBCACw7DwsQIh0kAbUXyqhfiKAKOTVu6OiMGffw2w90Ggrp4bdVKmCaEXlrVLU
 xphBM8mb+wsFkU+pq9YR621WXo9REYVIl0FxKeQo9dyQBZ/XvmUMka4NOmHtFg74nvkpJFCD
 TUNzmqfcjdKhfFV0d7P/ixKQeZr2WP1xMcjmAQY5YvQ2lUoHP43m8TtpB1LkjyYBCodd+LkV
 GmCx2Bop1LSblbvbrOm2bKpZdBPjncRNob73eTpIXEutvEaHH72LzpzksfcKM+M18cyRH+nP
 sAd98xIbVjm3Jm4k4d5oQyE2HwOur+trk2EcxTgdp17QapuWPwMfhaNq3runaX7x34zhABEB
 AAHNHkVyaWMgQmxha2UgPGVibGFrZUByZWRoYXQuY29tPsLAegQTAQgAJAIbAwULCQgHAwUV
 CgkICwUWAgMBAAIeAQIXgAUCS8fL9QIZAQAKCRCnoWtKJSdDahBHCACbl/5FGkUqJ89GAjeX
 RjpAeJtdKhujir0iS4CMSIng7fCiGZ0fNJCpL5RpViSo03Q7l37ss+No+dJI8KtAp6ID+PMz
 wTJe5Egtv/KGUKSDvOLYJ9WIIbftEObekP+GBpWP2+KbpADsc7EsNd70sYxExD3liwVJYqLc
 Rw7so1PEIFp+Ni9A1DrBR5NaJBnno2PHzHPTS9nmZVYm/4I32qkLXOcdX0XElO8VPDoVobG6
 gELf4v/vIImdmxLh/w5WctUpBhWWIfQDvSOW2VZDOihm7pzhQodr3QP/GDLfpK6wI7exeu3P
 pfPtqwa06s1pae3ad13mZGzkBdNKs1HEm8x6zsBNBEvHyWwBCADGkMFzFjmmyqAEn5D+Mt4P
 zPdO8NatsDw8Qit3Rmzu+kUygxyYbz52ZO40WUu7EgQ5kDTOeRPnTOd7awWDQcl1gGBXgrkR
 pAlQ0l0ReO57Q0eglFydLMi5bkwYhfY+TwDPMh3aOP5qBXkm4qIYSsxb8A+i00P72AqFb9Q7
 3weG/flxSPApLYQE5qWGSXjOkXJv42NGS6o6gd4RmD6Ap5e8ACo1lSMPfTpGzXlt4aRkBfvb
 NCfNsQikLZzFYDLbQgKBA33BDeV6vNJ9Cj0SgEGOkYyed4I6AbU0kIy1hHAm1r6+sAnEdIKj
 cHi3xWH/UPrZW5flM8Kqo14OTDkI9EtlABEBAAHCwF8EGAEIAAkFAkvHyWwCGwwACgkQp6Fr
 SiUnQ2q03wgAmRFGDeXzc58NX0NrDijUu0zx3Lns/qZ9VrkSWbNZBFjpWKaeL1fdVeE4TDGm
 I5mRRIsStjQzc2R9b+2VBUhlAqY1nAiBDv0Qnt+9cLiuEICeUwlyl42YdwpmY0ELcy5+u6wz
 mK/jxrYOpzXKDwLq5k4X+hmGuSNWWAN3gHiJqmJZPkhFPUIozZUCeEc76pS/IUN72NfprZmF
 Dp6/QDjDFtfS39bHSWXKVZUbqaMPqlj/z6Ugk027/3GUjHHr8WkeL1ezWepYDY7WSoXwfoAL
 2UXYsMAr/uUncSKlfjvArhsej0S4zbqim2ZY6S8aRWw94J3bSvJR+Nwbs34GPTD4Pg==
Organization: Red Hat, Inc.
Message-ID: <7eaf8ea9-88a6-6531-acf4-46710b3e122b@redhat.com>
Date:   Mon, 9 Sep 2019 10:15:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190903035132.GV9017@brightrain.aerifal.cx>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="2n7iKXJ9ohVtUySCfkJBndYpXQ9OpVFaR"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Mon, 09 Sep 2019 15:15:31 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--2n7iKXJ9ohVtUySCfkJBndYpXQ9OpVFaR
Content-Type: multipart/mixed; boundary="XlrJGLNf2oyIZb0PpMC9h84jjaAEwSmjS";
 protected-headers="v1"
From: Eric Blake <eblake@redhat.com>
To: Rich Felker <dalias@libc.org>, Florian Weimer <fweimer@redhat.com>
Cc: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
 glibc list <libc-alpha@sourceware.org>, linux-man@vger.kernel.org,
 Adhemerval Zanella <adhemerval.zanella@linaro.org>
Message-ID: <7eaf8ea9-88a6-6531-acf4-46710b3e122b@redhat.com>
Subject: Re: f_owner_ex vs. POSIX
References: <a6d65cee-a909-449c-484d-66cd26093958@redhat.com>
 <bdc9527b-6595-9f4e-b35d-3796967e044c@gmail.com>
 <87mufmvmlm.fsf@oldenburg2.str.redhat.com>
 <20190903035132.GV9017@brightrain.aerifal.cx>
In-Reply-To: <20190903035132.GV9017@brightrain.aerifal.cx>

--XlrJGLNf2oyIZb0PpMC9h84jjaAEwSmjS
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 9/2/19 10:51 PM, Rich Felker wrote:
> On Mon, Sep 02, 2019 at 03:44:53PM +0200, Florian Weimer wrote:
>> * Michael Kerrisk:
>>
>>> I do not know what the rationale was for the addition of the 'enum',
>>> and it wouldn't surprise me if there was no public discussion about
>>> it. The use of an 'enum' strikes me as a slightly odd decision (given=

>>> that the kernel uses 'int') but, related to your point below, there
>>> is precedent in, for example, the use of an 'enum' for 'idtype_t' in
>>> waitid() inside glibc, while the kernel type for the argument in
>>> the underlying system call is 'int'.
>>
>> There is also the issue of -fshort-enum.  Some people probably expect
>> that they can use that option and still use glibc headers.
>>
>> I do not have any inside knowledge why things are like they are.
>> Presumably we can switch the type member to int.
>=20
> I'm strongly in favor of switch to int. enum types are an
> ABI/compatibility nightmare and have little purpose (unlike enum
> constants which are actually useful).

I'm also in favor of 'int' (but not the 'int32_t' proposal mentioned in
note 4538).  Does anyone volunteer to write up the glibc patch, while I
report back to the Austin Group that 'int' is the preferred type for
standardization?

--=20
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3226
Virtualization:  qemu.org | libvirt.org


--XlrJGLNf2oyIZb0PpMC9h84jjaAEwSmjS--

--2n7iKXJ9ohVtUySCfkJBndYpXQ9OpVFaR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEccLMIrHEYCkn0vOqp6FrSiUnQ2oFAl12bJEACgkQp6FrSiUn
Q2ocYQf/fyEyj1Y7vMXz9Hei3EB7YqpMHsi8EICKPlzWiYn/w/KEhDd/+CaVLvVz
onvWFDrQyHhLbiG1w7eEPxRh9kJFbiKPwKnDibVO2Uc+di5TeUnk7sLTK7r/ssEs
iIDgmDSiEczfHApHXoxOvEHRwxuMeO+eyJ1EXfuCZ5mFGq6SPDxaByi4iBqV5m5n
I4WndblpuVUUZ4kJ82qQ65PzZ375oxVcmy432JyBTIxEYZKhuu63/F7e+afqHmOx
dFloraRm/OaiKsaaAZBZro5GFcl2vcTgN6b39mSBuDKY6eYbvO+02pc/YAOvzDDC
i86i1tCqs6UeGf6E4M6pOO6pmeZ6iw==
=jLt1
-----END PGP SIGNATURE-----

--2n7iKXJ9ohVtUySCfkJBndYpXQ9OpVFaR--
