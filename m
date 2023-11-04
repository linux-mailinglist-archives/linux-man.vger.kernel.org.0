Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFE267E10BB
	for <lists+linux-man@lfdr.de>; Sat,  4 Nov 2023 20:34:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbjKDTeB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Nov 2023 15:34:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbjKDTeB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Nov 2023 15:34:01 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 472EB194
        for <linux-man@vger.kernel.org>; Sat,  4 Nov 2023 12:33:57 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34AFCC433C8;
        Sat,  4 Nov 2023 19:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699126436;
        bh=LiP+PPyk+B+DZvEHXUMO9qIQOu1ptlfeAIHXZem0Q7k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=aoHaMHY6ht49QIj0n40RqgB7cpPS+9PN4I0Zzv64dHmygJw3l8T/pij0Q+Qni4MMJ
         DFaR5uytBKuHCFmrC3E0+GHxNyYpByfhhAnwgPVMJ54RnfXas23eEDirNPthqx7Co9
         7vU9BMYjMdhejMk7u3GG9b4Ow+JOoxMDs+VmZqc+i/KcZXScx+btQTy7REqN6V4VlF
         OFNP81UM3XV/X33jViFa3RVbibB4gFudoG5sDP3u27jo6CFWrseueSWlscStHUCf5q
         wvcvGaej+KUwsfpHMXPIX7FzNxmMqAlABvFDZgsMyY+ww58s47bzZhxNBvb5JrqBKs
         kYT8LW5ECaPlg==
Date:   Sat, 4 Nov 2023 20:33:48 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUacobMq0l_O8gjg@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dj2Ahw4TDfFyOMsC"
Content-Disposition: inline
In-Reply-To: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dj2Ahw4TDfFyOMsC
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 4 Nov 2023 20:33:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Sat, Nov 04, 2023 at 11:27:44AM +0000, Jonny Grant wrote:
> Hello
> I have a suggestion for strncpy.
>=20
> C23 draft states this caveat for strncpy.=20
>=20
> "373) Thus, if there is no null character in the first n characters of th=
e array pointed to by s2, the result will not be null-
> terminated."
>=20
>=20
> https://man7.org/linux/man-pages/man3/strncpy.3.html
>=20
> "If the destination buffer, limited by its size, isn't large
> enough to hold the copy, the resulting character sequence is
> truncated. "

The use of the term "character sequence" instead of "string" isn't
casual.  A "string" is a sequence of zero or more non-zero characters,
followed by exactly one NUL.  A "character sequence" is a sequence of
zero or more non-zero characters, period.

To be clearer in that regard, the CAVEATS section of the same page says
this:

CAVEATS
     The name of these functions is confusing.  These  functions  pro=E2=80=
=90
     duce   a  null=E2=80=90padded  character  sequence,  not  a  string  (=
see
     string_copying(7)).

Saying that these functions don't produce a string should warn anyone
thinking it would.  The page string_copying(7) goes into more detail.

>=20
> How about clarifying this as:
>=20
>=20
> "If the destination buffer, limited by its size, isn't large
> enough to hold the copy, the resulting character sequence is
> truncated; where there is no null terminating byte in the first n
> characters the result will not be null terminated. "

strncpy(3) should !*NEVER*! be used to produce a string.
I don't think that should be conditional.  Your suggested change could
induce to the mistake of thinking that strncpy(3) is useful if the size
of the buffer is enough.  Do not ever use that function for producing
strings.  Use something else, like strlcpy(3), strcpy(3), or stpecpy(3).

Cheers,
Alex

>=20
> Kind regards, Jonny

--=20
<https://www.alejandro-colomar.es/>

--dj2Ahw4TDfFyOMsC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVGnJwACgkQnowa+77/
2zJesRAAjJGJeRAKnKdDhHZH626f8gKHFHiACec4Pe89WQ+yjud69Kg/8J9mltj3
PBE0nxODIxIEIVtq5vilUu9pX4GENKVe8cJweYg94WuhBj1V535dhsjMGwFKKNSn
oRkROAPD5M73tXyD4jcYrp9wqz8NNYE1kh8Nd1Sz71O/gK960IB7BRj/vHCEigqk
Rty6+pzsFP7S6QJ+xGUVKOxN9BGEF/WFsHDTuzC8ADHEE57EXHixyFiJfvPaDIcq
eSmbSQ+AtPXeWQQk0WVg+ZsZIQv8vtHsWxJCXpuyJBypje+opKbxC9P52ALH4Hxm
DbRp43CGVHyzxLqYIy3VpHPXjsYgGdd1+XTG2jAmkn1pr/cxwZIYZ6rqXShj38wc
UlD+ymK1p1u3CW3RidxssUxDZ3Eb/oDPOvh3yZBnvktb7TYYrx54dP/QacJynwz+
pWf/ZPfMiaoK8QA5olTOWXf3xPxrwKtC+M0r3qwj0fNehxlN3sN0ZhJ2f6q4XtgV
EouIDm5nHL3GYeT/MvSYtbc3+fCkCNgy0i013OXRxXLzMbLlGzOOl3oWind2C77g
9Mt/Ikk0SRxW4P9TppcjQMBdax2XxQLWe3Dr6SfgPG8KbUltied7ubwGxXkT5Th+
dzcKYw7HN/LEMxjFOC7Oj99IFFnwGPBdtfv1E/6vus6oRRLKSEo=
=xGMi
-----END PGP SIGNATURE-----

--dj2Ahw4TDfFyOMsC--
