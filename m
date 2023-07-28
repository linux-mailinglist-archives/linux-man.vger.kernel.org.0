Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D0BE76767A
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 21:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232405AbjG1TmM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 15:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbjG1TmL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 15:42:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC4CB30F9
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 12:42:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 514D7621E3
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 19:42:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03F6DC433C7;
        Fri, 28 Jul 2023 19:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690573329;
        bh=VUVDJfTZaTX35s/+0x90VOt8r3tk6Kz3Zw3u6XEMjgc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=sy95lUI9pkVY2brW0p4vpgoyy3gc+AXSykmj2E81ycu62KlGeCLSzOsU4q+EcZ3y7
         uWTV+Y+Ywb2A2EnLJLHN8P8InLqiACQNXcucOKP4tuBxvuKkqbmwu9rhx1vOrAY5Oc
         oUIe7ky9voCTreioAuq0fkjJX99SjfnQuNl+bQQEEaQKwalxSH1OVc+g4QMvaC9p9P
         p0paLphYWUpI6Ms9yOohIWuos8dxcXYdTIcspspFFKnOEtzY8ToPNzV7qJlRwFWloy
         MLboIv3r+4KsQOnrA7X60ZBAOXZx3LMggN35WuMZTpUkQmiN24P1jELjoSneOzIRTR
         ZgYgcSZzLM+TA==
Message-ID: <bcf7a83f-7d80-1a33-bcca-bed07b12f56e@kernel.org>
Date:   Fri, 28 Jul 2023 21:42:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] bpf.2: Added missing EAGAIN error case for BPF_PROG_LOAD
Content-Language: en-US
To:     =?UTF-8?Q?Michael_Wei=c3=9f?= <michael.weiss@aisec.fraunhofer.de>
Cc:     linux-man@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>
References: <20230721120636.100203-1-michael.weiss@aisec.fraunhofer.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230721120636.100203-1-michael.weiss@aisec.fraunhofer.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rqSawWUO8dk06CK0EoRbWW0Q"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------rqSawWUO8dk06CK0EoRbWW0Q
Content-Type: multipart/mixed; boundary="------------RYRt3IzKn5x7chDpebbT6vNL";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?Q?Michael_Wei=c3=9f?= <michael.weiss@aisec.fraunhofer.de>
Cc: linux-man@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>
Message-ID: <bcf7a83f-7d80-1a33-bcca-bed07b12f56e@kernel.org>
Subject: Re: [PATCH] bpf.2: Added missing EAGAIN error case for BPF_PROG_LOAD
References: <20230721120636.100203-1-michael.weiss@aisec.fraunhofer.de>
In-Reply-To: <20230721120636.100203-1-michael.weiss@aisec.fraunhofer.de>

--------------RYRt3IzKn5x7chDpebbT6vNL
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Michael, Alexei,

On 2023-07-21 14:06, Michael Wei=C3=9F wrote:
> Since commit c3494801cd1785e2 ("bpf: check pending signals while
> verifying programs", bpf() may also fail with EAGAIN if the verifier
> detects pending signals.
>=20
> This was triggered in the cmld of GyroidOS when loading a cgroups
> device program during container start. We had a look in the man page
> and where confused that EAGAIN was not listed as possible error.
> Digging in the kernel source revealed the EAGAIN in the verifier
> introduced by the commit above. Further investigation showed that
> libbpf already wraps that case, by a retry loop.
>=20
> Since GyroidOS uses the system call directly and not libbpf, we missed
> to handle this error correctly. Thus, this hint in the man page for
> the bpf() system call should be helpful for others who implement on
> the low-level interface, too.
>=20
> Signed-off-by: Michael Wei=C3=9F <michael.weiss@aisec.fraunhofer.de>

Thanks for the patch!  I find a few sentences have some minor wording
issues.  I'll propose a small change to your proposal.  Please check.
If you confirm it, I'll amend your commit, so you don't need to resend.
See below

Cheers,
Alex

> ---
>  man2/bpf.2 | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/man2/bpf.2 b/man2/bpf.2
> index d32435a1d..7cef7f24d 100644
> --- a/man2/bpf.2
> +++ b/man2/bpf.2
> @@ -991,6 +991,16 @@ and examine
>  .I log_buf
>  for the specific reason provided by the verifier.
>  .TP
> +.B EAGAIN
> +For
> +.BR BPF_PROG_LOAD ,
> +indicates that needed resources are blocked.
> +This is due to the verifier detects pending signals while it is checki=
ng
> +the bpf program about its validity.
> +In this case, just call
> +.BR bpf ()
> +again with the same parameters.
> +.TP

diff --git a/man2/bpf.2 b/man2/bpf.2
index 7cef7f24d..ea68e1293 100644
--- a/man2/bpf.2
+++ b/man2/bpf.2
@@ -995,8 +995,8 @@ .SH ERRORS
 For
 .BR BPF_PROG_LOAD ,
 indicates that needed resources are blocked.
-This is due to the verifier detects pending signals while it is checking=

-the bpf program about its validity.
+This happens when the verifier detects pending signals
+while it is checking the validity of the bpf program.
 In this case, just call
 .BR bpf ()
 again with the same parameters.


>  .B EBADF
>  .I fd
>  is not an open file descriptor.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------RYRt3IzKn5x7chDpebbT6vNL--

--------------rqSawWUO8dk06CK0EoRbWW0Q
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEGg4ACgkQnowa+77/
2zJBLRAAjp50HAKgGQ9+HnJMs28SXzQzGBJIx9EKcnPz/Qc6vLxRYossaTCHKQHZ
6LN17ZJTX052zPzDvff/g0RmbAKELkUvqqZxY0eP1EzS2h0dZe2FOp+xSTYrR9Dv
oO8di8yhmfBJkR15MOzjLtZWrblQmp+qk6U7fKpCDi+j8gecXTNIuWlPPLqWzAMC
OG6N3NQfJbd2NTPjtrlTmR1pOZohowv0BRejKUNx/dJTBj3XM2dBD37Cyl2VT6I0
DmALzPZJm0De2s4ImheBVP2M/Fk+100h6/EOdawGyz4lv5CyQnHjrkCdSYpM8lTj
KO+lE/sKPrJpvzgj0E6TeVoytZ+qksRJvDg+9Q/8ZoFGCwVKbDG2rdobdZdrb5b6
W+pkUM6P+a8bo9RUoEleg8TDTwDaBVcmRfY+HK+2O5Drm5qts5E0KNDzsK7TtZfI
7rqzmemAkhp39wC8uly0XD+wCVbl9vp5LwTq9UGuRcV/mIXn87uFlhbK+iMEduqr
NEMjbDuNSJDEdXm9Zvxe9YvbV3f1NT2rtr46eZdc7UD/KQcAr561bHDERNdC7dN8
zTrpj02aTkijT2WAOhpNjC+6egagA3OBr9gsPgpUyLnq0zJvgEkAOPu+EJYhSAWv
2EaHHJ7gE9JLBqXrw5UaIK+S9E3XJSbczqd8iSynDJdJaN6KYos=
=sAvi
-----END PGP SIGNATURE-----

--------------rqSawWUO8dk06CK0EoRbWW0Q--
