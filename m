Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDE237E5F06
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 21:13:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjKHUN4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 15:13:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230204AbjKHUNy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 15:13:54 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E185211F
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 12:13:52 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A6FEC433C7;
        Wed,  8 Nov 2023 20:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699474432;
        bh=AMytr/oYqm761DkJIoP0Z/kFcMQrlDL74qevnnLhldE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=N52vMbpTAMCCKssnoSwjS7t9Ul/bRW8aB/3LK3u4guxv+NZRHO0wGH9FQAhgFVSxG
         8wfoS4Z6lfGAjpcVUcffAAAfCO/b/fXuN1GS6y3LDOaS+Kc1q6vsBOk5UHEBTt/10g
         QPVmcX7W1RG4e1xERdmrDeuvSzEogGynAUCfhAZqHq6+pOdiNIFW98i97HW+hF1m3O
         E3A1zLR/4aje6eJf9yewRATPAhOZd/MZY7Uh8ToukD/EOuEswPQMHguFQzClj+dtlj
         c36/1wto68UnlRsNwJpBMF96l2U6eZkSNfyHXO7gEBfmYFMh7qiszKJXFZkAD4ij82
         1daOBP+TqkXjg==
Date:   Wed, 8 Nov 2023 21:13:42 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     DJ Delorie <dj@redhat.com>
Cc:     libc-alpha@sourceware.org, jg@jguk.org, linux-man@vger.kernel.org
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUvr_FPICn5VkP4q@debian>
References: <ZUvkIZpGduZ0FMVK@debian>
 <xnleb8qaov.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="7O+3LQbzjFCS3Siv"
Content-Disposition: inline
In-Reply-To: <xnleb8qaov.fsf@greed.delorie.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--7O+3LQbzjFCS3Siv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Nov 2023 21:13:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: libc-alpha@sourceware.org, jg@jguk.org, linux-man@vger.kernel.org
Subject: Re: strncpy clarify result may not be null terminated

Hi DJ,

On Wed, Nov 08, 2023 at 02:58:24PM -0500, DJ Delorie wrote:
>=20
> Perhaps an example that shows the problem?

Maybe.

>=20
> EXAMPLES
>=20
>     strncpy (buf, "1", 5);
>     { '1', 0, 0, 0, 0 }
>=20
>     strncpy (buf, "1234", 5);
>     { '1', '2', '3', '4', 0 }
>=20
>     strncpy (buf, "12345", 5);
>     { '1', '2', '3', '4', '5' }
>=20
>     strncpy (buf, "123456", 5);
>     { '1', '2', '3', '4', '5' }

Would you mind reading the latest versions of strcpy(3), strncpy(3), and
string_copying(7), as in the git repository, and comment your thoughts?

You don't even need to install the pages from git.  You can read them
with this:

$ git clone https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/
$ cd man-pages/
$ man ./man3/strcpy.3
$ man ./man3/strncpy.3
$ man ./man7/string_copying.7

Also check the examples and suggest if anything could be clearer.

Thanks!

>=20
> Maybe strcpy and strncpy shouldn't even share man pages, since they're
> not as related as we once thought?

They don't (anymore):

	$ pwd
	/home/alx/src/linux/man-pages/man-pages/master
	$ git log --oneline -1
	b8584be14 (HEAD -> master, korg/master, alx/main, main) bcmp.3: wfix

	$ grep -e '\.TH ' -e '\.so ' man3/strcpy.3=20
	.TH strcpy 3 (date) "Linux man-pages (unreleased)"
	$ grep -e '\.TH ' -e '\.so ' man3/stpcpy.3=20
	.so man3/strcpy.3

	$ grep -e '\.TH ' -e '\.so ' man3/strncpy.3=20
	.so man3/stpncpy.3
	$ grep -e '\.TH ' -e '\.so ' man3/stpncpy.3=20
	.TH stpncpy 3 (date) "Linux man-pages (unreleased)"

The only shared page is string_copying(7), which attempts to clarify all
of this.  It was only in old versions of the Linux man-pages where they
shared page.

	$ pwd
	/home/alx/src/linux/man-pages/man-pages/5/5.13
	$ git log --oneline -1
	091fbf1fe (HEAD, tag: man-pages-5.13) Ready for 5.13

	$ grep -e '\.TH ' -e '\.so ' man3/strcpy.3=20
	.TH STRCPY 3  2021-03-22 "GNU" "Linux Programmer's Manual"
	$ grep -e '\.TH ' -e '\.so ' man3/stpcpy.3=20
	.TH STPCPY 3  2021-03-22 "GNU" "Linux Programmer's Manual"

	$ grep -e '\.TH ' -e '\.so ' man3/strncpy.3=20
	.so man3/strcpy.3
	$ grep -e '\.TH ' -e '\.so ' man3/stpncpy.3=20
	.TH STPNCPY 3  2021-03-22 "GNU" "Linux Programmer's Manual"

I've spent the last year working on shadow-utils' string handling code,
while at the same time wrote string_copying(7) as a complete guide to
*cpy() functions, detailing what they do and what they don't, and also
rewrote all the pages for these functions with shorter reference guides
that refer to string_copying(7) for more details.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--7O+3LQbzjFCS3Siv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVL6/YACgkQnowa+77/
2zIVYQ/+LUcZV558qj5vEz6yG4X7ihlYeZqo1XzQoGoIl3Xp5xDaTVZHnbvKJAul
5qVlU2XF2ISQIqWK3vtzi98YQ8I5ljVj45x8/HbaFKi+HyGyzmytOFeKdT11d/H2
TQ42xFTi+xqGYTl33+h9/A16hHZvVayAN1aChGvfNKTRQyTHRXv+a1S9xT/vUaVA
QK8zfh1BnxaBC0ovr7EMqfJiXohWhiInTkkwB6VqjxE1e2yMum5kMEyUDNDb0BfS
JbYiTzBYEwZCnL0Y14p4GDKti9k2lVdbeJ5KYICQYoOFzg5T6jRhHoDCt41jb1/O
A4PEaSPlux+FObthe1eufD1DdXXiReGN4sxzIaSyMiIbbO5gCPZkxguyWNgYn42F
I/RihqUaKon0P1ylkm9QE2N9sC5doyErt0bY///bXBri/2Shr9lCpHauaz/+eLXU
2gf1q7BY6mvFaMpz9qemRFAgFqwlZ3AII9SNI0GQTdC4tyMXfSZL0tGTiVVsNW3Z
ICGirYswc8CJQ3e9+sg4qmZuT6q9HGAbwzJS3eZpqbsQA0dnye6BOjKgdGjX+iIX
OA433Jq+f27151wXNHGbzlq6WdhsaiAtAFgzIVGLpC7lb11DF6/ltFDkDPAASYWP
Q7aUyjLrT1/J/oLZUK0FukXKYLsDRu3ZiZsEhKU2Cul7/qhqvDk=
=+p/t
-----END PGP SIGNATURE-----

--7O+3LQbzjFCS3Siv--
