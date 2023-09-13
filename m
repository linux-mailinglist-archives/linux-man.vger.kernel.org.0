Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03ACD79F408
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 23:50:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232806AbjIMVuX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 17:50:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbjIMVuW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 17:50:22 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E4901981
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 14:50:19 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CDA4C433C8;
        Wed, 13 Sep 2023 21:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694641818;
        bh=wKBrdRU5uUWJ7A35s46AKtClmE9OekjpLqsXfQs7Vpg=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=rS/KUyKMH5wa+Oe6gshy6aKY1sYChHsS4JrrLGUBsOSy+zsG6xO2HgQaG+W1alDsJ
         NhVJ3H9ppSMsXPsdTI+/kIk4QlQmDNDiDL9m/51IpP8JdyEtb3hP9+sFXbHiCmgg7+
         Z38xayvD0mQ91hPHGa1p7QzrhMA8BlxONzs7UG0NJ6YrShwiWQNZw5WyOGT0yXfJeO
         3DpdhbH+EkMJ4AZAybhUNPxp6fb7nbi/MViOzMuweX6t54DXi5nAnRm2nlSBUFqRaP
         MF6XGBYe1mKUiaX3B3lKkhp6AzF2wCluB/n9FkXPKDixCBd16VpiIqtHJKcxCmJM0N
         AxbUZ1VGyjN5w==
Message-ID: <f0fb0139-1544-415b-a4e1-af4ae92b933d@kernel.org>
Date:   Wed, 13 Sep 2023 23:50:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: 3p page wording
Content-Language: en-US
To:     enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
References: <CAJgzZorvpAWUBMSWODo-AUBWD7ZwRtPVZ2V_DuzWbYWeBvvZsg@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CAJgzZorvpAWUBMSWODo-AUBWD7ZwRtPVZ2V_DuzWbYWeBvvZsg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8wIE2NVV10NGm4XYU209bXgP"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8wIE2NVV10NGm4XYU209bXgP
Content-Type: multipart/mixed; boundary="------------7qCCzsbgKvf3Ei1zG0zNjSVg";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Message-ID: <f0fb0139-1544-415b-a4e1-af4ae92b933d@kernel.org>
Subject: Re: 3p page wording
References: <CAJgzZorvpAWUBMSWODo-AUBWD7ZwRtPVZ2V_DuzWbYWeBvvZsg@mail.gmail.com>
In-Reply-To: <CAJgzZorvpAWUBMSWODo-AUBWD7ZwRtPVZ2V_DuzWbYWeBvvZsg@mail.gmail.com>

--------------7qCCzsbgKvf3Ei1zG0zNjSVg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi enh,

On 2023-09-13 21:58, enh wrote:
> is it a requirement that the 3p pages only contain text that's
> explicitly in POSIX?

Yes, I guess.

> the siginfo_t::si_addr description on
> system_data_types.7 (which is what people see if they `man siginfo_t`)
> says "Address of faulting instruction", which isn't true for all
> signals, and caused enough confusion for the ART maintainers that they
> came to me as Android's libc maintainer for an adjudication. meanwhile
> the sigaction.2 page says "Memory location which caused fault" which
> seems much more helpful.

siginfo_t(3type), aka system_data_types(7), isn't a POSIX page, so
we can patch it if you want.

I'd also move the types to their own pages and have system_data_types(7)
be a link to intro(3) (until we have an intro(3type)).

>=20
> i _was_ going to send you a patch, but then i checked
> https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/signal.h.html=

> which has the same unfortunate "Address of faulting instruction"
> wording. at which point i assume you want me to file an Austin Group
> bug (which i'll do anyway:
> https://www.austingroupbugs.net/view.php?id=3D1775),

Thanks.

> and presumably wait
> for POSIX's wording to improve before changing system_data_types.7?

Nah, we can improve siginfo_t(3type) already.  Feel free to send a patch.=


Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------7qCCzsbgKvf3Ei1zG0zNjSVg--

--------------8wIE2NVV10NGm4XYU209bXgP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUCLpgACgkQnowa+77/
2zLgIxAAlxQXyiWvNVv36GmLpzjsqZAfkWEqZ3QtJQMILMPl8K3p13n5ygDhqDXq
VazWMPAfbxIr1z29PGJ/ALrA3E7IFdaJfr+y+Hc38tMzI7NvgYP0eKy4qJMInYhs
njrAA8G48Sb42R8qXTSLsQxZ1NVlsfJDEpnzhAZ88slUlt2DSASzCd/RHCDepIzw
kgoKFm43S0KoBkrM4xLqJvWae6aPFGoirEk9wBEJ8FrQ/6GtI4gzuPHkh4wTEjWZ
coGi5pYPI6pVbvbcJmT+Mee82ULA5QQjjQm363ApmwzSKFHF9wFhZG6caYSwoUBt
e+dhyqXfrQMRY5pfwQU3AE3PLyJQ+isbf9EpV5ITYV93+Xb/cw+3I4/N4DHog2Ox
WjsanRQhVSb92agJT7avvRG6C1IylFEwy7LFhx/O1jZBqG4NnHHcj9NhC9y6Wdr0
jAfsVeYMlntZaWL8gsDXKBRosiJ79DpyIl992ODLGNiij/lN/R256vWhsV3kcc3d
frixPNQWMMrKSe73GYdcYfUyaly90xgWeby3zMAojmXPR2fk9z/88o3kWkDREiso
ofhdIMGMg3udUwoG3qNjFadfz7kPUb0bznK3iSSp8BiQCbfKP3B9JDBf+9oH7oqS
zTB6nZXmi35bqn8HP+lEo918XZqg12UzGtXfzdm9BCepm7GHO/c=
=rlIR
-----END PGP SIGNATURE-----

--------------8wIE2NVV10NGm4XYU209bXgP--
