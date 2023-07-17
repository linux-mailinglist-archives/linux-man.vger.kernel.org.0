Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BC8A756E61
	for <lists+linux-man@lfdr.de>; Mon, 17 Jul 2023 22:36:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbjGQUgm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Jul 2023 16:36:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbjGQUgl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Jul 2023 16:36:41 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6179C1AC
        for <linux-man@vger.kernel.org>; Mon, 17 Jul 2023 13:36:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E0DDD6123B
        for <linux-man@vger.kernel.org>; Mon, 17 Jul 2023 20:36:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCDBBC433C7;
        Mon, 17 Jul 2023 20:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689626198;
        bh=tl1igBkSEOY5pYu7xOvIz0zZTm7SEtImfmbNeBkSCok=;
        h=Date:To:From:Subject:From;
        b=kgVKd6cTxNS8ulXvSxwdIDGAfO9k/yy6buo+0VcgAhX8KW33R5xVbWw2mLU4Fo481
         PZMMb6hUrjgX/FqbzGCVn9ndX7V9RDlvx6gwX9rnDxmLvq/L6Lzrf6iT5x/gMzoFau
         W5WLGngdpylJ/mqSpUbji/gFTtc1mMrhOPalF9OBZn34PZV6ELu+yWgXuTCrTu73Yr
         X7LsEjr0iUsuGCvxdUXKidnKzAEI1PIMpMTw86dmILHHN7QfWftlQGSrgptlmqf95a
         tOAQ5auZ/eUWUBmVsyqEZtSP1pOpHt7TtamK/LkBPliQpfd3yTpi6I/LeBsUFF09ke
         JRRLkOVAH5adQ==
Message-ID: <53f8b39e-aec2-3abc-d2fe-5b437068cd7d@kernel.org>
Date:   Mon, 17 Jul 2023 22:36:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx@kernel.org>
Subject: ffix proposal
Organization: Linux
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SCFreDvDM7JOeLZOnJwY4TVd"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------SCFreDvDM7JOeLZOnJwY4TVd
Content-Type: multipart/mixed; boundary="------------qXJowpTSuqKEzGqu9rZUbhk9";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <53f8b39e-aec2-3abc-d2fe-5b437068cd7d@kernel.org>
Subject: ffix proposal

--------------qXJowpTSuqKEzGqu9rZUbhk9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden!

Please check if you like this ffix patch.  Things I'm changing:

-  Use .RI instead of \f

	Uncontroversial.

-  \%

	I guess this one is uncontroversial to you.  ;)

-  \:

	To make the previous one not so horrible.

-  Reverse what is in italics and what is in roman.

	Path names should go in italics.  This wasn't being done,
	which was a bug.  Now, the variable part is in roman, to
	differentiate from the literal path name.

-  \[dq]

	We need it 'cause of .RI.


Cheers,
Alex


diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 351913bd8..d9001634d 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -659,7 +662,7 @@ .SS Environment variables
 The name of a (single) shared object to be profiled,
 specified either as a pathname or a soname.
 Profiling output is appended to the file whose name is:
-"\fI$LD_PROFILE_OUTPUT\fP/\fI$LD_PROFILE\fP.profile".
+.RI \%\[dq]$LD_PROFILE_OUTPUT /\: $LD_PROFILE .profile \[dq].
 .IP
 Since glibc 2.2.5,
 .B LD_PROFILE


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------qXJowpTSuqKEzGqu9rZUbhk9--

--------------SCFreDvDM7JOeLZOnJwY4TVd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS1pk0ACgkQnowa+77/
2zLwdg//Vyx9MvMU+i/NoZVix007D477ybIl7Ef6+mUWA239X7xBb954uOe8U53O
q25QKXEAYo17VLE3S+iJopbii4SynS3p4kXNA7peereiHeGrq/gbOqKoZO/HIUwv
bJNSfBNQPV9C8jt/PbN2wY4l5Wm7XBEIOb+n7ItV8fX1Qabhg36GCbZEnl+2/d/3
V/g0v312JHfMVTzNjwHVCGPN4MfigyhEHOyI3UJ2jKKUAX1RGMRlitUxneGHYs7s
RwhEXemQ5rSiHrRrY2STXlpRpnG+8a319QdztZIxMnu/K7i6LC3RBuFc9RCkSrjf
i4CI7ZlV1W/oh44JHtVQj/KwmVnHGtJzLb88RlgG2g7Q+G7yqwIG3/EuBzq55Ibs
HrrPTg2zd9VgLLwaSC6CmPPxcmLgF5NfcOf3wAGKSPZ2PkFwM7LGiVNM3k6czjv6
v039bziE1512si9Mm7DDn2gT4EikZh3VYvbgQLBx8aFXvmXDwPn3fs5sdfXCu0hc
fPEXSQFyhbeGQzBW/TGIR1AbvPGSrDJE5NZNknishl50St3emAN8PjZMa5E4oHHi
mah7L+mvQL59cmc6cvBUvlNR4wt73GBptsHZ3xpnihg9Jjl30nY9KjgMpc1xNvrY
HNmrwI7eKC0UydDgCjJMTVPIjncoZ7+syzTxc3Zibs2GOX1CLig=
=v7kQ
-----END PGP SIGNATURE-----

--------------SCFreDvDM7JOeLZOnJwY4TVd--
