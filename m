Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BC607E7103
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 19:00:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344901AbjKISAT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 13:00:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344900AbjKISAS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 13:00:18 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09B893AAD
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 10:00:16 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B599C433C8;
        Thu,  9 Nov 2023 18:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699552815;
        bh=m6RlY9grY6+BoUG+6s7ZJ2tDORaG0Hvt0asEUxNshLk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SzPWUt2D6Xu8XK1y0K9c57cv8HkFU07atZxXlLkggQymF9gfs2Gg0FcBQAsgnTKMO
         O/q6S+P+ymKqcPxvdk7HOkID68NtECqwnHqYSwjY8UFx+VUWVFW6xTDWVefLvAQK8W
         VaKJ4evSJfJEqzSsQSncsUkswGdzRTF/CvIQWDPp+lAh0FQExkTnScBXeF4jyMXFLg
         5xV1ShG42tYA1UcpJZEPfJwK0dCDU4fWeUXbyddxXGGfXzZ+5sMx8ItDpLiLmUrifv
         k6AA4iJbpCYafexfoJKOEimDSFexxRJFdvHvyYvkh1sq4rdAlz6b31T7pGSDF6JzGT
         E8oYZGQfmj+rQ==
Date:   Thu, 9 Nov 2023 19:00:04 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     DJ Delorie <dj@redhat.com>
Cc:     jg@jguk.org, eggert@cs.ucla.edu, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, mattlloydhouse@gmail.com,
        xxc3ncoredxx@gmail.com, kukuk@suse.com,
        adhemerval.zanella@linaro.org, zack@owlfolio.org,
        g.branden.robinson@gmail.com, carlos@redhat.com
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy()
 do NOT produce a string
Message-ID: <ZU0eKrZprM5HSGt0@debian>
References: <ZUz0igot_qFs3BJX@debian>
 <xncywirg0m.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="/ULeqnNouJuss9vu"
Content-Disposition: inline
In-Reply-To: <xncywirg0m.fsf@greed.delorie.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--/ULeqnNouJuss9vu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 19:00:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: jg@jguk.org, eggert@cs.ucla.edu, linux-man@vger.kernel.org,
	libc-alpha@sourceware.org, mattlloydhouse@gmail.com,
	xxc3ncoredxx@gmail.com, kukuk@suse.com,
	adhemerval.zanella@linaro.org, zack@owlfolio.org,
	g.branden.robinson@gmail.com, carlos@redhat.com
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy()
 do NOT produce a string

Hi DJ,

On Thu, Nov 09, 2023 at 12:30:17PM -0500, DJ Delorie wrote:
> Alejandro Colomar <alx@kernel.org> writes:
> > "Fill a fixed-width buffer with characters from a string and pad with
> > null bytes."
>=20
> The pedant in me says it should be NUL bytes (or NUL's), not null bytes.
> nul/NUL is a character, null/NULL is a pointer.

Here's what man-pages(7) (written by Michael Kerrisk) says:

   NULL, NUL, null pointer, and null byte
     A null pointer is a pointer that points to nothing, and  is  nor=E2=80=
=90
     mally  indicated by the constant NULL.  On the other hand, NUL is
     the null byte, a byte with the value 0, represented in C via  the
     character constant '\0'.

     The  preferred  term  for the pointer is "null pointer" or simply
     "NULL"; avoid writing "NULL pointer".

     The preferred term for the byte is "null  byte".   Avoid  writing
     "NUL",  since  it is too easily confused with "NULL".  Avoid also
     the terms "zero byte" and "null character".  The byte that termi=E2=80=
=90
     nates a C string should be described  as  "the  terminating  null
     byte";  strings  may be described as "null=E2=80=90terminated", but av=
oid
     the use of "NUL=E2=80=90terminated".


I don't necessarily agree with all of that, but mostly.  I don't agree
with not saying null character, because as well as we have the null wide
character (L'\0'), using null character for '\0' makes it symmetric.

Other than that, I mostly agree with Michael.  Here's what I think of
these terms:

-  NULL is a null pointer constant (as well as 0 is another null pointer
   constant).

-  A null pointer is a more generic term that includes a run-time null
   pointer as well.=20

-  The null byte is 0.

-  The null character, '\0', is composed of a null byte.

-  The null wide character, L'\0' is composed of several null bytes.

-  NUL is the ASCII name of the null byte, or maybe is it null character
   here?  It's a bit muddy.

I use null byte for padding, and null character for the string
terminator, to make a stronger difference between strings and
null-padded fixed-width arrays.  I need to review string_copying(7) to
make sure I was consistent in this regard.

Colloquially, I find it fine to write NULL instead of null pointer (even
for non-constant cases), and NUL instead of any of "null character",
"null byte", or "null wide character", but for being precise, I prefer
"null something".

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--/ULeqnNouJuss9vu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVNHiQACgkQnowa+77/
2zLZmg/+LdzzHtOOvN4cj/t7J1/hrVr6heUQ3kJW8oZ0Nf3NAt7Np8Ur5fcP3Onn
RIdm8g2bzM85EMa6k65CSN7XfOQSwwTLsWu/ffXVT66cBMDW3pRZURkXDwycPRss
1i4FVGwBsosTgMskoSY0oSihr7OZ1fZNuLKhCK7MTOvlBJLu/kZpwLdUfgLyuKch
aMtuNgvQKiSJauqj2ya4x8AuXyeE8vqUjjZGutk1EWjFpzauFRLzmiackP44Apei
vVr3biiTT4XNkXhL8foE7Lw/A+8U27yaHu27A/5Ada16X4eERr3Qp4ONdPAsVoTk
EWFFpkhUfn/YS40n9VmN33P1etjFcJsScaDK3GeZgXMzVfqnSF1nXfye+ULRotpr
NraOugW3JBOZAul7OREbnK4s+TbkXj4GgpHCimLkXGtVeyU9xtQWRA5TKlLjzj+9
2FFpLwS5s/5HxkPzQZL/i3k9JShrHmGISJqjPTcN7XNo2RH8tkmA4XyCcZ4t7EXb
jIbCApnuo9dOTelqF51CPPjtXnKQxynTinyDoFTuU6aF/qCCrrNN84Qrg05GPc6c
9ZbMcrPPfyQEwPaj2KeTUQvADHbgqyR6PZz0htx5NFBIaCIvudqAga+6P5K/k6My
4QFQQMqUsPrgAPD93qHPoHVksYlsnxAygzFFst5w+8DCKau+JkA=
=dYxa
-----END PGP SIGNATURE-----

--/ULeqnNouJuss9vu--
