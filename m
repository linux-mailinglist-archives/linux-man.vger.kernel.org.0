Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C8DA77A6AF
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 16:03:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbjHMODy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 10:03:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbjHMODy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 10:03:54 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B14BFEA
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 07:03:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4FB94623DA
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 14:03:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC525C433C7;
        Sun, 13 Aug 2023 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691935434;
        bh=wzxdUs/dmcdO0iOgzDAoHOJBAeOhlwhnjStcRvF9AiE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=IUsN2LweJsQewYLxukBVQEIoitHJvb5xkk9E/jXUxHiPFT7Kcg/Vd1h9xazy8sX53
         9iajHoEq4hBEzdQgNY1F3RSsZaHuiJ+XsIdwWennsrT7INRpsCRRE5M5ECDevHEHN7
         YTgR42w+P5eaxWJxzqdkZeQxY0TO8hrJ+Ru3l2R73MGk5L2dJCtwRj129Y8+SnfUQA
         g2rLOeSn0oRR2TKpvkRETRqtt8lgd4SanYaveTDwCv0968/WQBScmYmDjbJntp3sBP
         oZVbR5NzLQy5VoJKiqnpChfXfzRjL53uH849xD2hoCYNFsp7GbplLimPMkx4bYTULM
         1sx/+8oMSRqvg==
Message-ID: <bd7c528b-82c8-4890-8761-4b10a1c77548@kernel.org>
Date:   Sun, 13 Aug 2023 16:03:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3] clone.2: Fix erroneous statement about
 CLONE_NEWPID|CLONE_PARENT
Content-Language: en-US
To:     linux-man@vger.kernel.org
Cc:     Sargun Dhillon <sargun@sargun.me>, Serge Hallyn <serge@hallyn.com>,
        John Watts <contact@jookia.org>
References: <20230810022603.947583-1-sargun@sargun.me>
 <20230813135525.37196-1-alx@kernel.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230813135525.37196-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jd2m4WGz3AdOp0f72BlFu81C"
X-Spam-Status: No, score=-11.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jd2m4WGz3AdOp0f72BlFu81C
Content-Type: multipart/mixed; boundary="------------FkUWuEh6QV4xZyP1a0A0lNK0";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Sargun Dhillon <sargun@sargun.me>, Serge Hallyn <serge@hallyn.com>,
 John Watts <contact@jookia.org>
Message-ID: <bd7c528b-82c8-4890-8761-4b10a1c77548@kernel.org>
Subject: Re: [PATCH v3] clone.2: Fix erroneous statement about
 CLONE_NEWPID|CLONE_PARENT
References: <20230810022603.947583-1-sargun@sargun.me>
 <20230813135525.37196-1-alx@kernel.org>
In-Reply-To: <20230813135525.37196-1-alx@kernel.org>

--------------FkUWuEh6QV4xZyP1a0A0lNK0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-13 15:55, Alejandro Colomar wrote:
[...]

> ---
>  man2/clone.2 | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/man2/clone.2 b/man2/clone.2
> index b91b71831..7d2dc2339 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -736,9 +736,7 @@ .SS The flags mask
>  can employ
>  .BR CLONE_NEWPID .
>  This flag can't be specified in conjunction with
> -.B CLONE_THREAD
> -or
> -.BR CLONE_PARENT .
> +.BR CLONE_THREAD .
>  .TP
>  .B CLONE_NEWUSER
>  (This flag first became meaningful for

Hmm, it seems this patch was incomplete.  This is a reminder that we
should specify 'Fixes: ...commit...' for these fixes as much as
possible.  Doing that, I found that the commit that it fixes did more
than that, and we need to fix those places too.  :)

I'll prepare a v4 reverting that patch entirely.

Cheers,
Alex


$ git show f00071920e
commit f00071920ec3ff5ed3ae2a8933259c535aae15a6
Author: Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Tue Mar 5 09:55:39 2013 +0100

    clone.2: EINVAL if (CLONE_NEWUSER|CLONE_NEWPID) && (CLONE_THREAD|CLON=
E_PARENT)
   =20
    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

diff --git a/man2/clone.2 b/man2/clone.2
index 5193e43af..e99b69b1e 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -407,7 +407,9 @@ .SH DESCRIPTION
 can employ
 .BR CLONE_NEWPID .
 This flag can't be specified in conjunction with
-.BR CLONE_THREAD .
+.BR CLONE_THREAD
+or
+.BR CLONE_PARENT .
 .TP
 .BR CLONE_NEWUSER
 (This flag first became meaningful for
@@ -441,6 +443,12 @@ .SH DESCRIPTION
 .\" Before Linux 2.6.29, it appears that only CAP_SYS_ADMIN was needed
 Starting with Linux 3.8,
 no privileges are needed to create a user namespace.
+
+.BR CLONE_NEWUSER
+cannot be specified in conjunction with
+.BR CLONE_NEWPID
+or
+.BR CLONE_PARENT .
 .TP
 .BR CLONE_NEWUTS " (since Linux 2.6.19)"
 If
@@ -895,10 +903,14 @@ .SH ERRORS
 .IR flags .
 .TP
 .B EINVAL
-Both
+One (or both) of
 .BR CLONE_NEWPID
-and
+or
+.BR CLONE_NEWUSER
+and one (or both) of
 .BR CLONE_THREAD
+or
+.BR CLONE_PARENT
 were specified in
 .IR flags .
 .TP


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------FkUWuEh6QV4xZyP1a0A0lNK0--

--------------jd2m4WGz3AdOp0f72BlFu81C
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTY4sgACgkQnowa+77/
2zLdBg//XEkbb/ZULPJbTrzia168LyZxpIz54LqQcCNFbbsLVfHp9cCFYQ5gcWLK
MCrN20oSLmg7S8ZoLaYnU14gowpzxf3zmNIWmPeRyfdtGJK+Azp1PFv07nWe4Z0o
vuEToqt++uCPY7W0SjvGSfvSssdvUC/eTXN14N7X+FSj0NHDRAvagJePbxhz6yww
SXek4M+jfWYgSJUP7OrIMXGf+FQQfv4fwHSUPej6G2Ltiih6iUnMqvzsYdRubUWB
fLtUxLhsH6d2kIZ9K3XLIzVHqMNhb23Wyc2PH+5cKN/Upvql7x8knLWBRanBTxXR
2a9SNg+4mlrjYxrh4mLlQNoSGDsayjgF7HlNJNN2wzn4B6opnJxsagnKY8cfWCBJ
6dw6uKDWWk92/SsUfFFOVsBG7xaHvKAOC780JR+pP3hkzXiVByYAo1XipCJ4EdpB
6ubmdEtsxZjzW40QxIAkthhbXJr6thK2Y+CeoKPVq/Cvx7Fykik8J4QWq3hsZ2Om
D8xSMwo6EWIdQ6I62o18cTlSFIb88e8RRy8yUd6Hfnoq16yUH514VJaN7mtl8Nls
HzmY3iLY1c86N6SjCIeq15Lr6J1v12/FUaOdD0rD7MGEa/T7ORI/0pH4FzG6gPrQ
X6Jv3TBI3Sto30MxsBLUwaXYGRcNmqBqOyQlXkBg3v2n3fqIlTI=
=33Wb
-----END PGP SIGNATURE-----

--------------jd2m4WGz3AdOp0f72BlFu81C--
